package Paws::Net::Caller::Attribute::Trait::NameInRequest {
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('NameInRequest');
  has request_name => (is => 'ro', isa => 'Str');
}

package Paws::Net::Caller {
  use Moose;
  use Carp qw(croak);

  has debug              => ( is => 'rw', required => 0, default => sub { 0 } );
  has ua => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        use HTTP::Tiny;
        HTTP::Tiny->new(
            'agent' => 'AWS Perl SDK ' . $Paws::VERSION,
        );
    }
  );

  # URI escaping adapted from URI::Escape
  #c.f. http://www.w3.org/TR/html4/interact/forms.html#h-17.13.4.1
  # perl 5.6 ready UTF-8 encoding adapted from JSON::PP
  our %escapes = map { chr($_) => sprintf("%%%02X", $_) } 0..255;
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
    $str =~ s/ /+/go;
    return $str;
  }

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = {};
    $requestObj->headers->scan(sub { $headers->{ $_[0] } = $_[1] });
    # HTTP::Tiny has made setting Host header illegal. It derives Host from URL
    delete $headers->{Host};

    #TODO: this has to be moved into the appropiate caller
    my $url = $requestObj->url;
    if ($requestObj->method eq 'GET') {
      my @param;
      for my $p (keys %{ $requestObj->parameters }) {
        push @param , join '=' , map { $self->_uri_escape($_,"^A-Za-z0-9\-_.~") } ($p, $requestObj->parameters->{$p});
      }
      $url .= '?' . (join '&', @param) if (@param);
      $requestObj->url($url);
    }

    my $response = $self->ua->request(
      $requestObj->method,
      $requestObj->url,
      {
        headers => $headers,
        (defined $requestObj->content)?(content => $requestObj->content):(),
      }
    );

    my $res = $service->handle_response($call_object, $response->{status}, $response->{content}, $response->{headers});
    if ($res->isa('Paws::Exception')) {
      $res->throw;
    } else {
      return $res;
    }
  }
}

1;
