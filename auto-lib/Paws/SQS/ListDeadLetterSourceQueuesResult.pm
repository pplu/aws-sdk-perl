
package Paws::SQS::ListDeadLetterSourceQueuesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has queueUrls => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
1;