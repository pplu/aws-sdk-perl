package Aws::DynamoDB::TableDescription {
  use Moose;
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeDefinition]');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::GlobalSecondaryIndexDescription]');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]');
  has LocalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::LocalSecondaryIndexDescription]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughputDescription');
  has TableName => (is => 'ro', isa => 'Str');
  has TableSizeBytes => (is => 'ro', isa => 'Num');
  has TableStatus => (is => 'ro', isa => 'Str');
}
1;
