# Generated from default/object.tt
package Paws::CloudDirectory::BatchRemoveFacetFromObject;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_SchemaFacet CloudDirectory_ObjectReference/;
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);
  has SchemaFacet => (is => 'ro', isa => CloudDirectory_SchemaFacet, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ObjectReference' => 1,
                    'SchemaFacet' => 1
                  },
  'types' => {
               'ObjectReference' => {
                                      'type' => 'CloudDirectory_ObjectReference',
                                      'class' => 'Paws::CloudDirectory::ObjectReference'
                                    },
               'SchemaFacet' => {
                                  'type' => 'CloudDirectory_SchemaFacet',
                                  'class' => 'Paws::CloudDirectory::SchemaFacet'
                                }
             }
}
;
    return $Params_map;
  }


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


=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

  A reference to the object whose facet will be removed.


=head2 B<REQUIRED> SchemaFacet => CloudDirectory_SchemaFacet

  The facet to remove from the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

