package Aws::DynamoDB::LocalSecondaryIndexDescription {
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexSizeBytes => (is => 'ro', isa => 'Num');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection');
}
1
