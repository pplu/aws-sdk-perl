
package Paws::SQS::ListQueuesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has QueueUrls => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;