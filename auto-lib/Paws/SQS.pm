
use Paws::API;


package Paws::SQS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'sqs');
  has version => (is => 'ro', isa => 'Str', default => '2012-11-05');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub AddPermission {
    my $self = shift;
    return $self->do_call('Paws::SQS::AddPermission', @_);
  }
  sub ChangeMessageVisibility {
    my $self = shift;
    return $self->do_call('Paws::SQS::ChangeMessageVisibility', @_);
  }
  sub ChangeMessageVisibilityBatch {
    my $self = shift;
    return $self->do_call('Paws::SQS::ChangeMessageVisibilityBatch', @_);
  }
  sub CreateQueue {
    my $self = shift;
    return $self->do_call('Paws::SQS::CreateQueue', @_);
  }
  sub DeleteMessage {
    my $self = shift;
    return $self->do_call('Paws::SQS::DeleteMessage', @_);
  }
  sub DeleteMessageBatch {
    my $self = shift;
    return $self->do_call('Paws::SQS::DeleteMessageBatch', @_);
  }
  sub DeleteQueue {
    my $self = shift;
    return $self->do_call('Paws::SQS::DeleteQueue', @_);
  }
  sub GetQueueAttributes {
    my $self = shift;
    return $self->do_call('Paws::SQS::GetQueueAttributes', @_);
  }
  sub GetQueueUrl {
    my $self = shift;
    return $self->do_call('Paws::SQS::GetQueueUrl', @_);
  }
  sub ListDeadLetterSourceQueues {
    my $self = shift;
    return $self->do_call('Paws::SQS::ListDeadLetterSourceQueues', @_);
  }
  sub ListQueues {
    my $self = shift;
    return $self->do_call('Paws::SQS::ListQueues', @_);
  }
  sub ReceiveMessage {
    my $self = shift;
    return $self->do_call('Paws::SQS::ReceiveMessage', @_);
  }
  sub RemovePermission {
    my $self = shift;
    return $self->do_call('Paws::SQS::RemovePermission', @_);
  }
  sub SendMessage {
    my $self = shift;
    return $self->do_call('Paws::SQS::SendMessage', @_);
  }
  sub SendMessageBatch {
    my $self = shift;
    return $self->do_call('Paws::SQS::SendMessageBatch', @_);
  }
  sub SetQueueAttributes {
    my $self = shift;
    return $self->do_call('Paws::SQS::SetQueueAttributes', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS - Perl Interface to AWS Amazon Simple Queue Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Welcome to the I<Amazon Simple Queue Service API Reference>. This
section describes who should read this guide, how the guide is
organized, and other resources related to the Amazon Simple Queue
Service (Amazon SQS).

Amazon SQS offers reliable and scalable hosted queues for storing
messages as they travel between computers. By using Amazon SQS, you can
move data between distributed components of your applications that
perform different tasks without losing messages or requiring each
component to be always available.

Helpful Links:

=over

=item * Current WSDL (2012-11-05)

=item * Making API Requests

=item * Amazon SQS product page

=item * Using Amazon SQS Dead Letter Queues

=item * Regions and Endpoints

=back

We also provide SDKs that enable you to access Amazon SQS from your
preferred programming language. The SDKs contain functionality that
automatically takes care of tasks such as:

=over

=item * Cryptographically signing your service requests

=item * Retrying requests

=item * Handling error responses

=back

For a list of available SDKs, go to Tools for Amazon Web Services.










=head1 METHODS

=head2 AddPermission()

  Arguments described in: L<Paws::SQS::AddPermission>

  Returns: nothing

  

Adds a permission to a queue for a specific principal. This allows for
sharing access to the queue.

When you create a queue, you have full control access rights for the
queue. Only you (as owner of the queue) can grant or deny permissions
to the queue. For more information about these permissions, see Shared
Queues in the I<Amazon SQS Developer Guide>.

C<&Attribute.1=this>

C<&Attribute.2=that>











=head2 ChangeMessageVisibility()

  Arguments described in: L<Paws::SQS::ChangeMessageVisibility>

  Returns: nothing

  

Changes the visibility timeout of a specified message in a queue to a
new value. The maximum allowed timeout value you can set the value to
is 12 hours. This means you can't extend the timeout of a message in an
existing queue to more than a total visibility timeout of 12 hours.
(For more information visibility timeout, see Visibility Timeout in the
I<Amazon SQS Developer Guide>.)

For example, let's say you have a message and its default message
visibility timeout is 30 minutes. You could call
C<ChangeMessageVisiblity> with a value of two hours and the effective
timeout would be two hours and 30 minutes. When that time comes near
you could again extend the time out by calling ChangeMessageVisiblity,
but this time the maximum allowed timeout would be 9 hours and 30
minutes.

If you attempt to set the C<VisibilityTimeout> to an amount more than
the maximum time left, Amazon SQS returns an error. It will not
automatically recalculate and increase the timeout to the maximum time
remaining. Unlike with a queue, when you change the visibility timeout
for a specific message, that timeout value is applied immediately but
is not saved in memory for that message. If you don't delete a message
after it is received, the visibility timeout for the message the next
time it is received reverts to the original timeout value, not the
value you set with the C<ChangeMessageVisibility> action.











=head2 ChangeMessageVisibilityBatch()

  Arguments described in: L<Paws::SQS::ChangeMessageVisibilityBatch>

  Returns: L<Paws::SQS::ChangeMessageVisibilityBatchResult>

  

Changes the visibility timeout of multiple messages. This is a batch
version of ChangeMessageVisibility. The result of the action on each
message is reported individually in the response. You can send up to 10
ChangeMessageVisibility requests with each
C<ChangeMessageVisibilityBatch> action.

Because the batch request can result in a combination of successful and
unsuccessful actions, you should check for batch errors even when the
call returns an HTTP status code of 200.

C<&Attribute.1=this>

C<&Attribute.2=that>











=head2 CreateQueue()

  Arguments described in: L<Paws::SQS::CreateQueue>

  Returns: L<Paws::SQS::CreateQueueResult>

  

Creates a new queue, or returns the URL of an existing one. When you
request C<CreateQueue>, you provide a name for the queue. To
successfully create a new queue, you must provide a name that is unique
within the scope of your own queues.

You may pass one or more attributes in the request. If you do not
provide a value for any attribute, the queue will have the default
value for that attribute. Permitted attributes are the same that can be
set using SetQueueAttributes.

If you provide the name of an existing queue, along with the exact
names and values of all the queue's attributes, C<CreateQueue> returns
the queue URL for the existing queue. If the queue name, attribute
names, or attribute values do not match an existing queue,
C<CreateQueue> returns an error.

C<&Attribute.1=this>

C<&Attribute.2=that>











=head2 DeleteMessage()

  Arguments described in: L<Paws::SQS::DeleteMessage>

  Returns: nothing

  

Deletes the specified message from the specified queue. You specify the
message by using the message's C<receipt handle> and not the C<message
ID> you received when you sent the message. Even if the message is
locked by another reader due to the visibility timeout setting, it is
still deleted from the queue. If you leave a message in the queue for
longer than the queue's configured retention period, Amazon SQS
automatically deletes it.

It is possible you will receive a message even after you have deleted
it. This might happen on rare occasions if one of the servers storing a
copy of the message is unavailable when you request to delete the
message. The copy remains on the server and might be returned to you
again on a subsequent receive request. You should create your system to
be idempotent so that receiving a particular message more than once is
not a problem.











=head2 DeleteMessageBatch()

  Arguments described in: L<Paws::SQS::DeleteMessageBatch>

  Returns: L<Paws::SQS::DeleteMessageBatchResult>

  

Deletes multiple messages. This is a batch version of DeleteMessage.
The result of the delete action on each message is reported
individually in the response.

Because the batch request can result in a combination of successful and
unsuccessful actions, you should check for batch errors even when the
call returns an HTTP status code of 200.

C<&Attribute.1=this>

C<&Attribute.2=that>











=head2 DeleteQueue()

  Arguments described in: L<Paws::SQS::DeleteQueue>

  Returns: nothing

  

Deletes the queue specified by the B<queue URL>, regardless of whether
the queue is empty. If the specified queue does not exist, Amazon SQS
returns a successful response.

Use C<DeleteQueue> with care; once you delete your queue, any messages
in the queue are no longer available.

When you delete a queue, the deletion process takes up to 60 seconds.
Requests you send involving that queue during the 60 seconds might
succeed. For example, a SendMessage request might succeed, but after
the 60 seconds, the queue and that message you sent no longer exist.
Also, when you delete a queue, you must wait at least 60 seconds before
creating a queue with the same name.

We reserve the right to delete queues that have had no activity for
more than 30 days. For more information, see How Amazon SQS Queues Work
in the I<Amazon SQS Developer Guide>.











=head2 GetQueueAttributes()

  Arguments described in: L<Paws::SQS::GetQueueAttributes>

  Returns: L<Paws::SQS::GetQueueAttributesResult>

  

Gets attributes for the specified queue. The following attributes are
supported:

=over

=item * C<All> - returns all values.

=item * C<ApproximateNumberOfMessages> - returns the approximate number
of visible messages in a queue. For more information, see Resources
Required to Process Messages in the I<Amazon SQS Developer Guide>.

=item * C<ApproximateNumberOfMessagesNotVisible> - returns the
approximate number of messages that are not timed-out and not deleted.
For more information, see Resources Required to Process Messages in the
I<Amazon SQS Developer Guide>.

=item * C<VisibilityTimeout> - returns the visibility timeout for the
queue. For more information about visibility timeout, see Visibility
Timeout in the I<Amazon SQS Developer Guide>.

=item * C<CreatedTimestamp> - returns the time when the queue was
created (epoch time in seconds).

=item * C<LastModifiedTimestamp> - returns the time when the queue was
last changed (epoch time in seconds).

=item * C<Policy> - returns the queue's policy.

=item * C<MaximumMessageSize> - returns the limit of how many bytes a
message can contain before Amazon SQS rejects it.

=item * C<MessageRetentionPeriod> - returns the number of seconds
Amazon SQS retains a message.

=item * C<QueueArn> - returns the queue's Amazon resource name (ARN).

=item * C<ApproximateNumberOfMessagesDelayed> - returns the approximate
number of messages that are pending to be added to the queue.

=item * C<DelaySeconds> - returns the default delay on the queue in
seconds.

=item * C<ReceiveMessageWaitTimeSeconds> - returns the time for which a
ReceiveMessage call will wait for a message to arrive.

=item * C<RedrivePolicy> - returns the parameters for dead letter queue
functionality of the source queue. For more information about
RedrivePolicy and dead letter queues, see Using Amazon SQS Dead Letter
Queues in the I<Amazon SQS Developer Guide>.

=back

C<&Attribute.1=this>

C<&Attribute.2=that>











=head2 GetQueueUrl()

  Arguments described in: L<Paws::SQS::GetQueueUrl>

  Returns: L<Paws::SQS::GetQueueUrlResult>

  

Returns the URL of an existing queue. This action provides a simple way
to retrieve the URL of an Amazon SQS queue.

To access a queue that belongs to another AWS account, use the
C<QueueOwnerAWSAccountId> parameter to specify the account ID of the
queue's owner. The queue's owner must grant you permission to access
the queue. For more information about shared queue access, see
AddPermission or go to Shared Queues in the I<Amazon SQS Developer
Guide>.











=head2 ListDeadLetterSourceQueues()

  Arguments described in: L<Paws::SQS::ListDeadLetterSourceQueues>

  Returns: L<Paws::SQS::ListDeadLetterSourceQueuesResult>

  

Returns a list of your queues that have the RedrivePolicy queue
attribute configured with a dead letter queue.

For more information about using dead letter queues, see Using Amazon
SQS Dead Letter Queues.











=head2 ListQueues()

  Arguments described in: L<Paws::SQS::ListQueues>

  Returns: L<Paws::SQS::ListQueuesResult>

  

Returns a list of your queues. The maximum number of queues that can be
returned is 1000. If you specify a value for the optional
C<QueueNamePrefix> parameter, only queues with a name beginning with
the specified value are returned.











=head2 ReceiveMessage()

  Arguments described in: L<Paws::SQS::ReceiveMessage>

  Returns: L<Paws::SQS::ReceiveMessageResult>

  

Retrieves one or more messages, with a maximum limit of 10 messages,
from the specified queue. Long poll support is enabled by using the
C<WaitTimeSeconds> parameter. For more information, see Amazon SQS Long
Poll in the I<Amazon SQS Developer Guide>.

Short poll is the default behavior where a weighted random set of
machines is sampled on a C<ReceiveMessage> call. This means only the
messages on the sampled machines are returned. If the number of
messages in the queue is small (less than 1000), it is likely you will
get fewer messages than you requested per C<ReceiveMessage> call. If
the number of messages in the queue is extremely small, you might not
receive any messages in a particular C<ReceiveMessage> response; in
which case you should repeat the request.

For each message returned, the response includes the following:

=over

=item *

Message body

=item *

MD5 digest of the message body. For information about MD5, go to
http://www.faqs.org/rfcs/rfc1321.html.

=item *

Message ID you received when you sent the message to the queue.

=item *

Receipt handle.

=item *

Message attributes.

=item *

MD5 digest of the message attributes.

=back

The receipt handle is the identifier you must provide when deleting the
message. For more information, see Queue and Message Identifiers in the
I<Amazon SQS Developer Guide>.

You can provide the C<VisibilityTimeout> parameter in your request,
which will be applied to the messages that Amazon SQS returns in the
response. If you do not include the parameter, the overall visibility
timeout for the queue is used for the returned messages. For more
information, see Visibility Timeout in the I<Amazon SQS Developer
Guide>.











=head2 RemovePermission()

  Arguments described in: L<Paws::SQS::RemovePermission>

  Returns: nothing

  

Revokes any permissions in the queue policy that matches the specified
C<Label> parameter. Only the owner of the queue can remove permissions.











=head2 SendMessage()

  Arguments described in: L<Paws::SQS::SendMessage>

  Returns: L<Paws::SQS::SendMessageResult>

  

Delivers a message to the specified queue. With Amazon SQS, you now
have the ability to send large payload messages that are up to 256KB
(262,144 bytes) in size. To send large payloads, you must use an AWS
SDK that supports SigV4 signing. To verify whether SigV4 is supported
for an AWS SDK, check the SDK release notes.

The following list shows the characters (in Unicode) allowed in your
message, according to the W3C XML specification. For more information,
go to http://www.w3.org/TR/REC-xml/
not included in the list, your request will be rejected.














=head2 SendMessageBatch()

  Arguments described in: L<Paws::SQS::SendMessageBatch>

  Returns: L<Paws::SQS::SendMessageBatchResult>

  

Delivers up to ten messages to the specified queue. This is a batch
version of SendMessage. The result of the send action on each message
is reported individually in the response. The maximum allowed
individual message size is 256 KB (262,144 bytes).

The maximum total payload size (i.e., the sum of all a batch's
individual message lengths) is also 256 KB (262,144 bytes).

If the C<DelaySeconds> parameter is not specified for an entry, the
default for the queue is used.

The following list shows the characters (in Unicode) that are allowed
in your message, according to the W3C XML specification. For more
information, go to http://www.faqs.org/rfcs/rfc1321.html. If you send
any characters that are not included in the list, your request will be
rejected.




Because the batch request can result in a combination of successful and
unsuccessful actions, you should check for batch errors even when the
call returns an HTTP status code of 200.

C<&Attribute.1=this>

C<&Attribute.2=that>











=head2 SetQueueAttributes()

  Arguments described in: L<Paws::SQS::SetQueueAttributes>

  Returns: nothing

  

Sets the value of one or more queue attributes. When you change a
queue's attributes, the change can take up to 60 seconds for most of
the attributes to propagate throughout the SQS system. Changes made to
the C<MessageRetentionPeriod> attribute can take up to 15 minutes.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

