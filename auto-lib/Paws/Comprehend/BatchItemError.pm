package Paws::Comprehend::BatchItemError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Index => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchItemError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::BatchItemError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Index => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::BatchItemError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Describes an error that occurred while processing a document in a
batch. The operation returns on C<BatchItemError> object for each
document that contained an error.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The numeric error code of the error.


=head2 ErrorMessage => Str

  A text description of the error.


=head2 Index => Int

  The zero-based index of the document in the input list.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

