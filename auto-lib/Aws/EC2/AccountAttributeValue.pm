package Aws::EC2::AccountAttributeValue {
  use Moose;
  has AttributeValue => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attributeValue');
}
1;
