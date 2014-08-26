package Aws::EC2::DhcpConfiguration {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'valueSet');
}
1
