package Aws::DynamoDB::ItemCollectionMetrics {
  use Moose;
  has ItemCollectionKey => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionKeyAttributeMap');
  has SizeEstimateRangeGB => (is => 'ro', isa => 'ArrayRef[Num]');
}
1
