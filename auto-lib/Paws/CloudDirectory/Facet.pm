package Paws::CloudDirectory::Facet;
  use Moose;
  has FacetStyle => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ObjectType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::Facet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::Facet object:

  $service_obj->Method(Att1 => { FacetStyle => $value, ..., ObjectType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::Facet object:

  $result = $service_obj->Method(...);
  $result->Att1->FacetStyle

=head1 DESCRIPTION

A structure that contains C<Name>, C<ARN>, C<Attributes>, C< Rules>,
and C<ObjectTypes>. See Facets
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_whatarefacets.html)
for more information.

=head1 ATTRIBUTES


=head2 FacetStyle => Str

  There are two different styles that you can define on any given facet,
C<Static> and C<Dynamic>. For static facets, all attributes must be
defined in the schema. For dynamic facets, attributes can be defined
during data plane operations.


=head2 Name => Str

  The name of the Facet.


=head2 ObjectType => Str

  The object type that is associated with the facet. See
CreateFacetRequest$ObjectType for more details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

