
package Aws::SQS::ListDeadLetterSourceQueuesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has queueUrls => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
1;