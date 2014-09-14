package Aws::DynamoDB::AttributeValueUpdate {
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Aws::DynamoDB::AttributeValue');
}
1
