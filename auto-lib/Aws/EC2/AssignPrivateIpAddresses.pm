
package Aws::EC2::AssignPrivateIpAddresses {
  use Moose;
  has AllowReassignment => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowReassignment' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' , required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'privateIpAddress' );
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'secondaryPrivateIpAddressCount' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssignPrivateIpAddresses');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;