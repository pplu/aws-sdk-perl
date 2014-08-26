package Aws::EC2::AttributeBooleanValue {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Value => (is => 'ro', isa => 'Bool');
}
1
