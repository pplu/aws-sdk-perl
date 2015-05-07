package Paws::Net::RestJsonResponse {
  use Moose::Role;
  use JSON;
  use Carp qw(croak);
  
  sub unserialize_response {
    my ($self, $data) = @_;
    my $json = from_json( $data );
    if ( defined $json->{Errors} ) {
      croak "Error: $data";
    }

    return $json;
  }
}

1;
