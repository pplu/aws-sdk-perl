
package Paws::SQS::ChangeMessageVisibilityBatchResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::SQS::BatchResultErrorEntry]', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::SQS::ChangeMessageVisibilityBatchResultEntry]', required => 1);

}
1;