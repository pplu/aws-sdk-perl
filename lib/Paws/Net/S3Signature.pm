package Paws::Net::S3Signature {
  use Moose::Role;

  sub sign {
    my ($self, $request) = @_;
    die "Unimplemented"
  }
}

1;
