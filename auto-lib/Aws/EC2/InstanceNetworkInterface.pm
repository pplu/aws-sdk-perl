package Aws::EC2::InstanceNetworkInterface {
  use Moose;
  has Association => (is => 'ro', isa => 'Aws::EC2::InstanceNetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Attachment => (is => 'ro', isa => 'Aws::EC2::InstanceNetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstancePrivateIpAddress]', traits => ['Unwrapped'], xmlname => 'privateIpAddressesSet');
  has SourceDestCheck => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1
