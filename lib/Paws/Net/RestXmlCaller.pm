package Paws::Net::RestXmlCaller;
  use Paws;
  use Moo::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime);
  use URI::Template;
  use URI::Escape;

  use Paws::Net::RestXMLResponse;

  has response_to_object => (
    is => 'ro',
    default => sub {
      Paws::Net::RestXMLResponse->new;
    }
  );


  sub array_flatten_string {
    my $self = shift;
    return ($self->flattened_arrays)?'%s.%d':'%s.member.%d';
  }

  # converts the objects that represent the call into parameters that the API can understand
  sub _to_querycaller_params {
    my ($self, $params) = @_;

    my $params_hash = $params->params_map;
    my %p;
    foreach my $att (keys %{ $params_hash->{types} }) {
      
      # e.g. S3 metadata objects, which are passed in the header
      next if exists $params_hash->{ParamInHeaders}{$att};

      my $key = $params_hash->{ParamInQuery}{$att} || $att;
      if (defined $params->$att) {
        my $att_type = $params_hash->{types}{$att}{type};

        if (Paws->is_internal_type($att_type)) {
          $p{ $key } = $params->{$att};
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if (Paws->is_internal_type("$1")){
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              $p{ sprintf($self->array_flatten_string, $key, $i) } = $value;
              $i++
            }
          } else {
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              my %complex_value = $self->_to_querycaller_params($value);
              map { $p{ sprintf($self->array_flatten_string . ".%s", $key, $i, $_) } = $complex_value{$_} } keys %complex_value;
              $i++
            }
          }
        } else {
          my %complex_value = $self->_to_querycaller_params($params->$att);
          map { $p{ "$key.$_" } = $complex_value{$_} } keys %complex_value;
        }
      }
    }
    return %p;
  }

  sub _call_uri {
    my ($self, $call) = @_;
    my $uri_template = $call->_api_uri; # in auto-lib/<service>/<method>.pm

    my @uri_attribs = $uri_template =~ /{(.+?)}/g;
    my $vars = {};

    my %uri_attrib_is_greedy;
    foreach my $attrib ( @uri_attribs ) {
      my ($att_name, $greedy) = $attrib =~ /(\w+)(\+?)/;
      $uri_attrib_is_greedy{$att_name} = $greedy;
    }

    my $params_hash = $call->params_map;
    foreach my $attribute (keys %{$params_hash->{types}})
    {
      if ($params_hash->{ParamInURI}{$attribute}) {
#        my $att_name = $params_hash->{ParamInURL}{$attribute} || $attribute;
        if ($uri_attrib_is_greedy{$attribute}) {
            $vars->{ $params_hash->{ParamInURI}{$attribute} } =  uri_escape_utf8($call->$attribute, q[^A-Za-z0-9\-\._~/]);
            $uri_template =~ s{$attribute\+}{\+$attribute}g;
        } else {
            $vars->{ $params_hash->{ParamInURI}{$attribute} } = $call->$attribute;
        }
      }
    }

    my $t = URI::Template->new( $uri_template );
    my $uri = $t->process($vars);
    return $uri;
  }

  sub _to_header_params {
    my ($self, $request, $call) = @_;
      
    my $params_hash = $call->params_map;
    foreach my $attribute (keys %{ $params_hash->{types} }) {
      if ($params_hash->{AutoInHeader}{$attribute}) {
        if ( $params_hash->{AutoInHeader}{$attribute}{auto} eq 'MD5' ) {
          $DB::single=1;
          require MIME::Base64;
          require Digest::MD5;
          my $value;
          if ( $call->$attribute ) {
             $value = $call->$attribute;
          }
          else {
            $value = MIME::Base64::encode_base64( Digest::MD5::md5( $request->content // '' ) );
            chomp $value;
          }
          $request->headers->header( $params_hash->{AutoInHeader}{$attribute}{header_name} => $value );
        }
        next;
      }
      next unless $call->$attribute;
      if ($params_hash->{ParamInHeader}{$attribute}) {
        my $value = $call->$attribute;
        $request->headers->header( $params_hash->{ParamInHeader}{$attribute} => $value );
      }
      elsif ($params_hash->{ParamInHeaders}{$attribute}) {
        my $map = $call->$attribute->Map;
        my $prefix = $params_hash->{ParamInHeaders}{$attribute};
        for my $header (keys %{$map}) { 
          my $header_name = $prefix . $header;
          $request->headers->header( $header_name => $map->{$header} );
        }
      }
    }
  }

  # URI escaping adapted from URI::Escape
  #c.f. http://www.w3.org/TR/html4/interact/forms.html#h-17.13.4.1
  # perl 5.6 ready UTF-8 encoding adapted from JSON::PP
  our %escapes = map { chr($_) => sprintf("%%%02X", $_) } 0..255;
  our $unsafe_char = qr/[^A-Za-z0-9\-\._~]/;

  sub _uri_escape {
    my ($self, $str) = @_;
    utf8::encode($str);
    $str =~ s/($unsafe_char)/$escapes{$1}/ge;
    $str =~ s/ /+/go;
    return $str;
  }

  sub _to_xml {
    my ($self, $value) = @_;

    my $xml = '';
    foreach my $attribute (keys %{$value->params_map->{types} }) {
#      my $att_name = $attribute->name;
      next if (not $value->$attribute);
      if ($value->params_map->{types}{$attribute}{type} eq 'ArrayRef[Str|Undef]') {
        my $location = $value->params_map->{NameInRequest}{$attribute};
        $xml .= "<${attribute}>" . ( join '', map { sprintf '<%s>%s</%s>', $location, $_, $location } @{ $value->$attribute } ) . "</${attribute}>";
      } elsif ($value->params_map->{types}{$attribute}{type} =~ m/^ArrayRef\[(.*?_.*)\]/) { #assume it's an array of Paws API objects
        my $location = $value->params_map->{NameInRequest}{$attribute} || $attribute;
        $xml .=  ( join '', map { sprintf '<%s>%s</%s>', $location, $self->_to_xml($_), $location } @{ $value->$attribute } );
      } elsif ($value->params_map->{types}{$attribute}{class}) {
        # Moose::Util::find_meta($attribute->type_constraint->name)) {
        if ($value->params_map->{NameInRequest}{$attribute}) {
          my $location = $value->params_map->{NameInRequest}{$attribute};
          $xml .= sprintf '<%s>%s</%s>', $location, $self->_to_xml($value->$attribute), $location;
        } else {
          $xml .= sprintf '<%s>%s</%s>', $attribute, $self->_to_xml($value->$attribute), $attribute;
        }
      } else {
        if ($value->params_map->{NameInRequest}{$attribute}) {
          my $location = $value->params_map->{NameInRequest}{$attribute};
          $xml .=  sprintf '<%s>%s</%s>', $location, $value->$attribute, $location;
        } else {
          $xml .= sprintf '<%s>%s</%s>', $attribute, $value->$attribute, $attribute;
        }
      }
    }
    return $xml; 
  }

  sub _to_xml_body {
    my ($self, $call) = @_;

    my $xml = '';
    my $params_map = $call->params_map;
    foreach my $attribute (keys %{$params_map->{types} }) {
      if( defined $call->$attribute and
#      if ($attribute->has_value($call) and 
          not $params_map->{ParamInHeader}{$attribute} and
          not $params_map->{ParamInQuery}{$attribute}  and
          not $params_map->{ParamInURI}{$attribute}    and
          not $params_map->{ParamInBody}{$attribute}   and
          not $params_map->{types}{$attribute}{class} && $params_map->{types}{$attribute}{class} eq 'Paws::S3::Metadata'
         ) {
        my $attribute_value = $call->$attribute;
        if ( ref $attribute_value ) {
          my $location = $params_map->{NameInRequest}{$attribute} || $attribute;
          $xml .= sprintf '<%s>%s</%s>', $location, $self->_to_xml($attribute_value), $location;
        }
        else {
           $xml .= $attribute_value;
        }
      }
    }

    return undef if (not $xml);
    return $xml;
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request;
    if ($self->isa('Paws::S3')){
      require Paws::Net::S3APIRequest;
      $request = Paws::Net::S3APIRequest->new();
    } else {
      $request = Paws::Net::APIRequest->new();
    }

    my $uri = $self->_call_uri($call); #in RestXmlCaller

    my $qparams = { $uri->query_form };
    foreach my $attribute (keys %{$call->params_map->{types} }) {
#      my $att_name = $attribute->name;
      if ($call->params_map->{ParamInQuery}{$attribute}) {
        $qparams->{ $call->params_map->{ParamInQuery}{$attribute} } = $call->$attribute if (defined $call->$attribute);
      }
    }
    $uri->query_form(%$qparams);

    $request->uri($uri->as_string);

    my $url = $self->_api_endpoint . $uri; #in Paws::API::EndPointResolver

    #TODO: I'm not sure if any of the REST style APIs want things as query parameters
    $request->parameters({ $self->_to_querycaller_params($call) });

    $request->url($url);
    $request->method($call->_api_method);

    if (my $xml_body = $self->_to_xml_body($call)){
      $request->content($xml_body);
    }

    if ($call->can('_stream_param')) {
      my $param_name = $call->_stream_param;
      $request->content($call->$param_name);
      $request->headers->header( 'content-length' => $request->content_length );
      #$request->headers->header( 'content-type'   => $self->content_type );
    }

    $self->_to_header_params($request, $call);

    $self->sign($request);

    return $request;
  }
1;
