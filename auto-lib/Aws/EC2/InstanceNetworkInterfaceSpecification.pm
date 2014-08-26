package Aws::EC2::InstanceNetworkInterfaceSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'associatePublicIpAddress');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has DeviceIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'deviceIndex');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'SecurityGroupId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PrivateIpAddressSpecification]', traits => ['Unwrapped'], xmlname => 'privateIpAddressesSet');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'secondaryPrivateIpAddressCount');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}
1
