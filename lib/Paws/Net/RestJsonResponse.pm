package Paws::Net::RestJsonResponse {
  use Moose::Role;
  
  sub unserialize_response {
    my ($self, $data) = @_;

    die "Pending implementation in " . __PACKAGE__;
  }
}

1;
