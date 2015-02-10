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
            'agent' => 'AWS Perl SDK 0.1',
        );
    }
  );

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = {};
    $requestObj->headers->scan(sub { $headers->{ $_[0] } = $_[1] });
    # HTTP::Tiny has made setting Host header illegal. It derives Host from URL
    delete $headers->{Host};

    my $response = $self->ua->request(
      $requestObj->method,
      $requestObj->url,
      {
        headers => $headers,
        (defined $requestObj->content)?(content => $requestObj->content):(),
      }
    );

    my $unserialized_struct;
    if ( $response->{success} ) {
        $unserialized_struct = $service->unserialize_response( $response->{content} );
    } else {
        #TODO: retry or croak based on error codes
        croak "POST Request failed: $response->{status} $response->{reason} $response->{content}\n";
    }

    return $service->response_to_object($unserialized_struct, $call_object);
  }
}

1;
