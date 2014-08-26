package Aws::EC2::Tag {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}
1
