package Aws::EC2::DhcpConfiguration {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Key => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]');
}
1
