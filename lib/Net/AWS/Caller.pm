package Net::AWS::V2Signature {
  use Moose::Role;
  use Digest::SHA qw(hmac_sha256);
  use MIME::Base64 qw(encode_base64);
  use Carp;
  use URI;
  use POSIX qw/strftime/;

has 'base_url'           => ( 
    is          => 'ro', 
    required    => 1,
    lazy        => 1,
    default     => sub {
        sprintf 'https://%s', $_[0]->endpoint_host;
    }
);

has '_base_url_host'     => (
    is          => 'ro',
    required    => 1,
    lazy        => 1,
    default     => sub {
        ($_[0]->ua->_split_url($_[0]->base_url))[1]
    }
);

sub sign {
    my ($self, $request) = @_;

    $request->parameters->{ SignatureVersion } = "2";
    $request->parameters->{ SignatureMethod } = "HmacSHA256";
    $request->parameters->{ Timestamp } = strftime("%Y-%m-%dT%H:%M:%SZ",gmtime);
    $request->parameters->{ AWSAccessKeyId } = $self->access_key;

    my %sign_hash = %{ $request->parameters };
    my $sign_this = "POST\n";
    $sign_this .= $self->_base_url_host . "\n";
    $sign_this .= "/\n";


    $sign_this .= $self->www_form_urlencode(\%sign_hash);

    warn "QUERY TO SIGN: $sign_this" if ($self->debug);

    my $encoded = encode_base64(hmac_sha256($sign_this, $self->secret_key), '');

    $request->parameters->{ Signature } = $encoded;

    #Since the parameters and the signing goes into the content, we have
    $request->generate_content_from_parameters;
}


sub www_form_urlencode {
    my ($self, $data) = @_;

    my @params = %$data;

    my @terms;
    while( @params ) {
        my ($key, $value) = splice(@params, 0, 2);
        if ( ref $value eq 'ARRAY' ) {
            unshift @params, map { $key => $_ } @$value;
        }
        else {
            push @terms, join("=", map { $self->_uri_escape($_) } $key, $value);
        }
    }

    return join("&", sort @terms );
}

# URI escaping adapted from URI::Escape
# c.f. http://www.w3.org/TR/html4/interact/forms.html#h-17.13.4.1
# perl 5.6 ready UTF-8 encoding adapted from JSON::PP
our %escapes = map { chr($_) => sprintf("%%%02X", $_) } 0..255;
$escapes{' '}="+";
our $unsafe_char = qr/[^A-Za-z0-9\-\._~]/;

sub _uri_escape {
    my ($self, $str) = @_;
    if ( $] ge '5.008' ) {
        utf8::encode($str);
    }
    else {
        $str = pack("U*", unpack("C*", $str)) # UTF-8 encode a byte string
            if ( length $str == do { use bytes; length $str } );
        $str = pack("C*", unpack("C*", $str)); # clear UTF-8 flag
    }
    $str =~ s/($unsafe_char)/$escapes{$1}/ge;
    return $str;
}

sub _request {
    my $self   = shift;
    my $params = shift;

    return $self->ua->post_form( $self->base_url, $params );
}

}

package Net::AWS::V4Signature {
  use Moose::Role;
  use Net::Amazon::Signature::V4;
  #requires 'region';
  requires 'service';
  use POSIX qw(strftime);

  sub sign {
    my ($self, $request) = @_;

    $request->header( Date => strftime( '%Y%m%dT%H%M%SZ', gmtime) );
    $request->header( Host => $self->endpoint_host );

    my $sig = Net::Amazon::Signature::V4->new( $self->access_key, $self->secret_key, $self->region, $self->service );
    $sig->sign( $request );
  }
}

