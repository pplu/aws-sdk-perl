package Aws::EC2::VpnConnectionOptionsSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has StaticRoutesOnly => (is => 'ro', isa => 'Bool');
}
1
