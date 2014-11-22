
package Paws::SQS::ReceiveMessageResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::SQS::Message]');

}
1;