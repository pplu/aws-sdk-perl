package Aws::EC2::AttributeValue {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Value => (is => 'ro', isa => 'Str');
}
1
