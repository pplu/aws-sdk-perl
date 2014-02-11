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
  has json_version => (is => 'ro', isa => 'Str', required => 1);

  sub _is_internal_type {
    my ($self, $att_type) = @_;
    return ($att_type eq 'Str' or $att_type eq 'Int' or $att_type eq 'Bool' or $att_type eq 'Num');
  }

  sub _to_params {
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
            $p{ $key } = $params->$att;
          } else {
            $p{ $key } = $self->$att->_to_params($params->$att);
          }
        } else {
          $p{ $key } = $params->$att->to_params($params->$att);
        }
      }
    }
    return \%p;
  }


  sub _api_caller {
    my ($self, $action, $params) = @_;
    my $request = Net::AWS::APIRequest->new(url => $self->endpoint, method => 'POST');

    $request->parameters({ Action => $action,
                           Version => $self->version,
                           AWSAccessKeyId => $self->access_key,
                           Timestamp => strftime("%Y-%m-%dT%H:%M:%SZ",gmtime),
                        });
    $request->header('X-Amz-Target', sprintf('%s.%s', $self->target_prefix, $action));

    my $j_version = $self->json_version;
    $request->headers->content_type("application/x-amz-json-$j_version");

    #$request->header('Content-Encoding', 'amz-1.0');
    $request->header( 'X-Amz-Date' => strftime( '%Y%m%dT%H%M%SZ', gmtime) );
    $request->header( Host => $self->endpoint_host );

    my $data = $self->_to_params($params);
    $request->content(to_json($data));

    $self->sign($request);

    return $self->send($request);
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

  sub _is_internal_type {
    my ($self, $att_type) = @_;
    return ($att_type eq 'Str' or $att_type eq 'Int' or $att_type eq 'Bool' or $att_type eq 'Num');
  }

  sub _to_params {
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
              $p{ sprintf("%s.%d", $key, $i) } = $value;
              $i++
            }
          } else {
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              my $complex_value = $value->_to_params($att);
              map { $p{ sprintf("%s.%d.%s", $key, $i, $_) } = $complex_value->{$_} } keys %$complex_value;
              $i++
            }
          }
        } else {
          $p{ $key } = $params->$att->to_params($params->$att);
        }
      }
    }
    return %p;
  }

  sub _api_caller {
    my ($self, $action, $params) = @_;
    my $request = Net::AWS::APIRequest->new(url => $self->endpoint, method => 'POST');

    $request->parameters({ Action => $action, 
                           Version   => $self->version,
                           $self->_to_params($params) 
    });

    $request->generate_content_from_parameters;

    $self->sign($request);

    return $self->send($request);
  }
}

package Net::AWS::APIRequest {
  use Moose;
  use HTTP::Headers;
  use URI;

  has parameters => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has headers    => (is => 'rw', isa => 'HTTP::Headers', default => sub { HTTP::Headers->new });
  has content    => (is => 'rw', isa => 'Str');
  has method     => (is => 'rw', isa => 'Str', required => 1);
  has url        => (is => 'rw', isa => 'Str', required => 1);

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
  has 'version'            => ( is => 'rw', required => 1);
  has 'endpoint'           => ( is => 'rw', required => 1, lazy => 1, default => sub { $_[0]->_api_endpoint });
  has 'ua' => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        use HTTP::Tiny;
        HTTP::Tiny->new(
            'agent' => 'AWS Perl SDK 0.1',
        );
    }
  );

  sub send {
    my ($self, $request) = @_;
    my $headers = {};
    $request->headers->scan(sub { $headers->{ $_[0] } = $_[1] });

    my $response = $self->ua->request(
      $request->method,
      $request->url,
      {
        headers => $headers,
        (defined $request->content)?(content => $request->content):(),
      }
    );
    if ( $response->{success} ) {
        return $self->_process_response( $response->{content} );
    } else {
        #TODO: retry or croak based on error codes
        croak "POST Request failed: $response->{status} $response->{reason} $response->{content}\n";
    }

  }
}

1;
