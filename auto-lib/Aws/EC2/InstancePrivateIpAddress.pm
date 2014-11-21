package Aws::EC2::InstancePrivateIpAddress {
  use Moose;
  has Association => (is => 'ro', isa => 'Aws::EC2::InstanceNetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Primary => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'primary');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
}
1;
