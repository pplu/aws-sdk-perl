
package Paws::SQS::CreateQueue;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SQS::QueueAttributeMap', traits => ['NameInRequest'], request_name => 'Attribute' );
  has QueueName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::CreateQueueResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateQueueResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::CreateQueue - Arguments for method CreateQueue on Paws::SQS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueue on the 
Amazon Simple Queue Service service. Use the attributes of this class
as arguments to method CreateQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueue.

As an example:

  $service_obj->CreateQueue(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SQS::QueueAttributeMap>

A map of attributes with their corresponding values.

The following lists the names, descriptions, and values of the special
request parameters that the C<CreateQueue> action uses:

=over

=item *

C<DelaySeconds> - The number of seconds for which the delivery of all
messages in the queue is delayed. An integer from 0 to 900 (15
minutes). The default is 0 (zero).

=item *

C<MaximumMessageSize> - The limit of how many bytes a message can
contain before Amazon SQS rejects it. An integer from 1,024 bytes (1
KiB) up to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB).

=item *

C<MessageRetentionPeriod> - The number of seconds for which Amazon SQS
retains a message. An integer representing seconds, from 60 (1 minute)
to 120,9600 (14 days). The default is 345,600 (4 days).

=item *

C<Policy> - The queue's policy. A valid AWS policy. For more
information about policy structure, see Overview of AWS IAM Policies in
the I<Amazon IAM User Guide>.

=item *

C<ReceiveMessageWaitTimeSeconds> - The number of seconds for which a
ReceiveMessage action will wait for a message to arrive. An integer
from 0 to 20 (seconds). The default is 0.

=item *

C<RedrivePolicy> - The parameters for the dead letter queue
functionality of the source queue. For more information about the
redrive policy and dead letter queues, see Using Amazon SQS Dead Letter
Queues in the I<Amazon SQS Developer Guide>.

The dead letter queue of a FIFO queue must also be a FIFO queue.
Similarly, the dead letter queue of a standard queue must also be a
standard queue.

=item *

C<VisibilityTimeout> - The visibility timeout for the queue. An integer
from 0 to 43200 (12 hours). The default is 30. For more information
about the visibility timeout, see Visibility Timeout in the I<Amazon
SQS Developer Guide>.

=back

The following attributes apply only to FIFO (first-in-first-out)
queues:

=over

=item *

C<FifoQueue> - Designates a queue as FIFO. You can provide this
attribute only during queue creation; you can't change it for an
existing queue. When you set this attribute, you must provide a
C<MessageGroupId> explicitly.

For more information, see FIFO Queue Logic in the I<Amazon SQS
Developer Guide>.

=item *

C<ContentBasedDeduplication> - Enables content-based deduplication. For
more information, see Exactly-Once Processing in the I<Amazon SQS
Developer Guide>.

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

You can also use C<ContentBasedDeduplication> for messages with
identical content to be treated as duplicates.

=item *

If you send one message with C<ContentBasedDeduplication> enabled and
then another message with a C<MessageDeduplicationId> that is the same
as the one generated for the first C<MessageDeduplicationId>, the two
messages are treated as duplicates and only one copy of the message is
delivered.

=back

=back

Any other valid special request parameters that are specified (such as
C<ApproximateNumberOfMessages>, C<ApproximateNumberOfMessagesDelayed>,
C<ApproximateNumberOfMessagesNotVisible>, C<CreatedTimestamp>,
C<LastModifiedTimestamp>, and C<QueueArn>) will be ignored.



=head2 B<REQUIRED> QueueName => Str

The name of the new queue. The following limits apply to this name:

=over

=item *

A queue name can have up to 80 characters.

=item *

The following are accepted: alphanumeric chatacters, hyphens (C<->),
and underscores (C<_>).

=item *

A FIFO queue name must end with the C<.fifo> suffix.

=back

Queue names are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueue in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

