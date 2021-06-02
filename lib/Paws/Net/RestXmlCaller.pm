package Paws::Net::RestXmlCaller;
use Paws;
use Moose::Role;
use HTTP::Request::Common;
use POSIX qw(strftime);
use URI::Template;
use URI::Escape;
use Moose::Util;
use Paws::Net::RestXMLResponse;
use Data::Dumper;
has response_to_object => (
    is      => 'ro',
    default => sub {
        Paws::Net::RestXMLResponse->new;
    }
);

sub array_flatten_string {
    my $self = shift;
    my ($name) = shift;
    $name = ""
      unless ($name);
    return ( $self->flattened_arrays ) ? '%s.' . $name . '%d' : '%s.member.%d';
}

# converts the objects that represent the call into parameters that the API can understand
sub _to_querycaller_params {
    my ( $self, $params ) = @_;

    my %p;
    foreach my $att ( grep { $_ !~ m/^_/ } $params->meta->get_attribute_list ) {

        # e.g. S3 metadata objects, which are passed in the header
        next
          if $params->meta->get_attribute($att)
              ->does('Paws::API::Attribute::Trait::ParamInHeaders');

        my $key =
          $params->meta->get_attribute($att)
          ->does('Paws::API::Attribute::Trait::ParamInQuery')
          ? $params->meta->get_attribute($att)->query_name
          : $att;
        if ( defined $params->$att ) {
            my $att_type = $params->meta->get_attribute($att)->type_constraint;
            if ( Paws->is_internal_type($att_type) ) {
                $p{$key} = $params->{$att};
            }
            elsif ( $att_type =~ m/^ArrayRef\[(.*)\]/ ) {
                if ( Paws->is_internal_type("$1") ) {
                    my $i = 1;
                    foreach my $value ( @{ $params->$att } ) {
                        $p{ sprintf( $self->array_flatten_string, $key, $i ) } =
                          $value;
                        $i++;
                    }
                }
                else {
                    my $i = 1;
                    foreach my $value ( @{ $params->$att } ) {
                        my %complex_value =
                          $self->_to_querycaller_params($value);
                        my $request_name;
                        $request_name =
                          $params->meta->get_attribute($att)->request_name()
                          . "."
                          if (
                            $params->meta->get_attribute($att)->does(
                                'Paws::API::Attribute::Trait::NameInRequest')
                          );
                        map {
                            $p{
                                sprintf(
                                    $self->array_flatten_string($request_name)
                                      . ".%s",
                                    $key, $i, $_ )
                              }
                              = $complex_value{$_}
                        } keys %complex_value;
                        $i++;
                    }
                }
            }
            else {
                my %complex_value =
                  $self->_to_querycaller_params( $params->$att );
                map { $p{"$key.$_"} = $complex_value{$_} } keys %complex_value;
            }
        }
    }
    return %p;
}

sub _call_uri {
    my ( $self, $call ) = @_;
    my $uri_template =
      $call->meta->name->_api_uri;    # in auto-lib/<service>/<method>.pm
    my @uri_attribs = $uri_template =~ /{(.+?)}/g;
    my $vars = {};
    my %uri_attrib_is_greedy;
    foreach my $attrib (@uri_attribs) {
        my ( $att_name, $greedy ) = $attrib =~ /(\w+)(\+?)/;
        $uri_attrib_is_greedy{$att_name} = $greedy;
    }
    my $joiner = '?';
    $joiner = '&'
      if ( index( $uri_template, '?' ) != -1 );


    foreach my $attribute ( $call->meta->get_all_attributes ) {

        if ( $attribute->does('Paws::API::Attribute::Trait::ParamInQuery') ) {

            my $att_name = $attribute->name;
            next
              unless ( defined( $call->$att_name ) );
            $uri_template .=
              $joiner . $attribute->query_name . "={" . $att_name . "}";
            $vars->{$att_name} = $call->$att_name;
            $joiner = '&';
        }
    }
    foreach my $attribute ( $call->meta->get_all_attributes ) {

        if ( $attribute->does('Paws::API::Attribute::Trait::ParamInURI') ) {
            my $att_name = $attribute->name;
			if ( exists($uri_attrib_is_greedy{$att_name} )) {
                $vars->{ $attribute->uri_name } =
                  uri_escape_utf8( $call->$att_name, q[^A-Za-z0-9\-\._~/] );
				$uri_template =~ s{$att_name\+}{\+$att_name}g
				  if ($uri_attrib_is_greedy{$att_name});
            }
            else {
				$uri_template .=
                  $joiner . $attribute->uri_name . "={" . $attribute->uri_name . "}";

                $vars->{ $attribute->uri_name } = $call->$att_name;
            }
        }

    }
    my $t   = URI::Template->new($uri_template);
    my $uri = $t->process($vars);
    return $uri;
}

