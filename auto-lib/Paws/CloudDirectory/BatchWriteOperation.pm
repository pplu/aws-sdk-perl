package Paws::CloudDirectory::BatchWriteOperation;
  use Moose;
  has AddFacetToObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAddFacetToObject');
  has AttachObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachObject');
  has AttachPolicy => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachPolicy');
  has AttachToIndex => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachToIndex');
  has AttachTypedLink => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachTypedLink');
  has CreateIndex => (is => 'ro', isa => 'Paws::CloudDirectory::BatchCreateIndex');
  has CreateObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchCreateObject');
  has DeleteObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDeleteObject');
  has DetachFromIndex => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachFromIndex');
  has DetachObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachObject');
  has DetachPolicy => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachPolicy');
  has DetachTypedLink => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachTypedLink');
  has RemoveFacetFromObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchRemoveFacetFromObject');
  has UpdateLinkAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchUpdateLinkAttributes');
  has UpdateObjectAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchUpdateObjectAttributes');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchWriteOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchWriteOperation object:

  $service_obj->Method(Att1 => { AddFacetToObject => $value, ..., UpdateObjectAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchWriteOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->AddFacetToObject

=head1 DESCRIPTION

Represents the output of a C<BatchWrite> operation.

=head1 ATTRIBUTES


=head2 AddFacetToObject => L<Paws::CloudDirectory::BatchAddFacetToObject>

  A batch operation that adds a facet to an object.


=head2 AttachObject => L<Paws::CloudDirectory::BatchAttachObject>

  Attaches an object to a Directory.


=head2 AttachPolicy => L<Paws::CloudDirectory::BatchAttachPolicy>

  Attaches a policy object to a regular object. An object can have a
limited number of attached policies.


=head2 AttachToIndex => L<Paws::CloudDirectory::BatchAttachToIndex>

  Attaches the specified object to the specified index.


=head2 AttachTypedLink => L<Paws::CloudDirectory::BatchAttachTypedLink>

  Attaches a typed link to a specified source and target object. For more
information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 CreateIndex => L<Paws::CloudDirectory::BatchCreateIndex>

  Creates an index object. See Indexing and search
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm)
for more information.


=head2 CreateObject => L<Paws::CloudDirectory::BatchCreateObject>

  Creates an object.


=head2 DeleteObject => L<Paws::CloudDirectory::BatchDeleteObject>

  Deletes an object in a Directory.


=head2 DetachFromIndex => L<Paws::CloudDirectory::BatchDetachFromIndex>

  Detaches the specified object from the specified index.


=head2 DetachObject => L<Paws::CloudDirectory::BatchDetachObject>

  Detaches an object from a Directory.


=head2 DetachPolicy => L<Paws::CloudDirectory::BatchDetachPolicy>

  Detaches a policy from a Directory.


=head2 DetachTypedLink => L<Paws::CloudDirectory::BatchDetachTypedLink>

  Detaches a typed link from a specified source and target object. For
more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 RemoveFacetFromObject => L<Paws::CloudDirectory::BatchRemoveFacetFromObject>

  A batch operation that removes a facet from an object.


=head2 UpdateLinkAttributes => L<Paws::CloudDirectory::BatchUpdateLinkAttributes>

  Updates a given object's attributes.


=head2 UpdateObjectAttributes => L<Paws::CloudDirectory::BatchUpdateObjectAttributes>

  Updates a given object's attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

