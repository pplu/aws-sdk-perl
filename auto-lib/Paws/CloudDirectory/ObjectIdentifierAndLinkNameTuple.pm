package Paws::CloudDirectory::ObjectIdentifierAndLinkNameTuple;
  use Moose;
  has LinkName => (is => 'ro', isa => 'Str');
  has ObjectIdentifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ObjectIdentifierAndLinkNameTuple

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::ObjectIdentifierAndLinkNameTuple object:

  $service_obj->Method(Att1 => { LinkName => $value, ..., ObjectIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::ObjectIdentifierAndLinkNameTuple object:

  $result = $service_obj->Method(...);
  $result->Att1->LinkName

=head1 DESCRIPTION

A pair of ObjectIdentifier and LinkName.

=head1 ATTRIBUTES


=head2 LinkName => Str

  The name of the link between the parent and the child object.


=head2 ObjectIdentifier => Str

  The ID that is associated with the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

