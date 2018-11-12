package Paws::AppStream::UserStackAssociationError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has UserStackAssociation => (is => 'ro', isa => 'Paws::AppStream::UserStackAssociation');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UserStackAssociationError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::UserStackAssociationError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., UserStackAssociation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::UserStackAssociationError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Describes the error that is returned when a user canE<rsquo>t be
associated with or disassociated from a stack.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code for the error that is returned when a user canE<rsquo>t
be associated with or disassociated from a stack.


=head2 ErrorMessage => Str

  The error message for the error that is returned when a user
canE<rsquo>t be associated with or disassociated from a stack.


=head2 UserStackAssociation => L<Paws::AppStream::UserStackAssociation>

  Information about the user and associated stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

