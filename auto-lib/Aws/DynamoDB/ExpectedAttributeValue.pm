package Aws::DynamoDB::ExpectedAttributeValue {
  use Moose;
  has AttributeValueList => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeValue]');
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has Exists => (is => 'ro', isa => 'Bool');
  has Value => (is => 'ro', isa => 'Aws::DynamoDB::AttributeValue');
}
1
