# Generated from default/object.tt
package Paws::CloudDirectory::TypedLinkSpecifier;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_AttributeNameAndValue CloudDirectory_ObjectReference CloudDirectory_TypedLinkSchemaAndFacetName/;
  has IdentityAttributeValues => (is => 'ro', isa => ArrayRef[CloudDirectory_AttributeNameAndValue], required => 1);
  has SourceObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);
  has TargetObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);
  has TypedLinkFacet => (is => 'ro', isa => CloudDirectory_TypedLinkSchemaAndFacetName, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IdentityAttributeValues' => {
                                              'class' => 'Paws::CloudDirectory::AttributeNameAndValue',
                                              'type' => 'ArrayRef[CloudDirectory_AttributeNameAndValue]'
                                            },
               'TypedLinkFacet' => {
                                     'class' => 'Paws::CloudDirectory::TypedLinkSchemaAndFacetName',
                                     'type' => 'CloudDirectory_TypedLinkSchemaAndFacetName'
                                   },
               'SourceObjectReference' => {
                                            'class' => 'Paws::CloudDirectory::ObjectReference',
                                            'type' => 'CloudDirectory_ObjectReference'
                                          },
               'TargetObjectReference' => {
                                            'class' => 'Paws::CloudDirectory::ObjectReference',
                                            'type' => 'CloudDirectory_ObjectReference'
                                          }
             },
  'IsRequired' => {
                    'IdentityAttributeValues' => 1,
                    'TypedLinkFacet' => 1,
                    'SourceObjectReference' => 1,
                    'TargetObjectReference' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::TypedLinkSpecifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::TypedLinkSpecifier object:

  $service_obj->Method(Att1 => { IdentityAttributeValues => $value, ..., TypedLinkFacet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::TypedLinkSpecifier object:

  $result = $service_obj->Method(...);
  $result->Att1->IdentityAttributeValues

=head1 DESCRIPTION

Contains all the information that is used to uniquely identify a typed
link. The parameters discussed in this topic are used to uniquely
specify the typed link being operated on. The AttachTypedLink API
returns a typed link specifier while the DetachTypedLink API accepts
one as input. Similarly, the ListIncomingTypedLinks and
ListOutgoingTypedLinks API operations provide typed link specifiers as
output. You can also construct a typed link specifier from scratch.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityAttributeValues => ArrayRef[CloudDirectory_AttributeNameAndValue]

  Identifies the attribute value to update.


=head2 B<REQUIRED> SourceObjectReference => CloudDirectory_ObjectReference

  Identifies the source object that the typed link will attach to.


=head2 B<REQUIRED> TargetObjectReference => CloudDirectory_ObjectReference

  Identifies the target object that the typed link will attach to.


=head2 B<REQUIRED> TypedLinkFacet => CloudDirectory_TypedLinkSchemaAndFacetName

  Identifies the typed link facet that is associated with the typed link.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

