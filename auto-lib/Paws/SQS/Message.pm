package Paws::SQS::Message;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SQS::MessageSystemAttributeMap', request_name => 'Attribute', traits => ['NameInRequest']);
  has Body => (is => 'ro', isa => 'Str');
  has MD5OfBody => (is => 'ro', isa => 'Str');
  has MD5OfMessageAttributes => (is => 'ro', isa => 'Str');
  has MessageAttributes => (is => 'ro', isa => 'Paws::SQS::MessageBodyAttributeMap', request_name => 'MessageAttribute', traits => ['NameInRequest']);
  has MessageId => (is => 'ro', isa => 'Str');
  has ReceiptHandle => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::Message

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::Message object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., ReceiptHandle => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::Message object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

An Amazon SQS message.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SQS::MessageSystemAttributeMap>

  A map of the attributes requested in C< ReceiveMessage > to their
respective values. Supported attributes:

=over

=item *

C<ApproximateReceiveCount>

=item *

C<ApproximateFirstReceiveTimestamp>

=item *

C<MessageDeduplicationId>

=item *

C<MessageGroupId>

=item *

C<SenderId>

=item *

C<SentTimestamp>

=item *

C<SequenceNumber>

=back

C<ApproximateFirstReceiveTimestamp> and C<SentTimestamp> are each
returned as an integer representing the epoch time
(http://en.wikipedia.org/wiki/Unix_time) in milliseconds.


=head2 Body => Str

  The message's contents (not URL-encoded).


=head2 MD5OfBody => Str

  An MD5 digest of the non-URL-encoded message body string.


=head2 MD5OfMessageAttributes => Str

  An MD5 digest of the non-URL-encoded message attribute string. You can
use this attribute to verify that Amazon SQS received the message
correctly. Amazon SQS URL-decodes the message before creating the MD5
digest. For information about MD5, see RFC1321
(https://www.ietf.org/rfc/rfc1321.txt).


=head2 MessageAttributes => L<Paws::SQS::MessageBodyAttributeMap>

  Each message attribute consists of a C<Name>, C<Type>, and C<Value>.
For more information, see Amazon SQS Message Attributes
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html)
in the I<Amazon Simple Queue Service Developer Guide>.


=head2 MessageId => Str

  A unique identifier for the message. A C<MessageId>is considered unique
across all AWS accounts for an extended period of time.


=head2 ReceiptHandle => Str

  An identifier associated with the act of receiving the message. A new
receipt handle is returned every time you receive a message. When
deleting a message, you provide the last received receipt handle to
delete the message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