sub _to_header_params {
    my ( $self, $request, $call ) = @_;
    foreach my $attribute ( $call->meta->get_all_attributes ) {
        if ( $attribute->does('Paws::API::Attribute::Trait::AutoInHeader') ) {
            if ( $attribute->auto eq 'MD5' ) {
                require MIME::Base64;
                require Digest::MD5;
                my $value;
                if ( $attribute->has_value($call) ) {
                    $value = $attribute->get_value($call);
                }
                else {
                    $value =
                      MIME::Base64::encode_base64(
                        Digest::MD5::md5( $request->content // '' ) );
                    chomp $value;
                }
                $request->headers->header( $attribute->header_name => $value );
            }
            next;
        }
        next unless $attribute->has_value($call);
        if ( $attribute->does('Paws::API::Attribute::Trait::ParamInHeader') ) {
            my $value = $attribute->get_value($call);
            $request->headers->header( $attribute->header_name => $value );
        }
        elsif (
            $attribute->does('Paws::API::Attribute::Trait::ParamInHeaders') )
        {
            my $map    = $attribute->get_value($call)->Map;
            my $prefix = $attribute->header_prefix;
            for my $header ( keys %{$map} ) {
                my $header_name = $prefix . $header;
                $request->headers->header( $header_name => $map->{$header} );
            }
        }
    }
}

# URI escaping adapted from URI::Escape
#c.f. http://www.w3.org/TR/html4/interact/forms.html#h-17.13.4.1
# perl 5.6 ready UTF-8 encoding adapted from JSON::PP
our %escapes = map { chr($_) => sprintf( "%%%02X", $_ ) } 0 .. 255;
our $unsafe_char = qr/[^A-Za-z0-9\-\._~]/;

sub _uri_escape {
    my ( $self, $str ) = @_;
    utf8::encode($str);
    $str =~ s/($unsafe_char)/$escapes{$1}/ge;
    $str =~ s/ /+/go;
    return $str;
}

sub _to_xml_attributes {
    my ( $self, $value ) = @_;
    return ""
      unless ( ref($value) and $value->can('_xml_attributes') );


    my $attributes = $value->_xml_attributes();

    my $xml_attributes =
      ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' . join(
        '',
        map {
            sprintf ' %s="%s"',
              $value->meta->get_attribute($_)->xml_attribute_name(), $value->$_
          } @{$attributes}
      );
    return $xml_attributes;

}

sub _to_xml {
    my ( $self, $value ) = @_;
    my $xml = '';
    foreach my $attribute ( sort { $a->name cmp $b->name }
        $value->meta->get_all_attributes )
    {
        my $att_name = $attribute->name;
        next if ( not $attribute->has_value($value) );
        next if ( $attribute->does('XMLAtribute') );
        if ( Moose::Util::find_meta( $attribute->type_constraint->name ) ) {
            if ( $attribute->does('NameInRequest') ) {
                my $location = $attribute->request_name;
                $xml .= sprintf '<%s%s>%s</%s>', $location,
                  $self->_to_xml_attributes( $attribute->get_value($value) ),
                  $self->_to_xml( $attribute->get_value($value) ), $location;
            }
            else {

                $xml .= sprintf '<%s%s>%s</%s>', $att_name,
                  $self->_to_xml_attributes( $attribute->get_value($value) ),
                  $self->_to_xml( $attribute->get_value($value) ), $att_name;
            }
        }
        elsif ( $attribute->type_constraint eq 'ArrayRef[Str|Undef]' ) {

			my $location = 'member';
			$location = $attribute->request_name
			  if ($attribute->can('request_name'));

		    my $temp_xml .= (
                join '',
                map { sprintf '<%s>%s</%s>', $location, $_, $location }
                  @{ $attribute->get_value($value) }
            );

            $temp_xml = "<$att_name>" . $temp_xml . "</$att_name>"
              unless ( $attribute->does('Flatten') );
			
            $xml .= $temp_xml;


        }
        elsif ( $attribute->type_constraint =~ m/^ArrayRef\[(.*?\:\:.*)\]/ )
        {    #assume it's an array of Paws API objects


            if ( $attribute->does('ListNameInRequest') ) {
                my $location  = $attribute->request_name();
                my $list_name = $attribute->list_request_name();
                my $temp_xml  = (
                    join '',
                    map {
                        sprintf '<%s%s>%s</%s>', $location,
                          $self->_to_xml_attributes(
                            $attribute->get_value($_) ), $self->_to_xml($_),
                          $location
                      } @{ $attribute->get_value($value) }
                );

                $temp_xml = "<$list_name>$temp_xml</$list_name>"
                  if ( $location ne $list_name );
				$xml .= $temp_xml;
            }
            else {
				my $location = 'member';
				$location = $attribute->request_name
				  if $attribute->does('NameInRequest');
				$xml .= (
                    join '',
                    map {
                        sprintf '<%s%s>%s</%s>', $location,
                          $self->_to_xml_attributes(
                            $attribute->get_value($_) ), $self->_to_xml($_),
                          $location
                      } @{ $attribute->get_value($value) }
                );
                $xml = "<$att_name>$xml</$att_name>"
                  if (  ($attribute->does('NameInRequest')
                    and $location ne $attribute->request_name
                    and !$attribute->does('Flatten')) or !$attribute->does('NameInRequest') );
            }
        }
        else {

            if ( $attribute->does('NameInRequest') ) {
                my $location = $attribute->request_name;
                $xml .= sprintf '<%s%s>%s</%s>', $location,
                  $self->_to_xml_attributes( $attribute->get_value($value) ),
                  $attribute->get_value($value), $location;
            }
            else {
                $xml .= sprintf '<%s%s>%s</%s>', $att_name,
                  $self->_to_xml_attributes( $attribute->get_value($value) ),
                  $attribute->get_value($value), $att_name;
            }
        }
    }
    return $xml;
}

sub _to_xml_body {
    my ( $self, $call ) = @_;

    my $xml = '';

	my $xml_extra = '';
    foreach my $attribute ( sort { $a->name cmp $b->name }
        $call->meta->get_all_attributes )
    {
        if ( $attribute->has_value($call)
            and not $attribute->does('Paws::API::Attribute::Trait::ParamInHeader')
            and not $attribute->does('Paws::API::Attribute::Trait::ParamInQuery')
            and not $attribute->does('Paws::API::Attribute::Trait::ParamInURI')
            and not $attribute->type_constraint eq 'Paws::S3::Metadata' )
        {

            my $attribute_value = $attribute->get_value($call);

            if ( ref $attribute_value ) {
                my $location =
                    $attribute->does('NameInRequest')
                  ? $attribute->request_name
                  : $attribute->name;

                if ( $attribute->does('Flatten') ) {
                    $xml .= $self->_to_xml($attribute_value);
                }
                elsif ( $call->can('_namspace_uri') ) {
                    $xml .= sprintf '<%s xmlns="%s">%s</%s>'
                            ,$location
                            ,$call->_namspace_uri()
                            ,$self->_to_xml($attribute_value)
                            ,$location;
                }
	        elsif (ref($attribute_value) eq 'ARRAY'){
		     my $location = $attribute->name;
		     my $list_name = $attribute->name;
   		     $location =  $attribute->request_name
		       if ( $attribute->can('request_name'));
		     my $temp_xml  = (
                        join '',
                          map {
                        sprintf '<%s>%s</%s>', $location,
                            , ref($_) ? $self->_to_xml($_) : $_,
                          $location
                        } @{ $attribute_value }
                     );
                     $temp_xml = "<$list_name>$temp_xml</$list_name>"
                        if ( $location ne $list_name );
                     $xml .= $temp_xml;
		}	 
		else {
                    $xml .= sprintf '<%s>%s</%s>', $location,
                    $self->_to_xml($attribute_value), $location;
                }
            }
            else {
                    
                   if ($attribute->does('Paws::API::Attribute::Trait::ParamInBody')){
                       $xml .=$attribute_value; #special case for S3->PutBucketPolicy expects JSON in content vs XML
                   }
                   else {
                     $xml .= sprintf '<%s>%s</%s>'
                             , $attribute->name
                             , $attribute_value
                             , $attribute->name;
                   }
	    }

         }
    }
    if ($call->can('_location')){
       my $location = $call->_location();
       $xml .= $xml_extra; 
       if ($call->can('_xmlNamespace')){
          $xml = sprintf '<%s xmlns="%s">%s</%s>',$location,$call->_xmlNamespace(),$xml,$location;
       }
       else {
          $xml = sprintf '<%s>%s</%s>',$location,$xml,$location;
       }
    }
    
    if ($call->can('_top_level_element')) {
       $xml = sprintf('<%s xmlns="%s">%s</%s>',
                     $call->_top_level_element,
                     $call->_top_level_namespace,
                     $xml,
                     $call->_top_level_element
                    );
    }


    return undef if ( not $xml );
    return $xml;
}

sub prepare_request_for_call {
    my ( $self, $call ) = @_;
    my $request;
    if ( $self->isa('Paws::S3') ) {
        require Paws::Net::S3APIRequest;
        $request = Paws::Net::S3APIRequest->new();
    }
    else {
        $request = Paws::Net::APIRequest->new();
    }

    my $uri = $self->_call_uri($call);    #in RestXmlCaller

    my $qparams = { $uri->query_form };

    $uri->query_form(%$qparams);

    $request->uri( $uri->as_string );
    my $url = $self->_api_endpoint . $uri;    #in Paws::API::EndPointResolver
      #TODO: I'm not sure if any of the REST style APIs want things as query parameters
      #
	  #
	$request->parameters( { $self->_to_querycaller_params($call) } );
    $request->url($url);
    $request->method( $call->_api_method );
    if ( my $xml_body = $self->_to_xml_body($call) ) {
        $request->content($xml_body);
	    $request->header( 'content-type' => 'application/xml');  #this is an XML interface so it should have this header
    }


    if ( $call->can('_stream_param') ) {
        my $param_name = $call->_stream_param;
        $request->content( $call->$param_name );
        $request->headers->header(
            'content-length' => $request->content_length );
    }

    $self->_to_header_params( $request, $call );

    if (ref($self) eq "Paws::S3Control"){ #calls out to S3Control need the Account ID
       $self->sign($request,$call->AccountId());
    }   
    else {
       $self->sign($request);
    }
    return $request;
}
1;
