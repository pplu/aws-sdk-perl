package Paws::SQS::DeleteMessageBatchRequestEntry;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::DeleteMessageBatchRequestEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::DeleteMessageBatchRequestEntry object:

  $service_obj->Method(Att1 => { Id => $value, ..., ReceiptHandle => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::DeleteMessageBatchRequestEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Encloses a receipt handle and an identifier for it.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  An identifier for this particular receipt handle. This is used to
communicate the result.

The C<Id>s of a batch request need to be unique within a request


=head2 B<REQUIRED> ReceiptHandle => Str

  A receipt handle.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

