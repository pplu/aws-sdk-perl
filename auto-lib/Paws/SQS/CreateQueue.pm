
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

Paws::SQS::CreateQueue - Arguments for method CreateQueue on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueue on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method CreateQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueue.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    # Create an SQS queue
    # The following operation creates an SQS queue named MyQueue.
    my $CreateQueueResult = $sqs->CreateQueue(
      {
        'QueueName' => 'MyQueue'
      }
    );

    # Results:
    my $QueueUrl = $CreateQueueResult->QueueUrl;

    # Returns a L<Paws::SQS::CreateQueueResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/CreateQueue>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SQS::QueueAttributeMap>

A map of attributes with their corresponding values.

The following lists the names, descriptions, and values of the special
request parameters that the C<CreateQueue> action uses:

=over

=item *

C<DelaySeconds> - The length of time, in seconds, for which the
delivery of all messages in the queue is delayed. Valid values: An
integer from 0 to 900 seconds (15 minutes). Default: 0.

=item *

C<MaximumMessageSize> - The limit of how many bytes a message can
contain before Amazon SQS rejects it. Valid values: An integer from
1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). Default: 262,144 (256
KiB).

=item *

C<MessageRetentionPeriod> - The length of time, in seconds, for which
Amazon SQS retains a message. Valid values: An integer from 60 seconds
(1 minute) to 1,209,600 seconds (14 days). Default: 345,600 (4 days).

=item *

C<Policy> - The queue's policy. A valid AWS policy. For more
information about policy structure, see Overview of AWS IAM Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html)
in the I<Amazon IAM User Guide>.

=item *

C<ReceiveMessageWaitTimeSeconds> - The length of time, in seconds, for
which a C< ReceiveMessage > action waits for a message to arrive. Valid
values: An integer from 0 to 20 (seconds). Default: 0.

=item *

C<RedrivePolicy> - The string that includes the parameters for the
dead-letter queue functionality of the source queue. For more
information about the redrive policy and dead-letter queues, see Using
Amazon SQS Dead-Letter Queues
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)
in the I<Amazon Simple Queue Service Developer Guide>.

=over

=item *

C<deadLetterTargetArn> - The Amazon Resource Name (ARN) of the
dead-letter queue to which Amazon SQS moves messages after the value of
C<maxReceiveCount> is exceeded.

=item *

C<maxReceiveCount> - The number of times a message is delivered to the
source queue before being moved to the dead-letter queue. When the
C<ReceiveCount> for a message exceeds the C<maxReceiveCount> for a
queue, Amazon SQS moves the message to the dead-letter-queue.

=back

The dead-letter queue of a FIFO queue must also be a FIFO queue.
Similarly, the dead-letter queue of a standard queue must also be a
standard queue.

=item *

C<VisibilityTimeout> - The visibility timeout for the queue, in
seconds. Valid values: An integer from 0 to 43,200 (12 hours). Default:
30. For more information about the visibility timeout, see Visibility
Timeout
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
in the I<Amazon Simple Queue Service Developer Guide>.

=back

The following attributes apply only to server-side-encryption
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html):

=over

=item *

C<KmsMasterKeyId> - The ID of an AWS-managed customer master key (CMK)
for Amazon SQS or a custom CMK. For more information, see Key Terms
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).
While the alias of the AWS-managed CMK for Amazon SQS is always
C<alias/aws/sqs>, the alias of a custom CMK can, for example, be
C<alias/I<MyAlias> >. For more examples, see KeyId
(http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters)
in the I<AWS Key Management Service API Reference>.

=item *

C<KmsDataKeyReusePeriodSeconds> - The length of time, in seconds, for
which Amazon SQS can reuse a data key
(http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys)
to encrypt or decrypt messages before calling AWS KMS again. An integer
representing seconds, between 60 seconds (1 minute) and 86,400 seconds
(24 hours). Default: 300 (5 minutes). A shorter time period provides
better security but results in more calls to KMS which might incur
charges after Free Tier. For more information, see How Does the Data
Key Reuse Period Work?
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work).

=back

The following attributes apply only to FIFO (first-in-first-out) queues
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html):

=over

=item *

C<FifoQueue> - Designates a queue as FIFO. Valid values: C<true>,
C<false>. You can provide this attribute only during queue creation.
You can't change it for an existing queue. When you set this attribute,
you must also provide the C<MessageGroupId> for your messages
explicitly.

For more information, see FIFO Queue Logic
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic)
in the I<Amazon Simple Queue Service Developer Guide>.

=item *

C<ContentBasedDeduplication> - Enables content-based deduplication.
Valid values: C<true>, C<false>. For more information, see Exactly-Once
Processing
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

=back




=head2 B<REQUIRED> QueueName => Str

The name of the new queue. The following limits apply to this name:

=over

=item *

A queue name can have up to 80 characters.

=item *

Valid values: alphanumeric characters, hyphens (C<->), and underscores
(C<_>).

=item *

A FIFO queue name must end with the C<.fifo> suffix.

=back

Queue URLs and names are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueue in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

