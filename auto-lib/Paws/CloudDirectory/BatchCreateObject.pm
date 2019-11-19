# Generated from default/object.tt
package Paws::CloudDirectory::BatchCreateObject;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_SchemaFacet CloudDirectory_AttributeKeyAndValue CloudDirectory_ObjectReference/;
  has BatchReferenceName => (is => 'ro', isa => Str);
  has LinkName => (is => 'ro', isa => Str);
  has ObjectAttributeList => (is => 'ro', isa => ArrayRef[CloudDirectory_AttributeKeyAndValue], required => 1);
  has ParentReference => (is => 'ro', isa => CloudDirectory_ObjectReference);
  has SchemaFacet => (is => 'ro', isa => ArrayRef[CloudDirectory_SchemaFacet], required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SchemaFacet' => 1,
                    'ObjectAttributeList' => 1
                  },
  'types' => {
               'SchemaFacet' => {
                                  'class' => 'Paws::CloudDirectory::SchemaFacet',
                                  'type' => 'ArrayRef[CloudDirectory_SchemaFacet]'
                                },
               'LinkName' => {
                               'type' => 'Str'
                             },
               'ParentReference' => {
                                      'type' => 'CloudDirectory_ObjectReference',
                                      'class' => 'Paws::CloudDirectory::ObjectReference'
                                    },
               'ObjectAttributeList' => {
                                          'type' => 'ArrayRef[CloudDirectory_AttributeKeyAndValue]',
                                          'class' => 'Paws::CloudDirectory::AttributeKeyAndValue'
                                        },
               'BatchReferenceName' => {
                                         'type' => 'Str'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchCreateObject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchCreateObject object:

  $service_obj->Method(Att1 => { BatchReferenceName => $value, ..., SchemaFacet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchCreateObject object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchReferenceName

=head1 DESCRIPTION

Represents the output of a CreateObject operation.

=head1 ATTRIBUTES


=head2 BatchReferenceName => Str

  The batch reference name. See Transaction Support
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html)
for more information.


=head2 LinkName => Str

  The name of the link.


=head2 B<REQUIRED> ObjectAttributeList => ArrayRef[CloudDirectory_AttributeKeyAndValue]

  An attribute map, which contains an attribute ARN as the key and
attribute value as the map value.


=head2 ParentReference => CloudDirectory_ObjectReference

  If specified, the parent reference to which this object will be
attached.


=head2 B<REQUIRED> SchemaFacet => ArrayRef[CloudDirectory_SchemaFacet]

  A list of C<FacetArns> that will be associated with the object. For
more information, see arns.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

