package Paws::Net::RestJsonCaller {
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 
  use Module::Runtime qw//;

  sub new_with_coercions {
    die "Pending implementation in " . __PACKAGE__;

  }

  sub _api_caller {
    my ($self, $call_class, $call_params_object, $request) = @_;

    die "Pending implementation in " . __PACKAGE__;
 
    return $request;
  }
}

1;
