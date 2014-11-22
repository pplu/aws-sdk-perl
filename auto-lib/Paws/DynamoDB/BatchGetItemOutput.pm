
package Paws::DynamoDB::BatchGetItemOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ConsumedCapacity]');
  has Responses => (is => 'ro', isa => 'Paws::DynamoDB::BatchGetResponseMap');
  has UnprocessedKeys => (is => 'ro', isa => 'Paws::DynamoDB::BatchGetRequestMap');

}
1;