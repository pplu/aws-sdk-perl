package Paws::DS::Computer;
  use Moose;
  has ComputerAttributes => (is => 'ro', isa => 'ArrayRef[Paws::DS::Attribute]');
  has ComputerId => (is => 'ro', isa => 'Str');
  has ComputerName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::Computer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::Computer object:

  $service_obj->Method(Att1 => { ComputerAttributes => $value, ..., ComputerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::Computer object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputerAttributes

=head1 DESCRIPTION

Contains information about a computer account in a directory.

=head1 ATTRIBUTES


=head2 ComputerAttributes => ArrayRef[L<Paws::DS::Attribute>]

  An array of Attribute objects containing the LDAP attributes that
belong to the computer account.


=head2 ComputerId => Str

  The identifier of the computer.


=head2 ComputerName => Str

  The computer name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

