package Paws::CloudDirectory::BatchWriteOperationResponse;
  use Moose;
  has AddFacetToObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAddFacetToObjectResponse');
  has AttachObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachObjectResponse');
  has AttachPolicy => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachPolicyResponse');
  has AttachToIndex => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachToIndexResponse');
  has AttachTypedLink => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachTypedLinkResponse');
  has CreateIndex => (is => 'ro', isa => 'Paws::CloudDirectory::BatchCreateIndexResponse');
  has CreateObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchCreateObjectResponse');
  has DeleteObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDeleteObjectResponse');
  has DetachFromIndex => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachFromIndexResponse');
  has DetachObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachObjectResponse');
  has DetachPolicy => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachPolicyResponse');
  has DetachTypedLink => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachTypedLinkResponse');
  has RemoveFacetFromObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchRemoveFacetFromObjectResponse');
  has UpdateLinkAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchUpdateLinkAttributesResponse');
  has UpdateObjectAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchUpdateObjectAttributesResponse');
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


=head2 AddFacetToObject => L<Paws::CloudDirectory::BatchAddFacetToObjectResponse>

  The result of an add facet to object batch operation.


=head2 AttachObject => L<Paws::CloudDirectory::BatchAttachObjectResponse>

  Attaches an object to a Directory.


=head2 AttachPolicy => L<Paws::CloudDirectory::BatchAttachPolicyResponse>

  Attaches a policy object to a regular object. An object can have a
limited number of attached policies.


=head2 AttachToIndex => L<Paws::CloudDirectory::BatchAttachToIndexResponse>

  Attaches the specified object to the specified index.


=head2 AttachTypedLink => L<Paws::CloudDirectory::BatchAttachTypedLinkResponse>

  Attaches a typed link to a specified source and target object. For more
information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 CreateIndex => L<Paws::CloudDirectory::BatchCreateIndexResponse>

  Creates an index object. See Indexing and search
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm)
for more information.


=head2 CreateObject => L<Paws::CloudDirectory::BatchCreateObjectResponse>

  Creates an object in a Directory.


=head2 DeleteObject => L<Paws::CloudDirectory::BatchDeleteObjectResponse>

  Deletes an object in a Directory.


=head2 DetachFromIndex => L<Paws::CloudDirectory::BatchDetachFromIndexResponse>

  Detaches the specified object from the specified index.


=head2 DetachObject => L<Paws::CloudDirectory::BatchDetachObjectResponse>

  Detaches an object from a Directory.


=head2 DetachPolicy => L<Paws::CloudDirectory::BatchDetachPolicyResponse>

  Detaches a policy from a Directory.


=head2 DetachTypedLink => L<Paws::CloudDirectory::BatchDetachTypedLinkResponse>

  Detaches a typed link from a specified source and target object. For
more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 RemoveFacetFromObject => L<Paws::CloudDirectory::BatchRemoveFacetFromObjectResponse>

  The result of a batch remove facet from object operation.


=head2 UpdateLinkAttributes => L<Paws::CloudDirectory::BatchUpdateLinkAttributesResponse>

  Represents the output of a C<BatchWrite> response operation.


=head2 UpdateObjectAttributes => L<Paws::CloudDirectory::BatchUpdateObjectAttributesResponse>

  Updates a given objectE<rsquo>s attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

