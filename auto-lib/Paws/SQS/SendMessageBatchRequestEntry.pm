package Paws::SQS::SendMessageBatchRequestEntry;
  use Moose;
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MessageAttributes => (is => 'ro', isa => 'HashRef[Paws::SQS::MessageAttributeValue]', xmlname => 'MessageAttribute', request_name => 'MessageAttribute', traits => ['Unwrapped','NameInRequest']);
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
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

  $service_obj->Method(Att1 => { DelaySeconds => $value, ..., MessageBody => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::SendMessageBatchRequestEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->DelaySeconds

=head1 DESCRIPTION

Contains the details of a single Amazon SQS message along with a C<Id>.

=head1 ATTRIBUTES


=head2 DelaySeconds => Int

  The number of seconds for which the message has to be delayed.


=head2 B<REQUIRED> Id => Str

  An identifier for the message in this batch. This is used to
communicate the result. Note that the C<Id>s of a batch request need to
be unique within the request.


=head2 MessageAttributes => HashRef[L<Paws::SQS::MessageAttributeValue>]

  Each message attribute consists of a Name, Type, and Value. For more
information, see Message Attribute Items.


=head2 B<REQUIRED> MessageBody => Str

  Body of the message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

