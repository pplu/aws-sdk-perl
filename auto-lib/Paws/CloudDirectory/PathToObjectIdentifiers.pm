package Paws::CloudDirectory::PathToObjectIdentifiers;
  use Moose;
  has ObjectIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Path => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::PathToObjectIdentifiers

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::PathToObjectIdentifiers object:

  $service_obj->Method(Att1 => { ObjectIdentifiers => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::PathToObjectIdentifiers object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectIdentifiers

=head1 DESCRIPTION

Returns the path to the C<ObjectIdentifiers> that is associated with
the directory.

=head1 ATTRIBUTES


=head2 ObjectIdentifiers => ArrayRef[Str|Undef]

  Lists C<ObjectIdentifiers> starting from directory root to the object
in the request.


=head2 Path => Str

  The path that is used to identify the object starting from directory
root.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

