package Paws::SQS::ChangeMessageVisibilityBatchRequestEntry;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ChangeMessageVisibilityBatchRequestEntry

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::ChangeMessageVisibilityBatchRequestEntry object:

  $service_obj->Method(Att1 => { Id => $value, ..., VisibilityTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::ChangeMessageVisibilityBatchRequestEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 ATTRIBUTES

=head2 B<REQUIRED> Id => Str

  

An identifier for this particular receipt handle. This is used to
communicate the result. Note that the C<Id>s of a batch request need to
be unique within the request.










=head2 B<REQUIRED> ReceiptHandle => Str

  

A receipt handle.










=head2 VisibilityTimeout => Int

  

The new value (in seconds) for the message's visibility timeout.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

