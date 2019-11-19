# Generated from default/object.tt
package Paws::CloudDirectory::BatchWriteOperationResponse;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_BatchAttachToIndexResponse CloudDirectory_BatchRemoveFacetFromObjectResponse CloudDirectory_BatchUpdateLinkAttributesResponse CloudDirectory_BatchDetachTypedLinkResponse CloudDirectory_BatchCreateObjectResponse CloudDirectory_BatchDetachPolicyResponse CloudDirectory_BatchCreateIndexResponse CloudDirectory_BatchAttachTypedLinkResponse CloudDirectory_BatchAttachObjectResponse CloudDirectory_BatchAddFacetToObjectResponse CloudDirectory_BatchAttachPolicyResponse CloudDirectory_BatchDeleteObjectResponse CloudDirectory_BatchDetachFromIndexResponse CloudDirectory_BatchDetachObjectResponse CloudDirectory_BatchUpdateObjectAttributesResponse/;
  has AddFacetToObject => (is => 'ro', isa => CloudDirectory_BatchAddFacetToObjectResponse);
  has AttachObject => (is => 'ro', isa => CloudDirectory_BatchAttachObjectResponse);
  has AttachPolicy => (is => 'ro', isa => CloudDirectory_BatchAttachPolicyResponse);
  has AttachToIndex => (is => 'ro', isa => CloudDirectory_BatchAttachToIndexResponse);
  has AttachTypedLink => (is => 'ro', isa => CloudDirectory_BatchAttachTypedLinkResponse);
  has CreateIndex => (is => 'ro', isa => CloudDirectory_BatchCreateIndexResponse);
  has CreateObject => (is => 'ro', isa => CloudDirectory_BatchCreateObjectResponse);
  has DeleteObject => (is => 'ro', isa => CloudDirectory_BatchDeleteObjectResponse);
  has DetachFromIndex => (is => 'ro', isa => CloudDirectory_BatchDetachFromIndexResponse);
  has DetachObject => (is => 'ro', isa => CloudDirectory_BatchDetachObjectResponse);
  has DetachPolicy => (is => 'ro', isa => CloudDirectory_BatchDetachPolicyResponse);
  has DetachTypedLink => (is => 'ro', isa => CloudDirectory_BatchDetachTypedLinkResponse);
  has RemoveFacetFromObject => (is => 'ro', isa => CloudDirectory_BatchRemoveFacetFromObjectResponse);
  has UpdateLinkAttributes => (is => 'ro', isa => CloudDirectory_BatchUpdateLinkAttributesResponse);
  has UpdateObjectAttributes => (is => 'ro', isa => CloudDirectory_BatchUpdateObjectAttributesResponse);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DetachTypedLink' => {
                                      'type' => 'CloudDirectory_BatchDetachTypedLinkResponse',
                                      'class' => 'Paws::CloudDirectory::BatchDetachTypedLinkResponse'
                                    },
               'DetachFromIndex' => {
                                      'type' => 'CloudDirectory_BatchDetachFromIndexResponse',
                                      'class' => 'Paws::CloudDirectory::BatchDetachFromIndexResponse'
                                    },
               'DetachObject' => {
                                   'class' => 'Paws::CloudDirectory::BatchDetachObjectResponse',
                                   'type' => 'CloudDirectory_BatchDetachObjectResponse'
                                 },
               'DetachPolicy' => {
                                   'type' => 'CloudDirectory_BatchDetachPolicyResponse',
                                   'class' => 'Paws::CloudDirectory::BatchDetachPolicyResponse'
                                 },
               'RemoveFacetFromObject' => {
                                            'class' => 'Paws::CloudDirectory::BatchRemoveFacetFromObjectResponse',
                                            'type' => 'CloudDirectory_BatchRemoveFacetFromObjectResponse'
                                          },
               'UpdateLinkAttributes' => {
                                           'class' => 'Paws::CloudDirectory::BatchUpdateLinkAttributesResponse',
                                           'type' => 'CloudDirectory_BatchUpdateLinkAttributesResponse'
                                         },
               'DeleteObject' => {
                                   'type' => 'CloudDirectory_BatchDeleteObjectResponse',
                                   'class' => 'Paws::CloudDirectory::BatchDeleteObjectResponse'
                                 },
               'AddFacetToObject' => {
                                       'class' => 'Paws::CloudDirectory::BatchAddFacetToObjectResponse',
                                       'type' => 'CloudDirectory_BatchAddFacetToObjectResponse'
                                     },
               'AttachPolicy' => {
                                   'class' => 'Paws::CloudDirectory::BatchAttachPolicyResponse',
                                   'type' => 'CloudDirectory_BatchAttachPolicyResponse'
                                 },
               'AttachTypedLink' => {
                                      'type' => 'CloudDirectory_BatchAttachTypedLinkResponse',
                                      'class' => 'Paws::CloudDirectory::BatchAttachTypedLinkResponse'
                                    },
               'AttachObject' => {
                                   'class' => 'Paws::CloudDirectory::BatchAttachObjectResponse',
                                   'type' => 'CloudDirectory_BatchAttachObjectResponse'
                                 },
               'CreateObject' => {
                                   'type' => 'CloudDirectory_BatchCreateObjectResponse',
                                   'class' => 'Paws::CloudDirectory::BatchCreateObjectResponse'
                                 },
               'AttachToIndex' => {
                                    'type' => 'CloudDirectory_BatchAttachToIndexResponse',
                                    'class' => 'Paws::CloudDirectory::BatchAttachToIndexResponse'
                                  },
               'UpdateObjectAttributes' => {
                                             'type' => 'CloudDirectory_BatchUpdateObjectAttributesResponse',
                                             'class' => 'Paws::CloudDirectory::BatchUpdateObjectAttributesResponse'
                                           },
               'CreateIndex' => {
                                  'type' => 'CloudDirectory_BatchCreateIndexResponse',
                                  'class' => 'Paws::CloudDirectory::BatchCreateIndexResponse'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchWriteOperationResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchWriteOperationResponse object:

  $service_obj->Method(Att1 => { AddFacetToObject => $value, ..., UpdateObjectAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchWriteOperationResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->AddFacetToObject

=head1 DESCRIPTION

Represents the output of a C<BatchWrite> response operation.

=head1 ATTRIBUTES


=head2 AddFacetToObject => CloudDirectory_BatchAddFacetToObjectResponse

  The result of an add facet to object batch operation.


=head2 AttachObject => CloudDirectory_BatchAttachObjectResponse

  Attaches an object to a Directory.


=head2 AttachPolicy => CloudDirectory_BatchAttachPolicyResponse

  Attaches a policy object to a regular object. An object can have a
limited number of attached policies.


=head2 AttachToIndex => CloudDirectory_BatchAttachToIndexResponse

  Attaches the specified object to the specified index.


=head2 AttachTypedLink => CloudDirectory_BatchAttachTypedLinkResponse

  Attaches a typed link to a specified source and target object. For more
information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 CreateIndex => CloudDirectory_BatchCreateIndexResponse

  Creates an index object. See Indexing and search
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm)
for more information.


=head2 CreateObject => CloudDirectory_BatchCreateObjectResponse

  Creates an object in a Directory.


=head2 DeleteObject => CloudDirectory_BatchDeleteObjectResponse

  Deletes an object in a Directory.


=head2 DetachFromIndex => CloudDirectory_BatchDetachFromIndexResponse

  Detaches the specified object from the specified index.


=head2 DetachObject => CloudDirectory_BatchDetachObjectResponse

  Detaches an object from a Directory.


=head2 DetachPolicy => CloudDirectory_BatchDetachPolicyResponse

  Detaches a policy from a Directory.


=head2 DetachTypedLink => CloudDirectory_BatchDetachTypedLinkResponse

  Detaches a typed link from a specified source and target object. For
more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 RemoveFacetFromObject => CloudDirectory_BatchRemoveFacetFromObjectResponse

  The result of a batch remove facet from object operation.


=head2 UpdateLinkAttributes => CloudDirectory_BatchUpdateLinkAttributesResponse

  Represents the output of a C<BatchWrite> response operation.


=head2 UpdateObjectAttributes => CloudDirectory_BatchUpdateObjectAttributesResponse

  Updates a given objectE<rsquo>s attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

