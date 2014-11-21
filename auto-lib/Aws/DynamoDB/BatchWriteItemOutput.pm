
package Aws::DynamoDB::BatchWriteItemOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::ConsumedCapacity]');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetricsPerTable');
  has UnprocessedItems => (is => 'ro', isa => 'Aws::DynamoDB::BatchWriteItemRequestMap');

}
1;