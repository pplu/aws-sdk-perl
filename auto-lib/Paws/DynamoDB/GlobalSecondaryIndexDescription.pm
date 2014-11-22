package Paws::DynamoDB::GlobalSecondaryIndexDescription {
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexSizeBytes => (is => 'ro', isa => 'Num');
  has IndexStatus => (is => 'ro', isa => 'Str');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'Paws::DynamoDB::Projection');
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughputDescription');
}
1;
