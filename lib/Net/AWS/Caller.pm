use MooseX::Declare;

role Net::AWS::V2Signature {
  use POSIX qw(strftime);
  use Digest::SHA qw(hmac_sha256);
  use MIME::Base64 qw(encode_base64);
  use HTTP::Request::Common;
  use Carp;

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

sub _timestamp {
    return strftime("%Y-%m-%dT%H:%M:%SZ",gmtime);
}
    
sub sign {
    my ($self, $params) = @_;
    my %args = %$params;
    my $action                      = delete $args{Action};
    
    croak "Action must be defined!\n" if not defined $action;

    my %sign_hash                   = %args;
    my $timestamp                   = $self->_timestamp;

    $sign_hash{AWSAccessKeyId}      = $self->access_key;
    $sign_hash{Action}              = $action;
    $sign_hash{Timestamp}           = $timestamp;
    $sign_hash{Version}             = $self->version;
    $sign_hash{SignatureVersion}    = "2";
    $sign_hash{SignatureMethod}     = "HmacSHA256";

    my $sign_this = "POST\n";
    $sign_this .= $self->_base_url_host . "\n";
    $sign_this .= "/\n";


    $sign_this .= $self->www_form_urlencode(\%sign_hash);

    warn "QUERY TO SIGN: $sign_this" if $self->debug;
    my $encoded = encode_base64(hmac_sha256($sign_this, $self->secret_key), '');

    my $post_params = {
        Action                => $action,
        SignatureVersion      => "2",
        SignatureMethod       => "HmacSHA256",
        AWSAccessKeyId        => $self->access_key,
        Timestamp             => $timestamp,
        Version               => $self->version,
        Signature             => $encoded,
        %args
    };

    my $request = POST $self->endpoint, Content => $post_params;
    return $request;
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

role Net::AWS::V4Signature {
  use Net::Amazon::Signature::V4;
  #requires 'region';
  requires 'service';
  use HTTP::Request::Common;

  sub sign {
    my ($self, $params) = @_;

    my $request = POST $self->endpoint, Content => $params;
    $request->header( Date => strftime( '%Y%m%dT%H%M%SZ', gmtime) );
    $request->header( Host => $self->endpoint_host );

    my $sig = Net::Amazon::Signature::V4->new( $self->access_key, $self->secret_key, $self->region, $self->service );
    my $signed_req = $sig->sign( $request );
    return $signed_req;
  }
}

role Net::AWS::QueryCaller {
  method _is_internal_type ($att_type) {
    return ($att_type eq 'Str' or $att_type eq 'Int' or $att_type eq 'Bool' or $att_type eq 'Num');
  }
  method _to_params ($params) {
    my %p;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;
        if ($self->_is_internal_type($att_type)) {
          $p{ $att } = $params->{$att};
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              $p{ sprintf("%s.member.%d", $att, $i) } = $value;
              $i++
            }
          } else {
            my $i = 1;
            foreach my $value (@{ $params->$att }){
              $p{ sprintf("%s.member.%d", $att, $i) } = $value->_to_params($att);
              $i++
            }
          }
        } else {
          $p{ $att } = $params->$att->to_params($params->{$att});
        }
      }
    }
    return %p;
  }
  method _api_caller ($action, $params) {
    return $self->send(Action => $action, $self->_to_params($params));
  }
}

role Net::AWS::Caller {
  use POSIX qw(strftime);
  use Digest::SHA qw(hmac_sha256);
  use MIME::Base64 qw(encode_base64);
  use Carp qw(croak);
  use XML::Simple qw(XMLin);

  has 'access_key'         => ( is => 'rw', isa => 'Str', required => 1, lazy => 1, default => sub { $ENV{AWS_ACCESS_KEY} } );
  has 'secret_key'         => ( is => 'rw', isa => 'Str', required => 1, lazy => 1, default => sub { $ENV{AWS_SECRET_KEY} } );
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

  sub _process {
    my $self = shift;
    my $data = shift;

    my $xml = XMLin( $data,
            ForceArray    => qr/(?:item|Errors)/i,
            KeyAttr       => '',
            SuppressEmpty => undef,
    );
    return $xml;
  }


  method send (%params){
    my $request = $self->sign(\%params);

    my $headers = {};
    $request->scan(sub { $headers->{ $_[0] } = $_[1] });
    my $response = $self->ua->request(
      $request->method,
      $request->url,
      {
        headers => $headers,
        content => $request->content
      }
    );
    if ( $response->{success} ) {
        my $xml = $self->_process( $response->{content} );
        if ( defined $xml->{Errors} ) {
            croak "Error: $response->{content}\n";
        }
        return $xml;
    }

    croak "POST Request failed: $response->{status} $response->{reason} $response->{content}\n";
  }
}


