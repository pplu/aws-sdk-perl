
package Paws::DynamoDB::BatchWriteItemOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ConsumedCapacity]');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Paws::DynamoDB::ItemCollectionMetricsPerTable');
  has UnprocessedItems => (is => 'ro', isa => 'Paws::DynamoDB::BatchWriteItemRequestMap');

}
1;