package Paws::CloudDirectory::BatchReadSuccessfulResponse;
  use Moose;
  has GetLinkAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchGetLinkAttributesResponse');
  has GetObjectAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchGetObjectAttributesResponse');
  has GetObjectInformation => (is => 'ro', isa => 'Paws::CloudDirectory::BatchGetObjectInformationResponse');
  has ListAttachedIndices => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListAttachedIndicesResponse');
  has ListIncomingTypedLinks => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListIncomingTypedLinksResponse');
  has ListIndex => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListIndexResponse');
  has ListObjectAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListObjectAttributesResponse');
  has ListObjectChildren => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListObjectChildrenResponse');
  has ListObjectParentPaths => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListObjectParentPathsResponse');
  has ListObjectParents => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListObjectParentsResponse');
  has ListObjectPolicies => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListObjectPoliciesResponse');
  has ListOutgoingTypedLinks => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListOutgoingTypedLinksResponse');
  has ListPolicyAttachments => (is => 'ro', isa => 'Paws::CloudDirectory::BatchListPolicyAttachmentsResponse');
  has LookupPolicy => (is => 'ro', isa => 'Paws::CloudDirectory::BatchLookupPolicyResponse');
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


=head2 GetLinkAttributes => L<Paws::CloudDirectory::BatchGetLinkAttributesResponse>

  The list of attributes to retrieve from the typed link.


=head2 GetObjectAttributes => L<Paws::CloudDirectory::BatchGetObjectAttributesResponse>

  Retrieves attributes within a facet that are associated with an object.


=head2 GetObjectInformation => L<Paws::CloudDirectory::BatchGetObjectInformationResponse>

  Retrieves metadata about an object.


=head2 ListAttachedIndices => L<Paws::CloudDirectory::BatchListAttachedIndicesResponse>

  Lists indices attached to an object.


=head2 ListIncomingTypedLinks => L<Paws::CloudDirectory::BatchListIncomingTypedLinksResponse>

  Returns a paginated list of all the incoming TypedLinkSpecifier
information for an object. It also supports filtering by typed link
facet and identity attributes. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListIndex => L<Paws::CloudDirectory::BatchListIndexResponse>

  Lists objects attached to the specified index.


=head2 ListObjectAttributes => L<Paws::CloudDirectory::BatchListObjectAttributesResponse>

  Lists all attributes that are associated with an object.


=head2 ListObjectChildren => L<Paws::CloudDirectory::BatchListObjectChildrenResponse>

  Returns a paginated list of child objects that are associated with a
given object.


=head2 ListObjectParentPaths => L<Paws::CloudDirectory::BatchListObjectParentPathsResponse>

  Retrieves all available parent paths for any object type such as node,
leaf node, policy node, and index node objects. For more information
about objects, see Directory Structure
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html).


=head2 ListObjectParents => L<Paws::CloudDirectory::BatchListObjectParentsResponse>

  


=head2 ListObjectPolicies => L<Paws::CloudDirectory::BatchListObjectPoliciesResponse>

  Returns policies attached to an object in pagination fashion.


=head2 ListOutgoingTypedLinks => L<Paws::CloudDirectory::BatchListOutgoingTypedLinksResponse>

  Returns a paginated list of all the outgoing TypedLinkSpecifier
information for an object. It also supports filtering by typed link
facet and identity attributes. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListPolicyAttachments => L<Paws::CloudDirectory::BatchListPolicyAttachmentsResponse>

  Returns all of the C<ObjectIdentifiers> to which a given policy is
attached.


=head2 LookupPolicy => L<Paws::CloudDirectory::BatchLookupPolicyResponse>

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

