package Aws::EC2::AccountAttributeValue {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AttributeValue => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attributeValue');
}
1