package Net::AWS::JsonCaller {
  use Moose::Role;
  use JSON;
  use POSIX qw(strftime);
  requires 'json_version';

  # converts the params the user passed to the call into objects that represent the call
  sub new_with_coercions {
    my ($self, $class, %params) = @_;

    my %p;
    foreach my $att ($class->meta->get_attribute_list){
      next if (not exists $params{ $att });
      my $type = $class->meta->get_attribute($att)->type_constraint;
      if ($type eq 'Bool') {
        $p{ $att } = ($params{ $att } == 1)?1:0;
      } elsif ($type eq 'Str' or $type eq 'Num' or $type eq 'Int') {
        $p{ $att } = $params{ $att };
      } elsif ($type =~ m/^ArrayRef\[(.*?)\]$/){
        my $subtype = "$1";
        if ($subtype eq 'Str' or $subtype eq 'Num' or $subtype eq 'Int' or $subtype eq 'Bool') {
          $p{ $att } = $params{ $att };
        } else {
          $p{ $att } = [ map { $self->new_with_coercions("$subtype", %{ $_ }) } @{ $params{ $att } } ]; 
        }
      } elsif ($type->isa('Moose::Meta::TypeConstraint::Enum')){
        $p{ $att } = $params{ $att };
      } else {
        $p{ $att } = $self->new_with_coercions("$type", %{ $params{ $att } });
      }
    }
    return $class->new(%p);
  }

  sub _is_internal_type {
    my ($self, $att_type) = @_;
    return ($att_type eq 'Str' or $att_type eq 'Int' or $att_type eq 'Bool' or $att_type eq 'Num');
  }

  # converts the objects that represent the call into parameters that the API can understand
  sub _to_jsoncaller_params {
    my ($self, $params) = @_;
    my %p;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      my $key = $params->meta->get_attribute($att)->does('Net::AWS::Caller::Attribute::Trait::NameInRequest')?$params->meta->get_attribute($att)->request_name:$att;
      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;
        if ($att_type eq 'Bool') {
          $p{ $key } = ($params->$att)?\1:\0;
        } elsif ($self->_is_internal_type($att_type)) {
          $p{ $key } = $params->$att;
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
            $p{ $key } = $params->$att;
          } else {
            $p{ $key } = [ map { $self->_to_jsoncaller_params($_) } @{ $params->$att } ];
          }
        } elsif ($att_type->isa('Moose::Meta::TypeConstraint::Enum')) {
          $p{ $key } = $params->$att;
        } else {
          $p{ $key } = $self->_to_jsoncaller_params($params->$att);
        }
      }
    }
    return \%p;
  }

  sub _api_caller {
    my ($self, $call_class, $call_params_object, $request) = @_;
    $request->url($self->endpoint);
    $request->method('POST');

    $request->parameters({ Action => $call_class->_api_call,
                           Version => $self->version,
                           AWSAccessKeyId => $self->access_key,
                           Timestamp => strftime("%Y-%m-%dT%H:%M:%SZ",gmtime),
                        });
    $request->header('X-Amz-Target', sprintf('%s.%s', $self->target_prefix, $call_class->_api_call));

    my $j_version = $self->json_version;
    $request->headers->content_type("application/x-amz-json-$j_version");

    #$request->header('Content-Encoding', 'amz-1.0');
    $request->header( 'X-Amz-Date' => strftime( '%Y%m%dT%H%M%SZ', gmtime) );
    $request->header( Host => $self->endpoint_host );

    my $data = $self->_to_jsoncaller_params($call_params_object);
    $request->content(to_json($data));

    return $request;
  }
}

package Net::AWS::JsonResponse {
  use Moose::Role;
  use JSON;
  use Carp qw(croak);
  
  sub _process_response {
    my ($self, $data) = @_;
    my $json = from_json( $data );
    if ( defined $json->{Errors} ) {
      croak "Error: $data";
    }

    return $json;
  }

}

