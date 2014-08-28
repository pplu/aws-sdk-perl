
package Aws::SQS::ChangeMessageVisibilityBatchResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Failed => (is => 'ro', isa => 'ArrayRef[Aws::SQS::BatchResultErrorEntry]', traits => ['Unwrapped'], xmlname => 'BatchResultErrorEntry', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Aws::SQS::ChangeMessageVisibilityBatchResultEntry]', traits => ['Unwrapped'], xmlname => 'ChangeMessageVisibilityBatchResultEntry', required => 1);

}
1;