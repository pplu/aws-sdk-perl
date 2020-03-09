package Paws::Net::RestXmlCaller;
  use Paws;
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime);
  use URI::Template;
  use URI::Escape;
  use Moose::Util;

  use Paws::Net::RestXMLResponse;

  has response_to_object => (
    is => 'ro',
    default => sub {
      Paws::Net::RestXMLResponse->new;
    }
  );


  sub array_flatten_string {
    my ($self, $isflat) = @_;
    return ($isflat)?'%s.%d':'%s.member.%d';
  }

  # converts the objects that represent the call into parameters that the API can understand
  sub _to_querycaller_params {
    my ($self, $params) = @_;

    my %p;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {

      # e.g. S3 metadata objects, which are passed in the header
      next if $params->meta->get_attribute($att)->does('Paws::API::Attribute::Trait::ParamInHeaders');

      my $key = $params->meta->get_attribute($att)->does('Paws::API::Attribute::Trait::NameInRequest')
          ? $params->meta->get_attribute($att)->wrap_name || $params->meta->get_attribute($att)->request_name
          : $params->meta->get_attribute($att)->does('Paws::API::Attribute::Trait::ParamInQuery')
            ? $params->meta->get_attribute($att)->query_name
            : $att;
      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;

        if (Paws->is_internal_type($att_type)) {
          $p{ $key } = $params->{$att};
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if (Paws->is_internal_type("$1")){
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              $p{ sprintf($self->array_flatten_string($params->meta->get_attribute($att)->does('Paws::API::Attribute::Trait::ListFlattened')), $key, $i) } = $value;
              $i++
            }
          } else {
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              my %complex_value = $self->_to_querycaller_params($value);
              map { $p{ sprintf($self->array_flatten_string($params->meta->get_attribute($att)->does('Paws::API::Attribute::Trait::ListFlattened')) . ".%s", $key, $i, $_) } = $complex_value{$_} } keys %complex_value;
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
    my $uri_template = $call->meta->name->_api_uri; # in auto-lib/<service>/<method>.pm

    my @uri_attribs = $uri_template =~ /{(.+?)}/g;
    my $vars = {};

    my %uri_attrib_is_greedy;
    foreach my $attrib ( @uri_attribs ) {
      my ($att_name, $greedy) = $attrib =~ /(\w+)(\+?)/;
      $uri_attrib_is_greedy{$att_name} = $greedy;
    }

    foreach my $attribute ($call->meta->get_all_attributes)
    {
      if ($attribute->does('Paws::API::Attribute::Trait::ParamInURI')) {
        my $att_name = $attribute->name;
        my $non_print = join('',  map { chr($_) } (128..255) );
        if ($call->$att_name =~ /[{^}`\[\]><#%'"~|\\$non_print]/) {
          return Paws::Exception->throw(
            message => "Found unacceptable content in $att_name parameter",
            code => 'InvalidInput',
            request_id => '',
           );
        }
        if ($uri_attrib_is_greedy{$att_name}) {
            $vars->{ $attribute->uri_name } =  uri_escape_utf8($call->$att_name, q[^A-Za-z0-9\-\._~/]);
            $uri_template =~ s{$att_name\+}{\+$att_name}g;
        } else {
            $vars->{ $attribute->uri_name } = $call->$att_name;
        }
      }
    }

    my $t = URI::Template->new( $uri_template );
    my $uri = $t->process($vars);
    return $uri;
  }

  sub _to_header_params {
    my ($self, $request, $call) = @_;
    foreach my $attribute ($call->meta->get_all_attributes) {
      if ($attribute->does('Paws::API::Attribute::Trait::AutoInHeader')) {
        if ( $attribute->auto eq 'MD5' ) {
          require MIME::Base64;
          require Digest::MD5;
          my $value;
          if ( $attribute->has_value($call) ) {
             $value = $attribute->get_value($call);
          }
          else {
            $value = MIME::Base64::encode_base64( Digest::MD5::md5( $request->content // '' ) );
            chomp $value;
          }
          $request->headers->header( $attribute->header_name => $value );
        }
        next;
      }
      next unless $attribute->has_value($call);
      if ($attribute->does('Paws::API::Attribute::Trait::ParamInHeader')) {
        my $value = $attribute->get_value($call);
        $request->headers->header( $attribute->header_name => $value );
      }
      elsif ($attribute->does('Paws::API::Attribute::Trait::ParamInHeaders')) {
        my $map = $attribute->get_value($call)->Map;
        my $prefix = $attribute->header_prefix;
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

  sub _attribute_to_xml {
    my ($self, $attribute, $value) = @_;
    my $xml;
    my $att_name = $attribute->name;
    my $location = $attribute->does('NameInRequest') && $attribute->request_name ? $attribute->request_name : $att_name;
    if ($attribute->does('Paws::API::Attribute::Trait::ListFlattened')) {
      $location = $attribute->does('NameInRequest') && $attribute->wrap_name ? $attribute->wrap_name : $att_name;
    }

    my $wrap_name = $attribute->does('NameInRequest') && $attribute->wrap_name ? $attribute->wrap_name : $att_name;
    my ($ele_name, $ele_value, $ele_attributes);
    if (Moose::Util::find_meta($attribute->type_constraint->name))
    {
      $ele_name = $location;
      ($ele_attributes, $ele_value) = $self->_to_xml($value);
    }
    elsif ($attribute->type_constraint eq 'ArrayRef[Str|Undef]')
    {
      my $req_name = $attribute->wrap_name || $attribute->request_name;
      $ele_value = join '', map { sprintf '<%s>%s</%s>', $req_name, $_, $req_name } @{ $value };

      if( !$attribute->does('Paws::API::Attribute::Trait::ListFlattened') ) {
        $ele_name = $att_name;
        $ele_attributes = '';
      } else {
          $xml = $ele_value;
      }
    }
    elsif ($attribute->type_constraint =~ m/^ArrayRef\[(.*?\:\:.*)\]/)
    {                        #assume it's an array of Paws API objects
        $xml =  ( join '',
                  map { sprintf '<%s%s>%s</%s>', $location, $self->_to_xml($_), $location } @{ $value }
            );
      if( !$attribute->does('Paws::API::Attribute::Trait::ListFlattened') ) {
        $ele_name = $wrap_name;
        $ele_value = $xml;
        $ele_attributes = '';
      }
    }
    else
    {
      $ele_name = $location;
      $ele_value = $value;
      $ele_attributes = '';
    }
    if($ele_name) {
        my $namespace = blessed($value) && $value->can('_xml_namespace')
            ? " xmlns:" . $value->_xml_namespace->{prefix} . '="' . $value->_xml_namespace->{uri} . '"'
        : '';
      $xml = sprintf '<%s%s%s>%s</%s>', $ele_name, $namespace, $ele_attributes, $ele_value, $ele_name;
    }
    return $xml;
  }

  sub _to_xml {
    my ($self, $value) = @_;

    my $xml = '';
    my $xml_attrs = '';
    foreach my $attribute (sort { $a->name cmp $b->name } $value->meta->get_all_attributes) {
      next if (not $attribute->has_value($value));
      if($attribute->does('Paws::API::Attribute::Trait::IsXMLAttribute')) {
        $xml_attrs .= sprintf('%s="%s"', $attribute->attribute_name, $attribute->get_value($value));
      } else {
         $xml .= $self->_attribute_to_xml($attribute, $attribute->get_value($value));
      }
    }
    return ($xml_attrs ? " $xml_attrs" : '', $xml);
  }

  sub _to_xml_body {
    my ($self, $call) = @_;

    my $xml = '';
    foreach my $attribute (sort { $a->name cmp $b->name } $call->meta->get_all_attributes) {
      if ($attribute->has_value($call) and
          not $attribute->does('Paws::API::Attribute::Trait::ParamInHeader') and
          not $attribute->does('Paws::API::Attribute::Trait::ParamInQuery') and
          not $attribute->does('Paws::API::Attribute::Trait::ParamInURI') and
#          not $attribute->does('Paws::API::Attribute::Trait::ParamInBody') and
          not $attribute->type_constraint eq 'Paws::S3::Metadata'
          ) {
          if ($attribute->does('Paws::API::Attribute::Trait::ParamInBody') and not $attribute->type_constraint =~/::/) {
            $xml .= $attribute->get_value($call);
          } else {
            $xml .= $self->_attribute_to_xml($attribute, $attribute->get_value($call));
          }
      }
    }
    # Extra level of top-level wrapping, if set on the call object
    if ($call->can('_top_level_element')) {
      $xml = sprintf('<%s xmlns="%s">%s</%s>',
                     $call->_top_level_element,
                     $call->_xml_namespace->{'uri'},
                     $xml,
                     $call->_top_level_element
                    );
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

    ## Work around query_param issue in URI
    ## https://github.com/libwww-perl/URI/issues/34
    my $uri_copy = $uri->clone;
    ## $qparams = $uri->query_params;
    my $qparams = {};
    foreach my $attribute ($call->meta->get_all_attributes) {
      my $att_name = $attribute->name;
      if ($attribute->does('Paws::API::Attribute::Trait::ParamInQuery')) {
        $qparams->{ $attribute->query_name } = $call->$att_name if (defined $call->$att_name);
      }
    }
    
    $uri_copy->query_form(%$qparams);
    $uri->query(($uri->query ? $uri->query . '&' : '' ) . ($uri_copy->query || ''));

    $request->uri($uri->as_string);

    my $url = $self->_api_endpoint . $uri; #in Paws::API::EndPointResolver

    #TODO: I'm not sure if any of the REST style APIs want things as query parameters
    # Useful for testing purposes tho (see 09_requests.t)
    $request->parameters({ $self->_to_querycaller_params($call) });

    $request->url($url);
    $request->method($call->_api_method);

    if (my $xml_body = $self->_to_xml_body($call)){
      $request->content($xml_body);
    }

    if ($call->can('_stream_param')) {
      my $param_name = $call->_stream_param;
      my $content = $call->$param_name // '';
      $request->content($content);
      $request->headers->header( 'content-length' => $request->content_length );
      #$request->headers->header( 'content-type'   => $self->content_type );
    }

    $self->_to_header_params($request, $call);

    $self->sign($request);

    return $request;
  }
1;
