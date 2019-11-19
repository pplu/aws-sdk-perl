# Generated from default/object.tt
package Paws::CloudDirectory::BatchAddFacetToObject;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference CloudDirectory_AttributeKeyAndValue CloudDirectory_SchemaFacet/;
  has ObjectAttributeList => (is => 'ro', isa => ArrayRef[CloudDirectory_AttributeKeyAndValue], required => 1);
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);
  has SchemaFacet => (is => 'ro', isa => CloudDirectory_SchemaFacet, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SchemaFacet' => {
                                  'class' => 'Paws::CloudDirectory::SchemaFacet',
                                  'type' => 'CloudDirectory_SchemaFacet'
                                },
               'ObjectAttributeList' => {
                                          'class' => 'Paws::CloudDirectory::AttributeKeyAndValue',
                                          'type' => 'ArrayRef[CloudDirectory_AttributeKeyAndValue]'
                                        },
               'ObjectReference' => {
                                      'class' => 'Paws::CloudDirectory::ObjectReference',
                                      'type' => 'CloudDirectory_ObjectReference'
                                    }
             },
  'IsRequired' => {
                    'SchemaFacet' => 1,
                    'ObjectAttributeList' => 1,
                    'ObjectReference' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchAddFacetToObject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchAddFacetToObject object:

  $service_obj->Method(Att1 => { ObjectAttributeList => $value, ..., SchemaFacet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchAddFacetToObject object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectAttributeList

=head1 DESCRIPTION

Represents the output of a batch add facet to object operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ObjectAttributeList => ArrayRef[CloudDirectory_AttributeKeyAndValue]

  The attributes to set on the object.


=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

  A reference to the object being mutated.


=head2 B<REQUIRED> SchemaFacet => CloudDirectory_SchemaFacet

  Represents the facet being added to the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

