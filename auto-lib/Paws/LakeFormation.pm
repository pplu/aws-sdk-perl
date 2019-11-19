# Generated from json/service_class.tt
package Paws::LakeFormation;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'lakeformation' }
  sub signing_name { 'lakeformation' }
  sub version { '2017-03-31' }
  sub target_prefix { 'AWSLakeFormation' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
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
  sub GrantPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::GrantPermissions', @_);
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
  sub RevokePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::RevokePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LakeFormation::UpdateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchGrantPermissions BatchRevokePermissions DeregisterResource DescribeResource GetDataLakeSettings GetEffectivePermissionsForPath GrantPermissions ListPermissions ListResources PutDataLakeSettings RegisterResource RevokePermissions UpdateResource / }

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

=head2 BatchGrantPermissions

=over

=item Entries => ArrayRef[LakeFormation_BatchPermissionsRequestEntry]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::BatchGrantPermissions>

Returns: a L<Paws::LakeFormation::BatchGrantPermissionsResponse> instance

Batch operation to grant permissions to the principal.


=head2 BatchRevokePermissions

=over

=item Entries => ArrayRef[LakeFormation_BatchPermissionsRequestEntry]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::BatchRevokePermissions>

Returns: a L<Paws::LakeFormation::BatchRevokePermissionsResponse> instance

Batch operation to revoke permissions from the principal.


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

The AWS Lake Formation principal.


=head2 GetEffectivePermissionsForPath

=over

=item ResourceArn => Str

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::GetEffectivePermissionsForPath>

Returns: a L<Paws::LakeFormation::GetEffectivePermissionsForPathResponse> instance

Returns the permissions for a specified table or database resource
located at a path in Amazon S3.


=head2 GrantPermissions

=over

=item Permissions => ArrayRef[Str|Undef]

=item Principal => LakeFormation_DataLakePrincipal

=item Resource => LakeFormation_Resource

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
(https://docs-aws.amazon.com/michigan/latest/dg/security-data-access.html).


=head2 ListPermissions

=over

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Principal => LakeFormation_DataLakePrincipal]

=item [Resource => LakeFormation_Resource]

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
(https://docs-aws.amazon.com/michigan/latest/dg/security-data-access.html).


=head2 ListResources

=over

=item [FilterConditionList => ArrayRef[LakeFormation_FilterCondition]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::ListResources>

Returns: a L<Paws::LakeFormation::ListResourcesResponse> instance

Lists the resources registered to be managed by the Data Catalog.


=head2 PutDataLakeSettings

=over

=item DataLakeSettings => LakeFormation_DataLakeSettings

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::LakeFormation::PutDataLakeSettings>

Returns: a L<Paws::LakeFormation::PutDataLakeSettingsResponse> instance

The AWS Lake Formation principal.


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


=head2 RevokePermissions

=over

=item Permissions => ArrayRef[Str|Undef]

=item Principal => LakeFormation_DataLakePrincipal

=item Resource => LakeFormation_Resource

=item [CatalogId => Str]

=item [PermissionsWithGrantOption => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LakeFormation::RevokePermissions>

Returns: a L<Paws::LakeFormation::RevokePermissionsResponse> instance

Revokes permissions to the principal to access metadata in the Data
Catalog and data organized in underlying data storage such as Amazon
S3.


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

