
package Aws::DynamoDB::BatchGetItemResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::ConsumedCapacity]');
  has Responses => (is => 'ro', isa => 'Aws::DynamoDB::BatchGetResponseMap');
  has UnprocessedKeys => (is => 'ro', isa => 'Aws::DynamoDB::BatchGetRequestMap');

}
1;
