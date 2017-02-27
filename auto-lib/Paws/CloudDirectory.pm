package Paws::CloudDirectory;
  use Moose;
  sub service { 'clouddirectory' }
  sub version { '2016-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub AddFacetToObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::AddFacetToObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplySchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ApplySchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::AttachObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::AttachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachToIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::AttachToIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchRead {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::BatchRead', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchWrite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::BatchWrite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::CreateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DeleteDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DeleteFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DeleteObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DeleteSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachFromIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DetachFromIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DetachObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DetachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::DisableDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::EnableDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDirectory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetDirectory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetObjectInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaAsJson {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::GetSchemaAsJson', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppliedSchemaArns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListAppliedSchemaArns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttachedIndices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListAttachedIndices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevelopmentSchemaArns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListDevelopmentSchemaArns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDirectories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListDirectories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFacetAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListFacetAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFacetNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListFacetNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListObjectAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectChildren {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListObjectChildren', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectParents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListObjectParents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListObjectPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListPolicyAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPublishedSchemaArns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListPublishedSchemaArns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LookupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::LookupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::PublishSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSchemaFromJson {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::PutSchemaFromJson', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFacetFromObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::RemoveFacetFromObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFacet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpdateFacet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateObjectAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpdateObjectAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudDirectory::UpdateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AddFacetToObject ApplySchema AttachObject AttachPolicy AttachToIndex BatchRead BatchWrite CreateDirectory CreateFacet CreateIndex CreateObject CreateSchema DeleteDirectory DeleteFacet DeleteObject DeleteSchema DetachFromIndex DetachObject DetachPolicy DisableDirectory EnableDirectory GetDirectory GetFacet GetObjectInformation GetSchemaAsJson ListAppliedSchemaArns ListAttachedIndices ListDevelopmentSchemaArns ListDirectories ListFacetAttributes ListFacetNames ListIndex ListObjectAttributes ListObjectChildren ListObjectParents ListObjectPolicies ListPolicyAttachments ListPublishedSchemaArns ListTagsForResource LookupPolicy PublishSchema PutSchemaFromJson RemoveFacetFromObject TagResource UntagResource UpdateFacet UpdateObjectAttributes UpdateSchema / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory - Perl Interface to AWS Amazon CloudDirectory

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudDirectory');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Cloud Directory

Amazon Cloud Directory is a component of the AWS Directory Service that
simplifies the development and management of cloud-scale web, mobile
and IoT applications. This guide describes the Cloud Directory
operations that you can call programatically and includes detailed
information on data types and errors. For information about AWS
Directory Services features, see AWS Directory Service and the AWS
Directory Service Administration Guide.

=head1 METHODS

=head2 AddFacetToObject(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, SchemaFacet => L<Paws::CloudDirectory::SchemaFacet>, [ObjectAttributeList => ArrayRef[L<Paws::CloudDirectory::AttributeKeyAndValue>]])

Each argument is described in detail in: L<Paws::CloudDirectory::AddFacetToObject>

Returns: a L<Paws::CloudDirectory::AddFacetToObjectResponse> instance

  Adds a new Facet to an object.


=head2 ApplySchema(DirectoryArn => Str, PublishedSchemaArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::ApplySchema>

Returns: a L<Paws::CloudDirectory::ApplySchemaResponse> instance

  Copies input published schema into Directory with same name and version
as that of published schema .


=head2 AttachObject(ChildReference => L<Paws::CloudDirectory::ObjectReference>, DirectoryArn => Str, LinkName => Str, ParentReference => L<Paws::CloudDirectory::ObjectReference>)

Each argument is described in detail in: L<Paws::CloudDirectory::AttachObject>

Returns: a L<Paws::CloudDirectory::AttachObjectResponse> instance

  Attaches an existing object to another object. An object can be
accessed in two ways:

=over

=item 1.

Using the path

=item 2.

Using ObjectIdentifier

=back



=head2 AttachPolicy(ObjectReference => L<Paws::CloudDirectory::ObjectReference>, PolicyReference => L<Paws::CloudDirectory::ObjectReference>, [DirectoryArn => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::AttachPolicy>

Returns: a L<Paws::CloudDirectory::AttachPolicyResponse> instance

  Attaches a policy object to a regular object. An object can have a
limited number of attached policies.


=head2 AttachToIndex(DirectoryArn => Str, IndexReference => L<Paws::CloudDirectory::ObjectReference>, TargetReference => L<Paws::CloudDirectory::ObjectReference>)

Each argument is described in detail in: L<Paws::CloudDirectory::AttachToIndex>

Returns: a L<Paws::CloudDirectory::AttachToIndexResponse> instance

  Attaches the specified object to the specified index.


=head2 BatchRead(DirectoryArn => Str, Operations => ArrayRef[L<Paws::CloudDirectory::BatchReadOperation>], [ConsistencyLevel => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::BatchRead>

Returns: a L<Paws::CloudDirectory::BatchReadResponse> instance

  Performs all the read operations in a batch.


=head2 BatchWrite(DirectoryArn => Str, Operations => ArrayRef[L<Paws::CloudDirectory::BatchWriteOperation>])

Each argument is described in detail in: L<Paws::CloudDirectory::BatchWrite>

Returns: a L<Paws::CloudDirectory::BatchWriteResponse> instance

  Performs all the write operations in a batch. Either all the operations
succeed or none. Batch writes supports only object-related operations.


=head2 CreateDirectory(Name => Str, SchemaArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::CreateDirectory>

Returns: a L<Paws::CloudDirectory::CreateDirectoryResponse> instance

  Creates a Directory by copying the published schema into the directory.
A directory cannot be created without a schema.


=head2 CreateFacet(Name => Str, ObjectType => Str, SchemaArn => Str, [Attributes => ArrayRef[L<Paws::CloudDirectory::FacetAttribute>]])

Each argument is described in detail in: L<Paws::CloudDirectory::CreateFacet>

Returns: a L<Paws::CloudDirectory::CreateFacetResponse> instance

  Creates a new Facet in a schema. Facet creation is allowed only in
development or applied schemas.


=head2 CreateIndex(DirectoryArn => Str, IsUnique => Bool, OrderedIndexedAttributeList => ArrayRef[L<Paws::CloudDirectory::AttributeKey>], [LinkName => Str, ParentReference => L<Paws::CloudDirectory::ObjectReference>])

Each argument is described in detail in: L<Paws::CloudDirectory::CreateIndex>

Returns: a L<Paws::CloudDirectory::CreateIndexResponse> instance

  Creates an index object. See Indexing for more information.


=head2 CreateObject(DirectoryArn => Str, SchemaFacets => ArrayRef[L<Paws::CloudDirectory::SchemaFacet>], [LinkName => Str, ObjectAttributeList => ArrayRef[L<Paws::CloudDirectory::AttributeKeyAndValue>], ParentReference => L<Paws::CloudDirectory::ObjectReference>])

Each argument is described in detail in: L<Paws::CloudDirectory::CreateObject>

Returns: a L<Paws::CloudDirectory::CreateObjectResponse> instance

  Creates an object in a Directory. Additionally attaches the object to a
parent, if a parent reference and LinkName is specified. An object is
simply a collection of Facet attributes. You can also use this API call
to create a policy object, if the facet from which you create the
object is a policy facet.


=head2 CreateSchema(Name => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::CreateSchema>

Returns: a L<Paws::CloudDirectory::CreateSchemaResponse> instance

  Creates a new schema in a development state. A schema can exist in
three phases:

=over

=item *

I<Development:> This is a mutable phase of the schema. All new schemas
are in the development phase. Once the schema is finalized, it can be
published.

=item *

I<Published:> Published schemas are immutable and have a version
associated with them.

=item *

I<Applied:> Applied schemas are mutable in a way that allows you to add
new schema facets. You can also add new, nonrequired attributes to
existing schema facets. You can apply only published schemas to
directories.

=back



=head2 DeleteDirectory(DirectoryArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::DeleteDirectory>

Returns: a L<Paws::CloudDirectory::DeleteDirectoryResponse> instance

  Deletes a directory. Only disabled directories can be deleted. A
deleted directory cannot be undone. Exercise extreme caution when
deleting directories.


=head2 DeleteFacet(Name => Str, SchemaArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::DeleteFacet>

Returns: a L<Paws::CloudDirectory::DeleteFacetResponse> instance

  Deletes a given Facet. All attributes and Rules associated with the
facet will be deleted. Only development schema facets are allowed
deletion.


=head2 DeleteObject(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>)

Each argument is described in detail in: L<Paws::CloudDirectory::DeleteObject>

Returns: a L<Paws::CloudDirectory::DeleteObjectResponse> instance

  Deletes an object and its associated attributes. Only objects with no
children and no parents can be deleted.


=head2 DeleteSchema(SchemaArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::DeleteSchema>

Returns: a L<Paws::CloudDirectory::DeleteSchemaResponse> instance

  Deletes a given schema. Schemas in a development and published state
can only be deleted.


=head2 DetachFromIndex(DirectoryArn => Str, IndexReference => L<Paws::CloudDirectory::ObjectReference>, TargetReference => L<Paws::CloudDirectory::ObjectReference>)

Each argument is described in detail in: L<Paws::CloudDirectory::DetachFromIndex>

Returns: a L<Paws::CloudDirectory::DetachFromIndexResponse> instance

  Detaches the specified object from the specified index.


=head2 DetachObject(DirectoryArn => Str, LinkName => Str, ParentReference => L<Paws::CloudDirectory::ObjectReference>)

Each argument is described in detail in: L<Paws::CloudDirectory::DetachObject>

Returns: a L<Paws::CloudDirectory::DetachObjectResponse> instance

  Detaches a given object from the parent object. The object that is to
be detached from the parent is specified by the link name.


=head2 DetachPolicy(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, PolicyReference => L<Paws::CloudDirectory::ObjectReference>)

Each argument is described in detail in: L<Paws::CloudDirectory::DetachPolicy>

Returns: a L<Paws::CloudDirectory::DetachPolicyResponse> instance

  Detaches a policy from an object.


=head2 DisableDirectory(DirectoryArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::DisableDirectory>

Returns: a L<Paws::CloudDirectory::DisableDirectoryResponse> instance

  Disables the specified directory. Disabled directories cannot be read
or written to. Only enabled directories can be disabled. Disabled
directories may be reenabled.


=head2 EnableDirectory(DirectoryArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::EnableDirectory>

Returns: a L<Paws::CloudDirectory::EnableDirectoryResponse> instance

  Enables the specified directory. Only disabled directories can be
enabled. Once enabled, the directory can then be read and written to.


=head2 GetDirectory(DirectoryArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::GetDirectory>

Returns: a L<Paws::CloudDirectory::GetDirectoryResponse> instance

  Retrieves metadata about a directory.


=head2 GetFacet(Name => Str, SchemaArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::GetFacet>

Returns: a L<Paws::CloudDirectory::GetFacetResponse> instance

  Gets details of the Facet, such as Facet Name, Attributes, Rules, or
ObjectType. You can call this on all kinds of schema facets --
published, development, or applied.


=head2 GetObjectInformation(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::GetObjectInformation>

Returns: a L<Paws::CloudDirectory::GetObjectInformationResponse> instance

  Retrieves metadata about an object.


=head2 GetSchemaAsJson(SchemaArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::GetSchemaAsJson>

Returns: a L<Paws::CloudDirectory::GetSchemaAsJsonResponse> instance

  Retrieves a JSON representation of the schema. See JSON Schema Format
for more information.


=head2 ListAppliedSchemaArns(DirectoryArn => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListAppliedSchemaArns>

Returns: a L<Paws::CloudDirectory::ListAppliedSchemaArnsResponse> instance

  Lists schemas applied to a directory.


=head2 ListAttachedIndices(DirectoryArn => Str, TargetReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListAttachedIndices>

Returns: a L<Paws::CloudDirectory::ListAttachedIndicesResponse> instance

  Lists indices attached to an object.


=head2 ListDevelopmentSchemaArns([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListDevelopmentSchemaArns>

Returns: a L<Paws::CloudDirectory::ListDevelopmentSchemaArnsResponse> instance

  Retrieves the ARNs of schemas in the development state.


=head2 ListDirectories([MaxResults => Int, NextToken => Str, State => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListDirectories>

Returns: a L<Paws::CloudDirectory::ListDirectoriesResponse> instance

  Lists directories created within an account.


=head2 ListFacetAttributes(Name => Str, SchemaArn => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListFacetAttributes>

Returns: a L<Paws::CloudDirectory::ListFacetAttributesResponse> instance

  Retrieves attributes attached to the facet.


=head2 ListFacetNames(SchemaArn => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListFacetNames>

Returns: a L<Paws::CloudDirectory::ListFacetNamesResponse> instance

  Retrieves the names of facets that exist in a schema.


=head2 ListIndex(DirectoryArn => Str, IndexReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str, RangesOnIndexedValues => ArrayRef[L<Paws::CloudDirectory::ObjectAttributeRange>]])

Each argument is described in detail in: L<Paws::CloudDirectory::ListIndex>

Returns: a L<Paws::CloudDirectory::ListIndexResponse> instance

  Lists objects attached to the specified index.


=head2 ListObjectAttributes(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListObjectAttributes>

Returns: a L<Paws::CloudDirectory::ListObjectAttributesResponse> instance

  Lists all attributes associated with an object.


=head2 ListObjectChildren(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListObjectChildren>

Returns: a L<Paws::CloudDirectory::ListObjectChildrenResponse> instance

  Returns a paginated list of child objects associated with a given
object.


=head2 ListObjectParents(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListObjectParents>

Returns: a L<Paws::CloudDirectory::ListObjectParentsResponse> instance

  Lists parent objects associated with a given object in pagination
fashion.


=head2 ListObjectPolicies(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListObjectPolicies>

Returns: a L<Paws::CloudDirectory::ListObjectPoliciesResponse> instance

  Returns policies attached to an object in pagination fashion.


=head2 ListPolicyAttachments(DirectoryArn => Str, PolicyReference => L<Paws::CloudDirectory::ObjectReference>, [ConsistencyLevel => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListPolicyAttachments>

Returns: a L<Paws::CloudDirectory::ListPolicyAttachmentsResponse> instance

  Returns all of the ObjectIdentifiers to which a given policy is
attached.


=head2 ListPublishedSchemaArns([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListPublishedSchemaArns>

Returns: a L<Paws::CloudDirectory::ListPublishedSchemaArnsResponse> instance

  Retrieves published schema ARNs.


=head2 ListTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::ListTagsForResource>

Returns: a L<Paws::CloudDirectory::ListTagsForResourceResponse> instance

  Returns tags for a resource. Tagging is currently supported only for
directories with a limit of 50 tags per directory. All 50 tags are
returned for a given directory with this API call.


=head2 LookupPolicy(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::LookupPolicy>

Returns: a L<Paws::CloudDirectory::LookupPolicyResponse> instance

  Lists all policies from the root of the Directory to the object
specified. If there are no policies present, an empty list is returned.
If policies are present, and if some objects don't have the policies
attached, it returns the objectIdentifier for such objects. If policies
are present, it returns objectIdentifier, policyId, and policyType.
Paths that don't lead to the root from the target object are ignored.


=head2 PublishSchema(DevelopmentSchemaArn => Str, Version => Str, [Name => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::PublishSchema>

Returns: a L<Paws::CloudDirectory::PublishSchemaResponse> instance

  Publishes a development schema with a version. If description and
attributes are specified, PublishSchema overrides the development
schema description and attributes. If not, the development schema
description and attributes are used.


=head2 PutSchemaFromJson(Document => Str, SchemaArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::PutSchemaFromJson>

Returns: a L<Paws::CloudDirectory::PutSchemaFromJsonResponse> instance

  Allows a schema to be updated using JSON upload. Only available for
development schemas. See JSON Schema Format for more information.


=head2 RemoveFacetFromObject(DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>, SchemaFacet => L<Paws::CloudDirectory::SchemaFacet>)

Each argument is described in detail in: L<Paws::CloudDirectory::RemoveFacetFromObject>

Returns: a L<Paws::CloudDirectory::RemoveFacetFromObjectResponse> instance

  Removes the specified facet from the specified object.


=head2 TagResource(ResourceArn => Str, Tags => ArrayRef[L<Paws::CloudDirectory::Tag>])

Each argument is described in detail in: L<Paws::CloudDirectory::TagResource>

Returns: a L<Paws::CloudDirectory::TagResourceResponse> instance

  API for adding tags to a resource.


=head2 UntagResource(ResourceArn => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CloudDirectory::UntagResource>

Returns: a L<Paws::CloudDirectory::UntagResourceResponse> instance

  API for removing tags from a resource.


=head2 UpdateFacet(Name => Str, SchemaArn => Str, [AttributeUpdates => ArrayRef[L<Paws::CloudDirectory::FacetAttributeUpdate>], ObjectType => Str])

Each argument is described in detail in: L<Paws::CloudDirectory::UpdateFacet>

Returns: a L<Paws::CloudDirectory::UpdateFacetResponse> instance

  Does the following:

=over

=item 1.

Adds new Attributes, Rules, or ObjectTypes.

=item 2.

Updates existing Attributes, Rules, or ObjectTypes.

=item 3.

Deletes existing Attributes, Rules, or ObjectTypes.

=back



=head2 UpdateObjectAttributes(AttributeUpdates => ArrayRef[L<Paws::CloudDirectory::ObjectAttributeUpdate>], DirectoryArn => Str, ObjectReference => L<Paws::CloudDirectory::ObjectReference>)

Each argument is described in detail in: L<Paws::CloudDirectory::UpdateObjectAttributes>

Returns: a L<Paws::CloudDirectory::UpdateObjectAttributesResponse> instance

  Updates a given object's attributes.


=head2 UpdateSchema(Name => Str, SchemaArn => Str)

Each argument is described in detail in: L<Paws::CloudDirectory::UpdateSchema>

Returns: a L<Paws::CloudDirectory::UpdateSchemaResponse> instance

  Updates the schema name with a new name. Only development schema names
can be updated.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

