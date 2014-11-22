
package Paws::SQS::GetQueueUrlResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has QueueUrl => (is => 'ro', isa => 'Str');

}
1;