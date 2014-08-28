package Aws::EC2::InstanceNetworkInterfaceSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceIndex => (is => 'ro', isa => 'Int');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PrivateIpAddressSpecification]');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');
  has SubnetId => (is => 'ro', isa => 'Str');
}
1
