
package Aws::SQS::ListQueuesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has QueueUrls => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;