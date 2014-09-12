package Aws::EC2::Address {
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');
  has Domain => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'domain');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has NetworkInterfaceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceOwnerId');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}
1