package Net::AWS::QueryCaller {
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 

  has array_flatten_string => (is => 'ro', isa => 'Str', lazy => 1, default => sub {
    my $self = shift;
    return ($self->flattened_arrays)?'%s.%d':'%s.member.%d';
  });

  # converts the params the user passed to the call into objects that represent the call
  sub new_with_coercions {
    my ($self, $class, %params) = @_;

    my %p;
    foreach my $att ($class->meta->get_attribute_list){
      next if (not exists $params{ $att });
      my $type = $class->meta->get_attribute($att)->type_constraint;
      if ($type eq 'Bool') {
        $p{ $att } = ($params{ $att } == 1)?1:0;
      } elsif ($type eq 'Str' or $type eq 'Num' or $type eq 'Int') {
        $p{ $att } = $params{ $att };
      } elsif ($type =~ m/^ArrayRef\[(.*?)\]$/){
        my $subtype = "$1";
        if ($subtype eq 'Str' or $subtype eq 'Num' or $subtype eq 'Int' or $subtype eq 'Bool') {
          $p{ $att } = $params{ $att };
        } else {
          $p{ $att } = [ map { $self->new_with_coercions("$subtype", %{ $_ }) } @{ $params{ $att } } ]; 
        }
      } else {
        $p{ $att } = $self->new_with_coercions("$type", %{ $params{ $att } });
      }
    }
    return $class->new(%p);
  }

  sub _is_internal_type {
    my ($self, $att_type) = @_;
    return ($att_type eq 'Str' or $att_type eq 'Int' or $att_type eq 'Bool' or $att_type eq 'Num');
  }

  # converts the objects that represent the call into parameters that the API can understand
  sub _to_querycaller_params {
    my ($self, $params) = @_;
    my %p;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      my $key = $params->meta->get_attribute($att)->does('Net::AWS::Caller::Attribute::Trait::NameInRequest')?$params->meta->get_attribute($att)->request_name:$att;
      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;

        if ($self->_is_internal_type($att_type)) {
          $p{ $key } = $params->{$att};
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
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

  sub _api_caller {
    my ($self, $call_class, $call_params_object, $request) = @_;
    $request->url($self->endpoint);
    $request->method('POST');

    $request->parameters({ Action => $call_class->_api_call, 
                           Version   => $self->version,
                           $self->_to_querycaller_params($call_params_object) 
    });

    $request->generate_content_from_parameters;

    return $request;
  }
}

package Net::AWS::APIRequest {
  use Moose;
  use HTTP::Headers;
  use URI;

  has parameters => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has headers    => (is => 'rw', isa => 'HTTP::Headers', default => sub { HTTP::Headers->new });
  has content    => (is => 'rw', isa => 'Str');
  has method     => (is => 'rw', isa => 'Str');
  has url        => (is => 'rw', isa => 'Str');

  sub uri { '/' };

  sub header {
    my ($self, $header, $value) = @_;
    $self->headers->header($header, $value) if (defined $value);
    return $self->headers->header($header);
  }

  sub generate_content_from_parameters {
    my $self = shift;
    $self->headers->content_type('application/x-www-form-urlencoded');
    my $url = URI->new('http:');
    $url->query_form($self->parameters);
    my $content = $url->query;
    # HTML/4.01 says that line breaks are represented as "CR LF" pairs (i.e., `%0D%0A')
    $content =~ s/(?<!%0D)%0A/%0D%0A/g if (defined $content);

    $self->content($content);
  }
}

package Net::AWS::XMLResponse {
  use Moose::Role;
  use XML::Simple qw//;
  use Carp qw(croak);
  
  sub _process_response {
    my ($self, $data) = @_;
    my $xml = XML::Simple::XMLin( $data,
            ForceArray    => qr/(?:item|Errors)/i,
            KeyAttr       => '',
            SuppressEmpty => undef,
    );
    if ( defined $xml->{Errors} ) {
      croak "Error: $data";
    }

    return $xml;
  }
}

package Net::AWS::Caller {
  use Moose::Role;
  use Carp qw(croak);

  requires '_process_response';
  has 'access_key'         => ( is => 'rw', isa => 'Str', required => 1, lazy => 1, default => sub { $ENV{AWS_ACCESS_KEY} || $ENV{AWS_ACCESS_KEY_ID} } );
  has 'secret_key'         => ( is => 'rw', isa => 'Str', required => 1, lazy => 1, default => sub { $ENV{AWS_SECRET_KEY} || $ENV{AWS_SECRET_ACCESS_KEY} } );
  has 'debug'              => ( is => 'rw', required => 0, default => sub { 0 } );
  requires 'version';
  has 'endpoint'           => ( is => 'rw', required => 1, lazy => 1, default => sub { $_[0]->_api_endpoint });
  has 'ua' => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        use HTTP::Tiny;
        HTTP::Tiny->new(
            'agent' => 'AWS Perl SDK 0.1',
        );
    }
  );

  #-- Custom request method from user overrides default method below
  has 'request_method'     => ( is => 'rw', required => 0, lazy => 1, default => sub {
    my ( $self ) = @_;
    return sub {
      my ( $requestObj ) = @_;
      my $headers = {};
      $requestObj->headers->scan(sub { $headers->{ $_[0] } = $_[1] });

      my $response = $self->ua->request(
        $requestObj->method,
        $requestObj->url,
        {
          headers => $headers,
          (defined $requestObj->content)?(content => $requestObj->content):(),
        }
      );
      if ( $response->{success} ) {
          return $self->_process_response( $response->{content} );
      } else {
          #TODO: retry or croak based on error codes
          croak "POST Request failed: $response->{status} $response->{reason} $response->{content}\n";
      }
    };
  } );

  sub do_call {
    my ($self, $call_class, @params) = @_;
    my $call = $self->new_with_coercions($call_class, @params);

    my $request = Net::AWS::APIRequest->new();
    $self->_api_caller($call_class, $call, $request);
    $self->sign($request);
    my $result = $self->send($request);

    if ($call_class->_returns){
      if ($call_class->_result_key){
        $result = $result->{ $call_class->_result_key };
      }

      my $o_result = $call_class->_returns->from_result($result);
      return $o_result;
    } else {
      return 1;
    }
  }

  sub send {
    my ($self, $request) = @_;
    return $self->request_method->( $request, $self );
  }
}

1;
