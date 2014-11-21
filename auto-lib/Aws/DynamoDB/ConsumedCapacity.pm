package Aws::DynamoDB::ConsumedCapacity {
  use Moose;
  has CapacityUnits => (is => 'ro', isa => 'Num');
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'Aws::DynamoDB::SecondaryIndexesCapacityMap');
  has LocalSecondaryIndexes => (is => 'ro', isa => 'Aws::DynamoDB::SecondaryIndexesCapacityMap');
  has Table => (is => 'ro', isa => 'Aws::DynamoDB::Capacity');
  has TableName => (is => 'ro', isa => 'Str');
}
1;
