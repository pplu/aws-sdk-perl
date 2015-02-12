package Paws::Net::S3Signature {
  use Moose::Role;

  # Shamelessly lifted off of Pedro Figueriedos Net::Amazon::S3, and adapted to Paws

  use HTTP::Date;
  use MIME::Base64 qw( encode_base64 );
  use Moose::Util::TypeConstraints;
  use URI::Escape qw( uri_escape_utf8 );
  use URI::QueryParam;
  use Digest::HMAC_SHA1;
  use URI;

  my $METADATA_PREFIX      = 'x-amz-meta-';
  my $AMAZON_HEADER_PREFIX = 'x-amz-';

  sub sign {
    my ($self, $request) = @_;

    my $aws_access_key_id     = $self->access_key;
    my $aws_secret_access_key = $self->secret_key;
    my $aws_session_token     = $self->session_token;

    if ( not $request->header('Date') ) {
        $request->header( Date => time2str(time) );
    }

    if ( defined $aws_session_token ) {
        $request->header( 'x-amz-security-token' => $aws_session_token );
    }

    my $headers = {};
    $request->headers->scan(sub { $headers->{ $_[0] } = $_[1] });

    my $canonical_string
        = $self->_canonical_string( $request->method, $request->uri, $headers );
use Data::Dumper;
print Dumper($canonical_string);
    my $encoded_canonical
        = $self->_encode( $aws_secret_access_key, $canonical_string );
    $request->header(
        Authorization => "AWS $aws_access_key_id:$encoded_canonical" );
  }

# generate a canonical string for the given parameters.  expires is optional and is
# only used by query string authentication.
sub _canonical_string {
    my ( $self, $method, $path, $headers, $expires ) = @_;
    my %interesting_headers = ();
    while ( my ( $key, $value ) = each %$headers ) {
        my $lk = lc $key;
        if (   $lk eq 'content-md5'
            or $lk eq 'content-type'
            or $lk eq 'date'
            or $lk =~ /^$AMAZON_HEADER_PREFIX/ )
        {
            $interesting_headers{$lk} = $self->_trim($value);
        }
    }

    # these keys get empty strings if they don't exist
    $interesting_headers{'content-type'} ||= '';
    $interesting_headers{'content-md5'}  ||= '';

    # just in case someone used this.  it's not necessary in this lib.
    $interesting_headers{'date'} = ''
        if $interesting_headers{'x-amz-date'};

    # if you're using expires for query string auth, then it trumps date
    # (and x-amz-date)
    $interesting_headers{'date'} = $expires if $expires;

    my $buf = "$method\n";
    foreach my $key ( sort keys %interesting_headers ) {
        if ( $key =~ /^$AMAZON_HEADER_PREFIX/ ) {
            $buf .= "$key:$interesting_headers{$key}\n";
        } else {
            $buf .= "$interesting_headers{$key}\n";
        }
    }

    # don't include anything after the first ? in the resource...
    $path =~ /^([^?]*)/;
    $buf .= "/$1";

    # ...unless there any parameters we're interested in...
    if ( $path =~ /[&?](acl|torrent|location|uploads|delete)($|=|&)/ ) {
        $buf .= "?$1";
    } elsif ( my %query_params = URI->new($path)->query_form ){
        #see if the remaining parsed query string provides us with any query string or upload id
        if($query_params{partNumber} && $query_params{uploadId}){
            #re-evaluate query string, the order of the params is important for request signing, so we can't depend on URI to do the right thing
            $buf .= sprintf("?partNumber=%s&uploadId=%s", $query_params{partNumber}, $query_params{uploadId});
        }
        elsif($query_params{uploadId}){
            $buf .= sprintf("?uploadId=%s",$query_params{uploadId});
        }
    }

    return $buf;
}

# finds the hmac-sha1 hash of the canonical string and the aws secret access key and then
# base64 encodes the result (optionally urlencoding after that).
sub _encode {
    my ( $self, $aws_secret_access_key, $str, $urlencode ) = @_;
    my $hmac = Digest::HMAC_SHA1->new($aws_secret_access_key);
    $hmac->add($str);
    my $b64 = encode_base64( $hmac->digest, '' );
    if ($urlencode) {
        return $self->_urlencode($b64);
    } else {
        return $b64;
    }
}

# EU buckets must be accessed via their DNS name. This routine figures out if
# a given bucket name can be safely used as a DNS name.
sub _is_dns_bucket {
    my $bucketname = $_[0];

    if ( length $bucketname > 63 ) {
        return 0;
    }
    if ( length $bucketname < 3 ) {
        return;
    }
    return 0 unless $bucketname =~ m{^[a-z0-9][a-z0-9.-]+$};
    my @components = split /\./, $bucketname;
    for my $c (@components) {
        return 0 if $c =~ m{^-};
        return 0 if $c =~ m{-$};
        return 0 if $c eq '';
    }
    return 1;
}

# generates an HTTP::Headers objects given one hash that represents http
# headers to set and another hash that represents an object's metadata.
sub _merge_meta {
    my ( $self, $headers, $metadata ) = @_;
    $headers  ||= {};
    $metadata ||= {};

    my $http_header = HTTP::Headers->new;
    while ( my ( $k, $v ) = each %$headers ) {
        $http_header->header( $k => $v );
    }
    while ( my ( $k, $v ) = each %$metadata ) {
        $http_header->header( "$METADATA_PREFIX$k" => $v );
    }

    return $http_header;
}

sub _trim {
    my ( $self, $value ) = @_;
    $value =~ s/^\s+//;
    $value =~ s/\s+$//;
    return $value;
}

sub _urlencode {
    my ( $self, $unencoded ) = @_;
    return uri_escape_utf8( $unencoded, '^A-Za-z0-9_-' );
}

}

1;
