package Paws::Net::RestJsonCaller {
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 

  sub _api_caller {
    my ($self, $call_class, $call_params_object, $request) = @_;

    die "Pending implementation in " . __PACKAGE__;
 
    return $request;
  }
}

1;
