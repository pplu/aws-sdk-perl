package Paws::LakeFormation;
  use Moose;
  sub service { 'lakeformation' }
  sub signing_name { 'lakeformation' }
  sub version { '2017-03-31' }
  sub target_prefix { 'AWSLakeFormation' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddLFTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::AddLFTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGrantPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::BatchGrantPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchRevokePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::BatchRevokePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLFTag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::CreateLFTag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLFTag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DeleteLFTag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DeregisterResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::DescribeResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataLakeSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetDataLakeSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEffectivePermissionsForPath {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetEffectivePermissionsForPath', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLFTag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetLFTag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceLFTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GetResourceLFTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GrantPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GrantPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLFTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListLFTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDataLakeSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::PutDataLakeSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::RegisterResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveLFTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::RemoveLFTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::RevokePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchDatabasesByLFTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::SearchDatabasesByLFTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTablesByLFTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::SearchTablesByLFTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLFTag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateLFTag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AddLFTagsToResource BatchGrantPermissions BatchRevokePermissions CreateLFTag DeleteLFTag DeregisterResource DescribeResource GetDataLakeSettings GetEffectivePermissionsForPath GetLFTag GetResourceLFTags GrantPermissions ListLFTags ListPermissions ListResources PutDataLakeSettings RegisterResource RemoveLFTagsFromResource RevokePermissions SearchDatabasesByLFTags SearchTablesByLFTags UpdateLFTag UpdateResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation - Perl Interface to AWS AWS Lake Formation

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LakeFormation');
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

AWS Lake Formation

Defines the public endpoint for the AWS Lake Formation service.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31>


=head1 METHODS

=head2 AddLFTagsToResource

=over

=item LFTags => ArrayRef[L<Paws::LakeFormation::LFTagPair>]

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::AddLFTagsToResource>

Returns: a L<Paws::LakeFormation::AddLFTagsToResourceResponse> instance

Attaches one or more tags to an existing resource.


=head2 BatchGrantPermissions

=over

=item Entries => ArrayRef[L<Paws::LakeFormation::BatchPermissionsRequestEntry>]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::BatchGrantPermissions>

Returns: a L<Paws::LakeFormation::BatchGrantPermissionsResponse> instance

Batch operation to grant permissions to the principal.


=head2 BatchRevokePermissions

=over

=item Entries => ArrayRef[L<Paws::LakeFormation::BatchPermissionsRequestEntry>]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::BatchRevokePermissions>

Returns: a L<Paws::LakeFormation::BatchRevokePermissionsResponse> instance

Batch operation to revoke permissions from the principal.


=head2 CreateLFTag

=over

=item TagKey => Str

=item TagValues => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::CreateLFTag>

Returns: a L<Paws::LakeFormation::CreateLFTagResponse> instance

Creates a tag with the specified name and values.


=head2 DeleteLFTag

=over

=item TagKey => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::DeleteLFTag>

Returns: a L<Paws::LakeFormation::DeleteLFTagResponse> instance

Deletes the specified tag key name. If the attribute key does not exist
or the tag does not exist, then the operation will not do anything. If
the attribute key exists, then the operation checks if any resources
are tagged with this attribute key, if yes, the API throws a 400
Exception with the message "Delete not allowed" as the tag key is still
attached with resources. You can consider untagging resources with this
tag key.


=head2 DeregisterResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::DeregisterResource>

Returns: a L<Paws::LakeFormation::DeregisterResourceResponse> instance

Deregisters the resource as managed by the Data Catalog.

When you deregister a path, Lake Formation removes the path from the
inline policy attached to your service-linked role.


=head2 DescribeResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::DescribeResource>

Returns: a L<Paws::LakeFormation::DescribeResourceResponse> instance

Retrieves the current data access role for the given resource
registered in AWS Lake Formation.


=head2 GetDataLakeSettings

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetDataLakeSettings>

Returns: a L<Paws::LakeFormation::GetDataLakeSettingsResponse> instance

Retrieves the list of the data lake administrators of a Lake
Formation-managed data lake.


=head2 GetEffectivePermissionsForPath

=over

=item ResourceArn => Str

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetEffectivePermissionsForPath>

Returns: a L<Paws::LakeFormation::GetEffectivePermissionsForPathResponse> instance

Returns the Lake Formation permissions for a specified table or
database resource located at a path in Amazon S3.
C<GetEffectivePermissionsForPath> will not return databases and tables
if the catalog is encrypted.


=head2 GetLFTag

=over

=item TagKey => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetLFTag>

Returns: a L<Paws::LakeFormation::GetLFTagResponse> instance

Returns a tag definition.


=head2 GetResourceLFTags

=over

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]

=item [ShowAssignedLFTags => Bool]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetResourceLFTags>

Returns: a L<Paws::LakeFormation::GetResourceLFTagsResponse> instance

Returns the tags applied to a resource.


=head2 GrantPermissions

=over

=item Permissions => ArrayRef[Str|Undef]

=item Principal => L<Paws::LakeFormation::DataLakePrincipal>

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]

=item [PermissionsWithGrantOption => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GrantPermissions>

Returns: a L<Paws::LakeFormation::GrantPermissionsResponse> instance

Grants permissions to the principal to access metadata in the Data
Catalog and data organized in underlying data storage such as Amazon
S3.

For information about permissions, see Security and Access Control to
Metadata and Data
(https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html).


=head2 ListLFTags

=over

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceShareType => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListLFTags>

Returns: a L<Paws::LakeFormation::ListLFTagsResponse> instance

Lists tags that the requester has permission to view.


=head2 ListPermissions

=over

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => L<Paws::LakeFormation::DataLakePrincipal>]

