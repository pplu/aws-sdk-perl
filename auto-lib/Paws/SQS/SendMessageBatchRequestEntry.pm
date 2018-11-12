package Paws::SQS::SendMessageBatchRequestEntry;
  use Moose;
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MessageAttributes => (is => 'ro', isa => 'Paws::SQS::MessageBodyAttributeMap', request_name => 'MessageAttribute', traits => ['NameInRequest']);
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
  has MessageDeduplicationId => (is => 'ro', isa => 'Str');
  has MessageGroupId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::SendMessageBatchRequestEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::SendMessageBatchRequestEntry object:

  $service_obj->Method(Att1 => { DelaySeconds => $value, ..., MessageGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::SendMessageBatchRequestEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->DelaySeconds

=head1 DESCRIPTION

Contains the details of a single Amazon SQS message along with an
C<Id>.

=head1 ATTRIBUTES


=head2 DelaySeconds => Int

  The length of time, in seconds, for which a specific message is
delayed. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a
positive C<DelaySeconds> value become available for processing after
the delay period is finished. If you don't specify a value, the default
value for the queue is applied.

When you set C<FifoQueue>, you can't set C<DelaySeconds> per message.
You can set this parameter only on a queue level.


=head2 B<REQUIRED> Id => Str

  An identifier for a message in this batch used to communicate the
result.

The C<Id>s of a batch request need to be unique within a request

This identifier can have up to 80 characters. The following characters
are accepted: alphanumeric characters, hyphens(-), and underscores (_).


=head2 MessageAttributes => L<Paws::SQS::MessageBodyAttributeMap>

  Each message attribute consists of a C<Name>, C<Type>, and C<Value>.
For more information, see Amazon SQS Message Attributes
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html)
in the I<Amazon Simple Queue Service Developer Guide>.


=head2 B<REQUIRED> MessageBody => Str

  The body of the message.


=head2 MessageDeduplicationId => Str

  This parameter applies only to FIFO (first-in-first-out) queues.

The token used for deduplication of messages within a 5-minute minimum
deduplication interval. If a message with a particular
C<MessageDeduplicationId> is sent successfully, subsequent messages
with the same C<MessageDeduplicationId> are accepted successfully but
aren't delivered. For more information, see Exactly-Once Processing
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing)
in the I<Amazon Simple Queue Service Developer Guide>.

=over

=item *

Every message must have a unique C<MessageDeduplicationId>,

=over

=item *

You may provide a C<MessageDeduplicationId> explicitly.

=item *

If you aren't able to provide a C<MessageDeduplicationId> and you
enable C<ContentBasedDeduplication> for your queue, Amazon SQS uses a
SHA-256 hash to generate the C<MessageDeduplicationId> using the body
of the message (but not the attributes of the message).

=item *

If you don't provide a C<MessageDeduplicationId> and the queue doesn't
have C<ContentBasedDeduplication> set, the action fails with an error.

=item *

If the queue has C<ContentBasedDeduplication> set, your
C<MessageDeduplicationId> overrides the generated one.

=back

=item *

When C<ContentBasedDeduplication> is in effect, messages with identical
content sent within the deduplication interval are treated as
duplicates and only one copy of the message is delivered.

=item *

If you send one message with C<ContentBasedDeduplication> enabled and
then another message with a C<MessageDeduplicationId> that is the same
as the one generated for the first C<MessageDeduplicationId>, the two
messages are treated as duplicates and only one copy of the message is
delivered.

=back

The C<MessageDeduplicationId> is available to the consumer of the
message (this can be useful for troubleshooting delivery issues).

If a message is sent successfully but the acknowledgement is lost and
the message is resent with the same C<MessageDeduplicationId> after the
deduplication interval, Amazon SQS can't detect duplicate messages.

Amazon SQS continues to keep track of the message deduplication ID even
after the message is received and deleted.

The length of C<MessageDeduplicationId> is 128 characters.
C<MessageDeduplicationId> can contain alphanumeric characters (C<a-z>,
C<A-Z>, C<0-9>) and punctuation
(C<!"#$%&'()*+,-./:;E<lt>=E<gt>?@[\]^_`{|}~>).

For best practices of using C<MessageDeduplicationId>, see Using the
MessageDeduplicationId Property
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html)
in the I<Amazon Simple Queue Service Developer Guide>.


=head2 MessageGroupId => Str

  This parameter applies only to FIFO (first-in-first-out) queues.

The tag that specifies that a message belongs to a specific message
group. Messages that belong to the same message group are processed in
a FIFO manner (however, messages in different message groups might be
processed out of order). To interleave multiple ordered streams within
a single queue, use C<MessageGroupId> values (for example, session data
for multiple users). In this scenario, multiple consumers can process
the queue, but the session data of each user is processed in a FIFO
fashion.

=over

=item *

You must associate a non-empty C<MessageGroupId> with a message. If you
don't provide a C<MessageGroupId>, the action fails.

=item *

C<ReceiveMessage> might return messages with multiple C<MessageGroupId>
values. For each C<MessageGroupId>, the messages are sorted by time
sent. The caller can't specify a C<MessageGroupId>.

=back

The length of C<MessageGroupId> is 128 characters. Valid values:
alphanumeric characters and punctuation
C<(!"#$%&'()*+,-./:;E<lt>=E<gt>?@[\]^_`{|}~)>.

For best practices of using C<MessageGroupId>, see Using the
MessageGroupId Property
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html)
in the I<Amazon Simple Queue Service Developer Guide>.

C<MessageGroupId> is required for FIFO queues. You can't use it for
Standard queues.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

