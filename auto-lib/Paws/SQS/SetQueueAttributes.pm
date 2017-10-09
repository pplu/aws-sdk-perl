
package Paws::SQS::SetQueueAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SQS::QueueAttributeMap', traits => ['NameInRequest'], request_name => 'Attribute' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetQueueAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::SetQueueAttributes - Arguments for method SetQueueAttributes on Paws::SQS

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetQueueAttributes on the 
Amazon Simple Queue Service service. Use the attributes of this class
as arguments to method SetQueueAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetQueueAttributes.

As an example:

  $service_obj->SetQueueAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::SQS::QueueAttributeMap>

A map of attributes to set.

The following lists the names, descriptions, and values of the special
request parameters that the C<SetQueueAttributes> action uses:

=over

=item *

C<DelaySeconds> - The length of time, in seconds, for which the
delivery of all messages in the queue is delayed. Valid values: An
integer from 0 to 900 (15 minutes). The default is 0 (zero).

=item *

C<MaximumMessageSize> - The limit of how many bytes a message can
contain before Amazon SQS rejects it. Valid values: An integer from
1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). The default is
262,144 (256 KiB).

=item *

C<MessageRetentionPeriod> - The length of time, in seconds, for which
Amazon SQS retains a message. Valid values: An integer representing
seconds, from 60 (1 minute) to 1,209,600 (14 days). The default is
345,600 (4 days).

=item *

C<Policy> - The queue's policy. A valid AWS policy. For more
information about policy structure, see Overview of AWS IAM Policies in
the I<Amazon IAM User Guide>.

=item *

C<ReceiveMessageWaitTimeSeconds> - The length of time, in seconds, for
which a C< ReceiveMessage > action waits for a message to arrive. Valid
values: an integer from 0 to 20 (seconds). The default is 0.

=item *

C<RedrivePolicy> - The string that includes the parameters for the
dead-letter queue functionality of the source queue. For more
information about the redrive policy and dead-letter queues, see Using
Amazon SQS Dead-Letter Queues in the I<Amazon SQS Developer Guide>.

=over

=item *

C<deadLetterTargetArn> - The Amazon Resource Name (ARN) of the
dead-letter queue to which Amazon SQS moves messages after the value of
C<maxReceiveCount> is exceeded.

=item *

C<maxReceiveCount> - The number of times a message is delivered to the
source queue before being moved to the dead-letter queue.

=back

The dead-letter queue of a FIFO queue must also be a FIFO queue.
Similarly, the dead-letter queue of a standard queue must also be a
standard queue.

=item *

C<VisibilityTimeout> - The visibility timeout for the queue. Valid
values: an integer from 0 to 43,200 (12 hours). The default is 30. For
more information about the visibility timeout, see Visibility Timeout
in the I<Amazon SQS Developer Guide>.

=back

The following attributes apply only to server-side-encryption:

=over

=item *

C<KmsMasterKeyId> - The ID of an AWS-managed customer master key (CMK)
for Amazon SQS or a custom CMK. For more information, see Key Terms.
While the alias of the AWS-managed CMK for Amazon SQS is always
C<alias/aws/sqs>, the alias of a custom CMK can, for example, be
C<alias/I<MyAlias> >. For more examples, see KeyId in the I<AWS Key
Management Service API Reference>.

=item *

C<KmsDataKeyReusePeriodSeconds> - The length of time, in seconds, for
which Amazon SQS can reuse a data key to encrypt or decrypt messages
before calling AWS KMS again. An integer representing seconds, between
60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300
(5 minutes). A shorter time period provides better security but results
in more calls to KMS which might incur charges after Free Tier. For
more information, see How Does the Data Key Reuse Period Work?.

=back

The following attribute applies only to FIFO (first-in-first-out)
queues:

=over

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

If you send one message with C<ContentBasedDeduplication> enabled and
then another message with a C<MessageDeduplicationId> that is the same
as the one generated for the first C<MessageDeduplicationId>, the two
messages are treated as duplicates and only one copy of the message is
delivered.

=back

=back

Any other valid special request parameters (such as the following) are
ignored:

=over

=item *

C<ApproximateNumberOfMessages>

=item *

C<ApproximateNumberOfMessagesDelayed>

=item *

C<ApproximateNumberOfMessagesNotVisible>

=item *

C<CreatedTimestamp>

=item *

C<LastModifiedTimestamp>

=item *

C<QueueArn>

=back




=head2 B<REQUIRED> QueueUrl => Str

The URL of the Amazon SQS queue whose attributes are set.

Queue URLs are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetQueueAttributes in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

