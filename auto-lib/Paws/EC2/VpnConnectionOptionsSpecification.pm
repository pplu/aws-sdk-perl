package Paws::EC2::VpnConnectionOptionsSpecification {
  use Moose;
  has StaticRoutesOnly => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'staticRoutesOnly');
}
1;
