package Aws::EC2::InstanceNetworkInterfaceAssociation {
  use Moose;
  has IpOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipOwnerId');
  has PublicDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicDnsName');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}
1
