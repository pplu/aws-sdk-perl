
package Paws::SQS::SendMessageResult;
  use Moose;
  has MD5OfMessageAttributes => (is => 'ro', isa => 'Str');
  has MD5OfMessageBody => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');
  has SequenceNumber => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::SendMessageResult

=head1 ATTRIBUTES


=head2 MD5OfMessageAttributes => Str

An MD5 digest of the non-URL-encoded message attribute string. This can
be used to verify that Amazon SQS received the message correctly.
Amazon SQS first URL decodes the message before creating the MD5
digest. For information about MD5, see RFC1321.


=head2 MD5OfMessageBody => Str

An MD5 digest of the non-URL-encoded message body string. This can be
used to verify that Amazon SQS received the message correctly. Amazon
SQS first URL decodes the message before creating the MD5 digest. For
information about MD5, see RFC1321.


=head2 MessageId => Str

An element containing the message ID of the message sent to the queue.
For more information, see Queue and Message Identifiers in the I<Amazon
SQS Developer Guide>.


=head2 SequenceNumber => Str

I<This element applies only to FIFO (first-in-first-out) queues.>

A large, non-consecutive number that Amazon SQS assigns to each
message.

The length of C<SequenceNumber> is 128 bits. C<SequenceNumber>
continues to increase for a particular C<MessageGroupId>.


=head2 _request_id => Str


=cut

