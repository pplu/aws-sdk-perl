
package Paws::SQS::ReceiveMessageResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::SQS::Message]', traits => ['Unwrapped'], xmlname => 'Message');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ReceiveMessageResult

=head1 ATTRIBUTES

=head2 Messages => ArrayRef[Paws::SQS::Message]

  

A list of messages.











=cut

