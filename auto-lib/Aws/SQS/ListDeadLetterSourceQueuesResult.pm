
package Aws::SQS::ListDeadLetterSourceQueuesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has queueUrls => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'QueueUrl', required => 1);

}
1;