=item [Resource => L<Paws::LakeFormation::Resource>]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListPermissions>

Returns: a L<Paws::LakeFormation::ListPermissionsResponse> instance

Returns a list of the principal permissions on the resource, filtered
by the permissions of the caller. For example, if you are granted an
ALTER permission, you are able to see only the principal permissions
for ALTER.

This operation returns only those permissions that have been explicitly
granted.

For information about permissions, see Security and Access Control to
Metadata and Data
(https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html).


=head2 ListResources

=over

=item [FilterConditionList => ArrayRef[L<Paws::LakeFormation::FilterCondition>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListResources>

Returns: a L<Paws::LakeFormation::ListResourcesResponse> instance

Lists the resources registered to be managed by the Data Catalog.


=head2 PutDataLakeSettings

=over

=item DataLakeSettings => L<Paws::LakeFormation::DataLakeSettings>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::PutDataLakeSettings>

Returns: a L<Paws::LakeFormation::PutDataLakeSettingsResponse> instance

Sets the list of data lake administrators who have admin privileges on
all resources managed by Lake Formation. For more information on admin
privileges, see Granting Lake Formation Permissions
(https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html).

This API replaces the current list of data lake admins with the new
list being passed. To add an admin, fetch the current list and add the
new admin to that list and pass that list in this API.


=head2 RegisterResource

=over

=item ResourceArn => Str

=item [RoleArn => Str]

=item [UseServiceLinkedRole => Bool]


=back

Each argument is described in detail in: L<Paws::LakeFormation::RegisterResource>

Returns: a L<Paws::LakeFormation::RegisterResourceResponse> instance

Registers the resource as managed by the Data Catalog.

To add or update data, Lake Formation needs read/write access to the
chosen Amazon S3 path. Choose a role that you know has permission to do
this, or choose the AWSServiceRoleForLakeFormationDataAccess
service-linked role. When you register the first Amazon S3 path, the
service-linked role and a new inline policy are created on your behalf.
Lake Formation adds the first path to the inline policy and attaches it
to the service-linked role. When you register subsequent paths, Lake
Formation adds the path to the existing policy.

The following request registers a new location and gives AWS Lake
Formation permission to use the service-linked role to access that
location.

C<ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true>

If C<UseServiceLinkedRole> is not set to true, you must provide or set
the C<RoleArn>:

C<arn:aws:iam::12345:role/my-data-access-role>


=head2 RemoveLFTagsFromResource

=over

=item LFTags => ArrayRef[L<Paws::LakeFormation::LFTagPair>]

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::RemoveLFTagsFromResource>

Returns: a L<Paws::LakeFormation::RemoveLFTagsFromResourceResponse> instance

Removes a tag from the resource. Only database, table, or
tableWithColumns resource are allowed. To tag columns, use the column
inclusion list in C<tableWithColumns> to specify column input.


=head2 RevokePermissions

=over

=item Permissions => ArrayRef[Str|Undef]

=item Principal => L<Paws::LakeFormation::DataLakePrincipal>

=item Resource => L<Paws::LakeFormation::Resource>

=item [CatalogId => Str]

=item [PermissionsWithGrantOption => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::RevokePermissions>

Returns: a L<Paws::LakeFormation::RevokePermissionsResponse> instance

Revokes permissions to the principal to access metadata in the Data
Catalog and data organized in underlying data storage such as Amazon
S3.


=head2 SearchDatabasesByLFTags

=over

=item Expression => ArrayRef[L<Paws::LakeFormation::LFTag>]

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::SearchDatabasesByLFTags>

Returns: a L<Paws::LakeFormation::SearchDatabasesByLFTagsResponse> instance

This operation allows a search on C<DATABASE> resources by
C<TagCondition>. This operation is used by admins who want to grant
user permissions on certain C<TagConditions>. Before making a grant,
the admin can use C<SearchDatabasesByTags> to find all resources where
the given C<TagConditions> are valid to verify whether the returned
resources can be shared.


=head2 SearchTablesByLFTags

=over

=item Expression => ArrayRef[L<Paws::LakeFormation::LFTag>]

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::SearchTablesByLFTags>

Returns: a L<Paws::LakeFormation::SearchTablesByLFTagsResponse> instance

This operation allows a search on C<TABLE> resources by C<LFTag>s. This
will be used by admins who want to grant user permissions on certain
LFTags. Before making a grant, the admin can use
C<SearchTablesByLFTags> to find all resources where the given C<LFTag>s
are valid to verify whether the returned resources can be shared.


=head2 UpdateLFTag

=over

=item TagKey => Str

=item [CatalogId => Str]

=item [TagValuesToAdd => ArrayRef[Str|Undef]]

=item [TagValuesToDelete => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::UpdateLFTag>

Returns: a L<Paws::LakeFormation::UpdateLFTagResponse> instance

Updates the list of possible values for the specified tag key. If the
tag does not exist, the operation throws an EntityNotFoundException.
The values in the delete key values will be deleted from list of
possible values. If any value in the delete key values is attached to a
resource, then API errors out with a 400 Exception - "Update not
allowed". Untag the attribute before deleting the tag key's value.


=head2 UpdateResource

=over

=item ResourceArn => Str

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::LakeFormation::UpdateResource>

Returns: a L<Paws::LakeFormation::UpdateResourceResponse> instance

Updates the data access role used for vending access to the given
(registered) resource in AWS Lake Formation.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

