
package Paws::SQS::GetQueueAttributes;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::GetQueueAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::GetQueueAttributes - Arguments for method GetQueueAttributes on Paws::SQS

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueueAttributes on the 
Amazon Simple Queue Service service. Use the attributes of this class
as arguments to method GetQueueAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueueAttributes.

As an example:

  $service_obj->GetQueueAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

A list of attributes for which to retrieve information.

Going forward, new attributes might be added. If you are writing code
that calls this action, we recommend that you structure your code so
that it can handle new attributes gracefully.

The following attributes are supported:

=over

=item *

C<All> - Returns all values.

=item *

C<ApproximateNumberOfMessages> - Returns the approximate number of
visible messages in a queue. For more information, see Resources
Required to Process Messages in the I<Amazon SQS Developer Guide>.

=item *

C<ApproximateNumberOfMessagesDelayed> - Returns the approximate number
of messages that are waiting to be added to the queue.

=item *

C<ApproximateNumberOfMessagesNotVisible> - Returns the approximate
number of messages that have not timed-out and are not deleted. For
more information, see Resources Required to Process Messages in the
I<Amazon SQS Developer Guide>.

=item *

C<CreatedTimestamp> - Returns the time when the queue was created in
seconds (epoch time).

=item *

C<DelaySeconds> - Returns the default delay on the queue in seconds.

=item *

C<LastModifiedTimestamp> - Returns the time when the queue was last
changed in seconds (epoch time).

=item *

C<MaximumMessageSize> - Returns the limit of how many bytes a message
can contain before Amazon SQS rejects it.

=item *

C<MessageRetentionPeriod> - Returns the number of seconds for which
Amazon SQS retains a message.

=item *

C<Policy> - Returns the policy of the queue.

=item *

C<QueueArn> - Returns the Amazon resource name (ARN) of the queue.

=item *

C<ReceiveMessageWaitTimeSeconds> - Returns the number of seconds for
which ReceiveMessage call will wait for a message to arrive.

=item *

C<RedrivePolicy> - Returns the parameters for dead letter queue
functionality of the source queue. For more information about the
redrive policy and dead letter queues, see Using Amazon SQS Dead Letter
Queues in the I<Amazon SQS Developer Guide>.

=item *

C<VisibilityTimeout> - Returns the visibility timeout for the queue.
For more information about the visibility timeout, see Visibility
Timeout in the I<Amazon SQS Developer Guide>.

=back

The following attributes apply only to FIFO (first-in-first-out)
queues:

=over

=item *

C<FifoQueue> - Returns whether the queue is FIFO. For more information,
see FIFO Queue Logic in the I<Amazon SQS Developer Guide>.

=item *

C<ContentBasedDeduplication> - Returns whether content-based
deduplication is enabled for the queue. For more information, see
Exactly-Once Processing in the I<Amazon SQS Developer Guide>.

=back




=head2 B<REQUIRED> QueueUrl => Str

The URL of the Amazon SQS queue to take action on.

Queue URLs are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueueAttributes in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

