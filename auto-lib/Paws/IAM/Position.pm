package Paws::IAM::Position;
  use Moose;
  has Column => (is => 'ro', isa => 'Int');
  has Line => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::Position

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::Position object:

  $service_obj->Method(Att1 => { Column => $value, ..., Line => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::Position object:

  $result = $service_obj->Method(...);
  $result->Att1->Column

=head1 DESCRIPTION

Contains the row and column of a location of a C<Statement> element in
a policy document.

This data type is used as a member of the C< Statement > type.

=head1 ATTRIBUTES


=head2 Column => Int

  The column in the line containing the specified position in the
document.


=head2 Line => Int

  The line containing the specified position in the document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

