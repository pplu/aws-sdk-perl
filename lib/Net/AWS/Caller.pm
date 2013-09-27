use MooseX::Declare;

class Net::AWS::Caller {
  use POSIX qw(strftime);
  use Digest::SHA qw(hmac_sha256);
  use MIME::Base64 qw(encode_base64);
  use HTTP::Tiny;
  use Carp qw(croak);
  use XML::Simple qw(XMLin);

  has 'AWSAccessKey'       => ( is => 'rw', required => 1 );
  has 'AWSSecretKey'       => ( is => 'rw', required => 1 );
  has 'debug'              => ( is => 'rw', required => 0, default => sub { 0 } );
  has 'version'            => ( is => 'rw', required => 1);
  has 'region'             => ( is => 'rw', required => 1);
  has 'service'            => ( is => 'rw', required => 1);
  has 'base_url'           => ( is => 'rw', required => 1, lazy => 1,
    default     => sub {
        sprintf 'https://%s.%s.amazonaws.com', $_[0]->service, $_[0]->region;
    }
  );
  has 'ua' => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        HTTP::Tiny->new(
            'agent' => 'Net::EC2::Tiny ',
        );
    }
  );
  has '_base_url_host' => (is => 'ro', required => 1, lazy => 1,
    default => sub {
        ($_[0]->ua->_split_url($_[0]->base_url))[1]
    }
  );

  sub _timestamp { return strftime("%Y-%m-%dT%H:%M:%SZ",gmtime) }
  sub _sign {
    my $self                        = shift;
    my %args                        = @_;
    my $action                      = delete $args{Action};
    
    croak "Action must be defined!\n" if not defined $action;

    my %sign_hash                   = %args;
    my $timestamp                   = $self->_timestamp;

    $sign_hash{AWSAccessKeyId}      = $self->AWSAccessKey;
    $sign_hash{Action}              = $action;
    $sign_hash{Timestamp}           = $timestamp;
    $sign_hash{Version}             = $self->version;
    $sign_hash{SignatureVersion}    = "2";
    $sign_hash{SignatureMethod}     = "HmacSHA256";

    my $sign_this = "POST\n";
    $sign_this .= $self->_base_url_host . "\n";
    $sign_this .= "/\n";


    $sign_this .= $self->ua->www_form_urlencode(\%sign_hash);

    warn "QUERY TO SIGN: $sign_this" if $self->debug;
    my $encoded = encode_base64(hmac_sha256($sign_this, $self->AWSSecretKey), '');

    my %params = (
        Action                => $action,
        SignatureVersion      => "2",
        SignatureMethod       => "HmacSHA256",
        AWSAccessKeyId        => $self->AWSAccessKey,
        Timestamp             => $timestamp,
        Version               => $self->version,
        Signature             => $encoded,
        %args
    );

    return \%params;
  }

  sub _request {
    my $self   = shift;
    my $params = shift;

    return $self->ua->post_form( $self->base_url, $params );
  }

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


  sub send {
    my $self     = shift;
    my $request  = $self->_sign(@_);
    my $response = $self->_request($request);
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


