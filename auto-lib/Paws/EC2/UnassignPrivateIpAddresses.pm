
package Paws::EC2::UnassignPrivateIpAddresses {
  use Moose;
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' , required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'privateIpAddress' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnassignPrivateIpAddresses');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;