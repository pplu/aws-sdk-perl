package Aws::DynamoDB::GlobalSecondaryIndex {
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]', required => 1);
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput', required => 1);
}
1
