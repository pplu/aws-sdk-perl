package Paws::Glue::CodeGenNodeArg;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Param => (is => 'ro', isa => 'Bool');
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CodeGenNodeArg

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CodeGenNodeArg object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CodeGenNodeArg object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

An argument or property of a node.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the argument or property.


=head2 Param => Bool

  True if the value is used as a parameter.


=head2 B<REQUIRED> Value => Str

  The value of the argument or property.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

