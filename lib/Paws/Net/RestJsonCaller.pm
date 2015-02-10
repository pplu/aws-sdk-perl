package Paws::Net::RestJsonCaller {
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request = Paws::Net::APIRequest->new();

    die "Pending implementation in " . __PACKAGE__;
 
    return $request;
  }
}

1;
