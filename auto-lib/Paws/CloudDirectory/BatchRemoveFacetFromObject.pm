package Paws::CloudDirectory::BatchRemoveFacetFromObject;
  use Moose;
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has SchemaFacet => (is => 'ro', isa => 'Paws::CloudDirectory::SchemaFacet', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchRemoveFacetFromObject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchRemoveFacetFromObject object:

  $service_obj->Method(Att1 => { ObjectReference => $value, ..., SchemaFacet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchRemoveFacetFromObject object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectReference

=head1 DESCRIPTION

A batch operation to remove a facet from an object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

  A reference to the object whose facet will be removed.


=head2 B<REQUIRED> SchemaFacet => L<Paws::CloudDirectory::SchemaFacet>

  The facet to remove from the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

