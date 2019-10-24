# Generated from default/object.tt
package Paws::CloudDirectory::BatchReadSuccessfulResponse;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_BatchListObjectAttributesResponse CloudDirectory_BatchListAttachedIndicesResponse CloudDirectory_BatchGetObjectInformationResponse CloudDirectory_BatchGetObjectAttributesResponse CloudDirectory_BatchListObjectChildrenResponse CloudDirectory_BatchListIncomingTypedLinksResponse CloudDirectory_BatchLookupPolicyResponse CloudDirectory_BatchListObjectPoliciesResponse CloudDirectory_BatchListIndexResponse CloudDirectory_BatchListPolicyAttachmentsResponse CloudDirectory_BatchListOutgoingTypedLinksResponse CloudDirectory_BatchListObjectParentsResponse CloudDirectory_BatchListObjectParentPathsResponse CloudDirectory_BatchGetLinkAttributesResponse/;
  has GetLinkAttributes => (is => 'ro', isa => CloudDirectory_BatchGetLinkAttributesResponse);
  has GetObjectAttributes => (is => 'ro', isa => CloudDirectory_BatchGetObjectAttributesResponse);
  has GetObjectInformation => (is => 'ro', isa => CloudDirectory_BatchGetObjectInformationResponse);
  has ListAttachedIndices => (is => 'ro', isa => CloudDirectory_BatchListAttachedIndicesResponse);
  has ListIncomingTypedLinks => (is => 'ro', isa => CloudDirectory_BatchListIncomingTypedLinksResponse);
  has ListIndex => (is => 'ro', isa => CloudDirectory_BatchListIndexResponse);
  has ListObjectAttributes => (is => 'ro', isa => CloudDirectory_BatchListObjectAttributesResponse);
  has ListObjectChildren => (is => 'ro', isa => CloudDirectory_BatchListObjectChildrenResponse);
  has ListObjectParentPaths => (is => 'ro', isa => CloudDirectory_BatchListObjectParentPathsResponse);
  has ListObjectParents => (is => 'ro', isa => CloudDirectory_BatchListObjectParentsResponse);
  has ListObjectPolicies => (is => 'ro', isa => CloudDirectory_BatchListObjectPoliciesResponse);
  has ListOutgoingTypedLinks => (is => 'ro', isa => CloudDirectory_BatchListOutgoingTypedLinksResponse);
  has ListPolicyAttachments => (is => 'ro', isa => CloudDirectory_BatchListPolicyAttachmentsResponse);
  has LookupPolicy => (is => 'ro', isa => CloudDirectory_BatchLookupPolicyResponse);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LookupPolicy' => {
                                   'class' => 'Paws::CloudDirectory::BatchLookupPolicyResponse',
                                   'type' => 'CloudDirectory_BatchLookupPolicyResponse'
                                 },
               'ListOutgoingTypedLinks' => {
                                             'class' => 'Paws::CloudDirectory::BatchListOutgoingTypedLinksResponse',
                                             'type' => 'CloudDirectory_BatchListOutgoingTypedLinksResponse'
                                           },
               'ListObjectChildren' => {
                                         'class' => 'Paws::CloudDirectory::BatchListObjectChildrenResponse',
                                         'type' => 'CloudDirectory_BatchListObjectChildrenResponse'
                                       },
               'GetObjectInformation' => {
                                           'class' => 'Paws::CloudDirectory::BatchGetObjectInformationResponse',
                                           'type' => 'CloudDirectory_BatchGetObjectInformationResponse'
                                         },
               'ListObjectPolicies' => {
                                         'class' => 'Paws::CloudDirectory::BatchListObjectPoliciesResponse',
                                         'type' => 'CloudDirectory_BatchListObjectPoliciesResponse'
                                       },
               'ListIndex' => {
                                'class' => 'Paws::CloudDirectory::BatchListIndexResponse',
                                'type' => 'CloudDirectory_BatchListIndexResponse'
                              },
               'ListIncomingTypedLinks' => {
                                             'class' => 'Paws::CloudDirectory::BatchListIncomingTypedLinksResponse',
                                             'type' => 'CloudDirectory_BatchListIncomingTypedLinksResponse'
                                           },
               'ListObjectParents' => {
                                        'class' => 'Paws::CloudDirectory::BatchListObjectParentsResponse',
                                        'type' => 'CloudDirectory_BatchListObjectParentsResponse'
                                      },
               'ListPolicyAttachments' => {
                                            'class' => 'Paws::CloudDirectory::BatchListPolicyAttachmentsResponse',
                                            'type' => 'CloudDirectory_BatchListPolicyAttachmentsResponse'
                                          },
               'GetObjectAttributes' => {
                                          'class' => 'Paws::CloudDirectory::BatchGetObjectAttributesResponse',
                                          'type' => 'CloudDirectory_BatchGetObjectAttributesResponse'
                                        },
               'GetLinkAttributes' => {
                                        'class' => 'Paws::CloudDirectory::BatchGetLinkAttributesResponse',
                                        'type' => 'CloudDirectory_BatchGetLinkAttributesResponse'
                                      },
               'ListObjectParentPaths' => {
                                            'class' => 'Paws::CloudDirectory::BatchListObjectParentPathsResponse',
                                            'type' => 'CloudDirectory_BatchListObjectParentPathsResponse'
                                          },
               'ListAttachedIndices' => {
                                          'class' => 'Paws::CloudDirectory::BatchListAttachedIndicesResponse',
                                          'type' => 'CloudDirectory_BatchListAttachedIndicesResponse'
                                        },
               'ListObjectAttributes' => {
                                           'class' => 'Paws::CloudDirectory::BatchListObjectAttributesResponse',
                                           'type' => 'CloudDirectory_BatchListObjectAttributesResponse'
                                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchReadSuccessfulResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchReadSuccessfulResponse object:

  $service_obj->Method(Att1 => { GetLinkAttributes => $value, ..., LookupPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchReadSuccessfulResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->GetLinkAttributes

=head1 DESCRIPTION

Represents the output of a C<BatchRead> success response operation.

=head1 ATTRIBUTES


=head2 GetLinkAttributes => CloudDirectory_BatchGetLinkAttributesResponse

  The list of attributes to retrieve from the typed link.


=head2 GetObjectAttributes => CloudDirectory_BatchGetObjectAttributesResponse

  Retrieves attributes within a facet that are associated with an object.


=head2 GetObjectInformation => CloudDirectory_BatchGetObjectInformationResponse

  Retrieves metadata about an object.


=head2 ListAttachedIndices => CloudDirectory_BatchListAttachedIndicesResponse

  Lists indices attached to an object.


=head2 ListIncomingTypedLinks => CloudDirectory_BatchListIncomingTypedLinksResponse

  Returns a paginated list of all the incoming TypedLinkSpecifier
information for an object. It also supports filtering by typed link
facet and identity attributes. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListIndex => CloudDirectory_BatchListIndexResponse

  Lists objects attached to the specified index.


=head2 ListObjectAttributes => CloudDirectory_BatchListObjectAttributesResponse

  Lists all attributes that are associated with an object.


=head2 ListObjectChildren => CloudDirectory_BatchListObjectChildrenResponse

  Returns a paginated list of child objects that are associated with a
given object.


=head2 ListObjectParentPaths => CloudDirectory_BatchListObjectParentPathsResponse

  Retrieves all available parent paths for any object type such as node,
leaf node, policy node, and index node objects. For more information
about objects, see Directory Structure
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html).


=head2 ListObjectParents => CloudDirectory_BatchListObjectParentsResponse

  


=head2 ListObjectPolicies => CloudDirectory_BatchListObjectPoliciesResponse

  Returns policies attached to an object in pagination fashion.


=head2 ListOutgoingTypedLinks => CloudDirectory_BatchListOutgoingTypedLinksResponse

  Returns a paginated list of all the outgoing TypedLinkSpecifier
information for an object. It also supports filtering by typed link
facet and identity attributes. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListPolicyAttachments => CloudDirectory_BatchListPolicyAttachmentsResponse

  Returns all of the C<ObjectIdentifiers> to which a given policy is
attached.


=head2 LookupPolicy => CloudDirectory_BatchLookupPolicyResponse

  Lists all policies from the root of the Directory to the object
specified. If there are no policies present, an empty list is returned.
If policies are present, and if some objects don't have the policies
attached, it returns the C<ObjectIdentifier> for such objects. If
policies are present, it returns C<ObjectIdentifier>, C<policyId>, and
C<policyType>. Paths that don't lead to the root from the target object
are ignored. For more information, see Policies
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

