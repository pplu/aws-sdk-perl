
package Paws::SQS::SendMessageBatchResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::SQS::BatchResultErrorEntry]', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::SQS::SendMessageBatchResultEntry]', required => 1);

}
1;