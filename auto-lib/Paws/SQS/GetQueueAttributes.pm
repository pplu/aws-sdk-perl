
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

A list of attributes to retrieve information for. The following
attributes are supported:

=over

=item *

C<All> - returns all values.

=item *

C<ApproximateNumberOfMessages> - returns the approximate number of
visible messages in a queue. For more information, see Resources
Required to Process Messages in the I<Amazon SQS Developer Guide>.

=item *

C<ApproximateNumberOfMessagesNotVisible> - returns the approximate
number of messages that are not timed-out and not deleted. For more
information, see Resources Required to Process Messages in the I<Amazon
SQS Developer Guide>.

=item *

C<VisibilityTimeout> - returns the visibility timeout for the queue.
For more information about visibility timeout, see Visibility Timeout
in the I<Amazon SQS Developer Guide>.

=item *

C<CreatedTimestamp> - returns the time when the queue was created
(epoch time in seconds).

=item *

C<LastModifiedTimestamp> - returns the time when the queue was last
changed (epoch time in seconds).

=item *

C<Policy> - returns the queue's policy.

=item *

C<MaximumMessageSize> - returns the limit of how many bytes a message
can contain before Amazon SQS rejects it.

=item *

C<MessageRetentionPeriod> - returns the number of seconds Amazon SQS
retains a message.

=item *

C<QueueArn> - returns the queue's Amazon resource name (ARN).

=item *

C<ApproximateNumberOfMessagesDelayed> - returns the approximate number
of messages that are pending to be added to the queue.

=item *

C<DelaySeconds> - returns the default delay on the queue in seconds.

=item *

C<ReceiveMessageWaitTimeSeconds> - returns the time for which a
ReceiveMessage call will wait for a message to arrive.

=item *

C<RedrivePolicy> - returns the parameters for dead letter queue
functionality of the source queue. For more information about
RedrivePolicy and dead letter queues, see Using Amazon SQS Dead Letter
Queues in the I<Amazon SQS Developer Guide>.

=back

Going forward, new attributes might be added. If you are writing code
that calls this action, we recommend that you structure your code so
that it can handle new attributes gracefully.



=head2 B<REQUIRED> QueueUrl => Str

The URL of the Amazon SQS queue to take action on.

Queue URLs are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueueAttributes in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

