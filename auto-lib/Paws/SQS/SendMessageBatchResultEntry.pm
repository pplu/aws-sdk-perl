package Paws::SQS::SendMessageBatchResultEntry;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MD5OfMessageAttributes => (is => 'ro', isa => 'Str');
  has MD5OfMessageBody => (is => 'ro', isa => 'Str', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', required => 1);
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

  $service_obj->Method(Att1 => { Id => $value, ..., MessageId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::SendMessageBatchResultEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Encloses a message ID for successfully enqueued message of a
SendMessageBatch.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  An identifier for the message in this batch.


=head2 MD5OfMessageAttributes => Str

  An MD5 digest of the non-URL-encoded message attribute string. This can
be used to verify that Amazon SQS received the message batch correctly.
Amazon SQS first URL decodes the message before creating the MD5
digest. For information about MD5, go to
http://www.faqs.org/rfcs/rfc1321.html.


=head2 B<REQUIRED> MD5OfMessageBody => Str

  An MD5 digest of the non-URL-encoded message body string. This can be
used to verify that Amazon SQS received the message correctly. Amazon
SQS first URL decodes the message before creating the MD5 digest. For
information about MD5, go to http://www.faqs.org/rfcs/rfc1321.html.


=head2 B<REQUIRED> MessageId => Str

  An identifier for the message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

