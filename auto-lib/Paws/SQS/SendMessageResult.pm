
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

An MD5 digest of the non-URL-encoded message attribute string. You can
use this attribute to verify that Amazon SQS received the message
correctly. Amazon SQS URL-decodes the message before creating the MD5
digest. For information about MD5, see RFC1321
(https://www.ietf.org/rfc/rfc1321.txt).


=head2 MD5OfMessageBody => Str

An MD5 digest of the non-URL-encoded message attribute string. You can
use this attribute to verify that Amazon SQS received the message
correctly. Amazon SQS URL-decodes the message before creating the MD5
digest. For information about MD5, see RFC1321
(https://www.ietf.org/rfc/rfc1321.txt).


=head2 MessageId => Str

An attribute containing the C<MessageId> of the message sent to the
queue. For more information, see Queue and Message Identifiers
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html)
in the I<Amazon Simple Queue Service Developer Guide>.


=head2 SequenceNumber => Str

This parameter applies only to FIFO (first-in-first-out) queues.

The large, non-consecutive number that Amazon SQS assigns to each
message.

The length of C<SequenceNumber> is 128 bits. C<SequenceNumber>
continues to increase for a particular C<MessageGroupId>.


=head2 _request_id => Str


=cut

