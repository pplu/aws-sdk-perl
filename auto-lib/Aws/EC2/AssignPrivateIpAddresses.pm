
package Aws::EC2::AssignPrivateIpAddresses {
  use Moose;
  has AllowReassignment => (is => 'ro', isa => 'Bool');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PrivateIpAddress' );
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssignPrivateIpAddresses');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
