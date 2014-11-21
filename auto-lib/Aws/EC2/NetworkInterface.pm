package Aws::EC2::NetworkInterface {
  use Moose;
  has Association => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Attachment => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has MacAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'macAddress');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkInterfacePrivateIpAddress]', traits => ['Unwrapped'], xmlname => 'privateIpAddressesSet');
  has RequesterId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterId');
  has RequesterManaged => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'requesterManaged');
  has SourceDestCheck => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has TagSet => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1;
