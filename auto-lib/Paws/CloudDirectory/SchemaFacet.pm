package Paws::CloudDirectory::SchemaFacet;
  use Moose;
  has FacetName => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::SchemaFacet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::SchemaFacet object:

  $service_obj->Method(Att1 => { FacetName => $value, ..., SchemaArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::SchemaFacet object:

  $result = $service_obj->Method(...);
  $result->Att1->FacetName

=head1 DESCRIPTION

A facet.

=head1 ATTRIBUTES


=head2 FacetName => Str

  The name of the facet.


=head2 SchemaArn => Str

  The ARN of the schema that contains the facet with no minor component.
See arns and In-Place Schema Upgrade
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_inplaceschemaupgrade.html)
for a description of when to provide minor versions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

