package Aws::EC2::PrivateIpAddressSpecification {
  use Moose;
  has Primary => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'primary');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress', required => 1);
}
1;
