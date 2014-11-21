
package Aws::SQS::SendMessageBatchResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Failed => (is => 'ro', isa => 'ArrayRef[Aws::SQS::BatchResultErrorEntry]', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Aws::SQS::SendMessageBatchResultEntry]', required => 1);

}
1;