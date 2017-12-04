package Paws::SQS::SendMessageBatchResultEntry;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MD5OfMessageAttributes => (is => 'ro', isa => 'Str');
  has MD5OfMessageBody => (is => 'ro', isa => 'Str', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumber => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::SendMessageBatchResultEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::SendMessageBatchResultEntry object:

  $service_obj->Method(Att1 => { Id => $value, ..., SequenceNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::SendMessageBatchResultEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Encloses a C<MessageId> for a successfully-enqueued message in a C<
SendMessageBatch.>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  An identifier for the message in this batch.


=head2 MD5OfMessageAttributes => Str

  An MD5 digest of the non-URL-encoded message attribute string. You can
use this attribute to verify that Amazon SQS received the message
correctly. Amazon SQS URL-decodes the message before creating the MD5
digest. For information about MD5, see RFC1321
(https://www.ietf.org/rfc/rfc1321.txt).


=head2 B<REQUIRED> MD5OfMessageBody => Str

  An MD5 digest of the non-URL-encoded message attribute string. You can
use this attribute to verify that Amazon SQS received the message
correctly. Amazon SQS URL-decodes the message before creating the MD5
digest. For information about MD5, see RFC1321
(https://www.ietf.org/rfc/rfc1321.txt).


=head2 B<REQUIRED> MessageId => Str

  An identifier for the message.


=head2 SequenceNumber => Str

  This parameter applies only to FIFO (first-in-first-out) queues.

The large, non-consecutive number that Amazon SQS assigns to each
message.

The length of C<SequenceNumber> is 128 bits. As C<SequenceNumber>
continues to increase for a particular C<MessageGroupId>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

