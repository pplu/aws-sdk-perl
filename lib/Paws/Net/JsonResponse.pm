package Paws::Net::JsonResponse {
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

1;
