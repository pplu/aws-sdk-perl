package Aws::EC2::VpnConnectionOptions {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has StaticRoutesOnly => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'staticRoutesOnly');
}
1
