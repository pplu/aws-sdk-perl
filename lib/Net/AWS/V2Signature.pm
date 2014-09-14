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

1;
