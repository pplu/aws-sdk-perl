package Paws::EC2::AccountAttribute {
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attributeName');
  has AttributeValues => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AccountAttributeValue]', traits => ['Unwrapped'], xmlname => 'attributeValueSet');
}
1;
