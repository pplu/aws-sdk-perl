
package Aws::EC2::AssociateAddress {
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str');
  has AllowReassociation => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowReassociation' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' );
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'privateIpAddress' );
  has PublicIp => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::AssociateAddressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;