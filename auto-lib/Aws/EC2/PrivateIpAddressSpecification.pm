package Aws::EC2::PrivateIpAddressSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Primary => (is => 'ro', isa => 'Bool');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', required => 1);
}
1
