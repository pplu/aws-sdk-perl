package Paws::Quicksight;
  use Moose;
  sub service { 'quicksight' }
  sub signing_name { 'quicksight' }
  sub version { '2018-04-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CancelIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroupMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateGroupMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIAMPolicyAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateIAMPolicyAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTemplateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateTemplateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroupMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteGroupMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIAMPolicyAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteIAMPolicyAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTemplateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteTemplateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserByPrincipalId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteUserByPrincipalId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDashboardPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeDashboardPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataSetPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeDataSetPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataSourcePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeDataSourcePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIAMPolicyAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeIAMPolicyAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTemplateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeTemplateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTemplatePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeTemplatePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDashboardEmbedUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::GetDashboardEmbedUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDashboards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListDashboards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDashboardVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListDashboardVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListDataSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListGroupMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIAMPolicyAssignments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListIAMPolicyAssignments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIAMPolicyAssignmentsForUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListIAMPolicyAssignmentsForUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIngestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListIngestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplateAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListTemplateAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListUserGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::RegisterUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDashboardPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateDashboardPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDashboardPublishedVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateDashboardPublishedVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSetPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateDataSetPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSourcePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateDataSourcePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIAMPolicyAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateIAMPolicyAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateTemplateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplatePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateTemplatePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CancelIngestion CreateDashboard CreateDataSet CreateDataSource CreateGroup CreateGroupMembership CreateIAMPolicyAssignment CreateIngestion CreateTemplate CreateTemplateAlias DeleteDashboard DeleteDataSet DeleteDataSource DeleteGroup DeleteGroupMembership DeleteIAMPolicyAssignment DeleteTemplate DeleteTemplateAlias DeleteUser DeleteUserByPrincipalId DescribeDashboard DescribeDashboardPermissions DescribeDataSet DescribeDataSetPermissions DescribeDataSource DescribeDataSourcePermissions DescribeGroup DescribeIAMPolicyAssignment DescribeIngestion DescribeTemplate DescribeTemplateAlias DescribeTemplatePermissions DescribeUser GetDashboardEmbedUrl ListDashboards ListDashboardVersions ListDataSets ListDataSources ListGroupMemberships ListGroups ListIAMPolicyAssignments ListIAMPolicyAssignmentsForUser ListIngestions ListTagsForResource ListTemplateAliases ListTemplates ListTemplateVersions ListUserGroups ListUsers RegisterUser TagResource UntagResource UpdateDashboard UpdateDashboardPermissions UpdateDashboardPublishedVersion UpdateDataSet UpdateDataSetPermissions UpdateDataSource UpdateDataSourcePermissions UpdateGroup UpdateIAMPolicyAssignment UpdateTemplate UpdateTemplateAlias UpdateTemplatePermissions UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight - Perl Interface to AWS Amazon QuickSight

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Quicksight');
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

Amazon QuickSight API Reference

Amazon QuickSight is a fully managed, serverless business intelligence
service for the AWS Cloud that makes it easy to extend data and
insights to every user in your organization. This API reference
contains documentation for a programming interface that you can use to
manage Amazon QuickSight.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01>


=head1 METHODS

=head2 CancelIngestion

=over

=item AwsAccountId => Str

=item DataSetId => Str

=item IngestionId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::CancelIngestion>

Returns: a L<Paws::Quicksight::CancelIngestionResponse> instance

Cancels an ongoing ingestion of data into SPICE.


=head2 CreateDashboard

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item Name => Str

=item SourceEntity => L<Paws::Quicksight::DashboardSourceEntity>

=item [DashboardPublishOptions => L<Paws::Quicksight::DashboardPublishOptions>]

=item [Parameters => L<Paws::Quicksight::Parameters>]

=item [Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [Tags => ArrayRef[L<Paws::Quicksight::Tag>]]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateDashboard>

Returns: a L<Paws::Quicksight::CreateDashboardResponse> instance

Creates a dashboard from a template. To first create a template, see
the CreateTemplate API.

A dashboard is an entity in QuickSight which identifies Quicksight
reports, created from analyses. QuickSight dashboards are sharable.
With the right permissions, you can create scheduled email reports from
them. The C<CreateDashboard>, C<DescribeDashboard> and
C<ListDashboardsByUser> APIs act on the dashboard entity. If you have
the correct permissions, you can create a dashboard from a template
that exists in a different AWS account.


=head2 CreateDataSet

=over

=item AwsAccountId => Str

=item DataSetId => Str

=item ImportMode => Str

=item Name => Str

=item PhysicalTableMap => L<Paws::Quicksight::PhysicalTableMap>

=item [ColumnGroups => ArrayRef[L<Paws::Quicksight::ColumnGroup>]]

=item [LogicalTableMap => L<Paws::Quicksight::LogicalTableMap>]

=item [Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [RowLevelPermissionDataSet => L<Paws::Quicksight::RowLevelPermissionDataSet>]

=item [Tags => ArrayRef[L<Paws::Quicksight::Tag>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateDataSet>

Returns: a L<Paws::Quicksight::CreateDataSetResponse> instance

Creates a dataset.


=head2 CreateDataSource

=over

=item AwsAccountId => Str

=item DataSourceId => Str

=item Name => Str

=item Type => Str

=item [Credentials => L<Paws::Quicksight::DataSourceCredentials>]

=item [DataSourceParameters => L<Paws::Quicksight::DataSourceParameters>]

=item [Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [SslProperties => L<Paws::Quicksight::SslProperties>]

=item [Tags => ArrayRef[L<Paws::Quicksight::Tag>]]

=item [VpcConnectionProperties => L<Paws::Quicksight::VpcConnectionProperties>]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateDataSource>

Returns: a L<Paws::Quicksight::CreateDataSourceResponse> instance

Creates a data source.


=head2 CreateGroup

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateGroup>

Returns: a L<Paws::Quicksight::CreateGroupResponse> instance

Creates an Amazon QuickSight group.

The permissions resource is
C<arn:aws:quicksight:us-east-1:I<E<lt>relevant-aws-account-idE<gt>>:group/default/I<E<lt>group-nameE<gt>>
>.

The response is a group object.


=head2 CreateGroupMembership

=over

=item AwsAccountId => Str

=item GroupName => Str

=item MemberName => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateGroupMembership>

Returns: a L<Paws::Quicksight::CreateGroupMembershipResponse> instance

Adds an Amazon QuickSight user to an Amazon QuickSight group.


=head2 CreateIAMPolicyAssignment

=over

=item AssignmentName => Str

=item AssignmentStatus => Str

=item AwsAccountId => Str

=item Namespace => Str

=item [Identities => L<Paws::Quicksight::IdentityMap>]

=item [PolicyArn => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateIAMPolicyAssignment>

Returns: a L<Paws::Quicksight::CreateIAMPolicyAssignmentResponse> instance

Creates an assignment with one specified IAM policy Amazon Resource
Name (ARN) and will assigned to specified groups or users of
QuickSight. Users and groups need to be in the same namespace.


=head2 CreateIngestion

=over

=item AwsAccountId => Str

=item DataSetId => Str

=item IngestionId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateIngestion>

Returns: a L<Paws::Quicksight::CreateIngestionResponse> instance

Creates and starts a new SPICE ingestion on a dataset

Any ingestions operating on tagged datasets inherit the same tags
automatically for use in access control. For an example, see How do I
create an IAM policy to control access to Amazon EC2 resources using
tags?
(https://aws.example.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/)
in the AWS Knowledge Center. Tags are visible on the tagged dataset,
but not on the ingestion resource.


=head2 CreateTemplate

=over

=item AwsAccountId => Str

=item SourceEntity => L<Paws::Quicksight::TemplateSourceEntity>

=item TemplateId => Str

=item [Name => Str]

=item [Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [Tags => ArrayRef[L<Paws::Quicksight::Tag>]]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateTemplate>

Returns: a L<Paws::Quicksight::CreateTemplateResponse> instance

Creates a template from an existing QuickSight analysis or template.
The resulting template can be used to create a dashboard.

A template is an entity in QuickSight which encapsulates the metadata
required to create an analysis that can be used to create dashboard. It
adds a layer of abstraction by use placeholders to replace the dataset
associated with the analysis. You can use templates to create
dashboards by replacing dataset placeholders with datasets which follow
the same schema that was used to create the source analysis and
template.


=head2 CreateTemplateAlias

=over

=item AliasName => Str

=item AwsAccountId => Str

=item TemplateId => Str

=item TemplateVersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateTemplateAlias>

Returns: a L<Paws::Quicksight::CreateTemplateAliasResponse> instance

Creates a template alias for a template.


=head2 DeleteDashboard

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteDashboard>

Returns: a L<Paws::Quicksight::DeleteDashboardResponse> instance

Deletes a dashboard.


=head2 DeleteDataSet

=over

=item AwsAccountId => Str

=item DataSetId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteDataSet>

Returns: a L<Paws::Quicksight::DeleteDataSetResponse> instance

Deletes a dataset.


=head2 DeleteDataSource

=over

=item AwsAccountId => Str

=item DataSourceId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteDataSource>

Returns: a L<Paws::Quicksight::DeleteDataSourceResponse> instance

Deletes the data source permanently. This action breaks all the
datasets that reference the deleted data source.


=head2 DeleteGroup

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteGroup>

Returns: a L<Paws::Quicksight::DeleteGroupResponse> instance

Removes a user group from Amazon QuickSight.


=head2 DeleteGroupMembership

=over

=item AwsAccountId => Str

=item GroupName => Str

=item MemberName => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteGroupMembership>

Returns: a L<Paws::Quicksight::DeleteGroupMembershipResponse> instance

Removes a user from a group so that the user is no longer a member of
the group.


=head2 DeleteIAMPolicyAssignment

=over

=item AssignmentName => Str

=item AwsAccountId => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteIAMPolicyAssignment>

Returns: a L<Paws::Quicksight::DeleteIAMPolicyAssignmentResponse> instance

Deletes an existing assignment.


=head2 DeleteTemplate

=over

=item AwsAccountId => Str

=item TemplateId => Str

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteTemplate>

Returns: a L<Paws::Quicksight::DeleteTemplateResponse> instance

Deletes a template.


=head2 DeleteTemplateAlias

=over

=item AliasName => Str

=item AwsAccountId => Str

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteTemplateAlias>

Returns: a L<Paws::Quicksight::DeleteTemplateAliasResponse> instance

Update template alias of given template.


=head2 DeleteUser

=over

=item AwsAccountId => Str

=item Namespace => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteUser>

Returns: a L<Paws::Quicksight::DeleteUserResponse> instance

Deletes the Amazon QuickSight user that is associated with the identity
of the AWS Identity and Access Management (IAM) user or role that's
making the call. The IAM user isn't deleted as a result of this call.


=head2 DeleteUserByPrincipalId

=over

=item AwsAccountId => Str

=item Namespace => Str

=item PrincipalId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteUserByPrincipalId>

Returns: a L<Paws::Quicksight::DeleteUserByPrincipalIdResponse> instance

Deletes a user identified by its principal ID.


=head2 DescribeDashboard

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item [AliasName => Str]

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeDashboard>

Returns: a L<Paws::Quicksight::DescribeDashboardResponse> instance

Provides a summary for a dashboard.


=head2 DescribeDashboardPermissions

=over

=item AwsAccountId => Str

=item DashboardId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeDashboardPermissions>

Returns: a L<Paws::Quicksight::DescribeDashboardPermissionsResponse> instance

Describes read and write permissions on a dashboard.


=head2 DescribeDataSet

=over

=item AwsAccountId => Str

=item DataSetId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeDataSet>

Returns: a L<Paws::Quicksight::DescribeDataSetResponse> instance

Describes a dataset.


=head2 DescribeDataSetPermissions

=over

=item AwsAccountId => Str

=item DataSetId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeDataSetPermissions>

Returns: a L<Paws::Quicksight::DescribeDataSetPermissionsResponse> instance

Describes the permissions on a dataset.

The permissions resource is
C<arn:aws:quicksight:region:aws-account-id:dataset/data-set-id>.


=head2 DescribeDataSource

=over

=item AwsAccountId => Str

=item DataSourceId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeDataSource>

Returns: a L<Paws::Quicksight::DescribeDataSourceResponse> instance

Describes a data source.


=head2 DescribeDataSourcePermissions

=over

=item AwsAccountId => Str

=item DataSourceId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeDataSourcePermissions>

Returns: a L<Paws::Quicksight::DescribeDataSourcePermissionsResponse> instance

Describes the resource permissions for a data source.


=head2 DescribeGroup

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeGroup>

Returns: a L<Paws::Quicksight::DescribeGroupResponse> instance

Returns an Amazon QuickSight group's description and Amazon Resource
Name (ARN).


=head2 DescribeIAMPolicyAssignment

=over

=item AssignmentName => Str

=item AwsAccountId => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeIAMPolicyAssignment>

Returns: a L<Paws::Quicksight::DescribeIAMPolicyAssignmentResponse> instance

Describes an existing IAMPolicy Assignment by specified assignment
name.


=head2 DescribeIngestion

=over

=item AwsAccountId => Str

=item DataSetId => Str

=item IngestionId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeIngestion>

Returns: a L<Paws::Quicksight::DescribeIngestionResponse> instance

Describes a SPICE ingestion.


=head2 DescribeTemplate

=over

=item AwsAccountId => Str

=item TemplateId => Str

=item [AliasName => Str]

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeTemplate>

Returns: a L<Paws::Quicksight::DescribeTemplateResponse> instance

Describes a template's metadata.


=head2 DescribeTemplateAlias

=over

=item AliasName => Str

=item AwsAccountId => Str

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeTemplateAlias>

Returns: a L<Paws::Quicksight::DescribeTemplateAliasResponse> instance

Describes the template aliases of a template.


=head2 DescribeTemplatePermissions

=over

=item AwsAccountId => Str

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeTemplatePermissions>

Returns: a L<Paws::Quicksight::DescribeTemplatePermissionsResponse> instance

Describes read and write permissions on a template.


=head2 DescribeUser

=over

=item AwsAccountId => Str

=item Namespace => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeUser>

Returns: a L<Paws::Quicksight::DescribeUserResponse> instance

Returns information about a user, given the user name.


=head2 GetDashboardEmbedUrl

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item IdentityType => Str

=item [ResetDisabled => Bool]

=item [SessionLifetimeInMinutes => Int]

=item [UndoRedoDisabled => Bool]

=item [UserArn => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::GetDashboardEmbedUrl>

Returns: a L<Paws::Quicksight::GetDashboardEmbedUrlResponse> instance

Generates a server-side embeddable URL and authorization code. Before
this can work properly, first you need to configure the dashboards and
user permissions. For more information, see the Amazon QuickSight User
Guide section on Embedding Amazon QuickSight Dashboards
(https://docs.aws.amazon.com/quicksight/latest/user/embedding-dashboards.html)
or see the Amazon QuickSight API Reference section on Embedding Amazon
QuickSight Dashboards
(https://docs.aws.amazon.com/quicksight/latest/APIReference/qs-dev-embedded-dashboards.html)
.

Currently, you can use C<GetDashboardEmbedURL> only from the server,
not from the userE<rsquo>s browser.


=head2 ListDashboards

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListDashboards>

Returns: a L<Paws::Quicksight::ListDashboardsResponse> instance

Lists dashboards in the AWS account.


=head2 ListDashboardVersions

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListDashboardVersions>

Returns: a L<Paws::Quicksight::ListDashboardVersionsResponse> instance

Lists all the versions of the dashboards in the Quicksight
subscription.


=head2 ListDataSets

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListDataSets>

Returns: a L<Paws::Quicksight::ListDataSetsResponse> instance

Lists all of the datasets belonging to this account in an AWS region.

The permissions resource is
C<arn:aws:quicksight:region:aws-account-id:dataset/*>.


=head2 ListDataSources

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListDataSources>

Returns: a L<Paws::Quicksight::ListDataSourcesResponse> instance

Lists data sources in current AWS Region that belong to this AWS
account.


=head2 ListGroupMemberships

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListGroupMemberships>

Returns: a L<Paws::Quicksight::ListGroupMembershipsResponse> instance

Lists member users in a group.


=head2 ListGroups

=over

=item AwsAccountId => Str

=item Namespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListGroups>

Returns: a L<Paws::Quicksight::ListGroupsResponse> instance

Lists all user groups in Amazon QuickSight.


=head2 ListIAMPolicyAssignments

=over

=item AwsAccountId => Str

=item Namespace => Str

=item [AssignmentStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListIAMPolicyAssignments>

Returns: a L<Paws::Quicksight::ListIAMPolicyAssignmentsResponse> instance

Lists assignments in current QuickSight account.


=head2 ListIAMPolicyAssignmentsForUser

=over

=item AwsAccountId => Str

=item Namespace => Str

=item UserName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListIAMPolicyAssignmentsForUser>

Returns: a L<Paws::Quicksight::ListIAMPolicyAssignmentsForUserResponse> instance

Lists all the assignments and the Amazon Resource Names (ARNs) for the
associated IAM policies assigned to the specified user and the group or
groups that the user belongs to.


=head2 ListIngestions

=over

=item AwsAccountId => Str

=item DataSetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListIngestions>

Returns: a L<Paws::Quicksight::ListIngestionsResponse> instance

Lists the history of SPICE ingestions for a dataset.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::ListTagsForResource>

Returns: a L<Paws::Quicksight::ListTagsForResourceResponse> instance

Lists the tags assigned to a resource.


=head2 ListTemplateAliases

=over

=item AwsAccountId => Str

=item TemplateId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListTemplateAliases>

Returns: a L<Paws::Quicksight::ListTemplateAliasesResponse> instance

Lists all the aliases of a template.


=head2 ListTemplates

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListTemplates>

Returns: a L<Paws::Quicksight::ListTemplatesResponse> instance

Lists all the templates in the QuickSight account.


=head2 ListTemplateVersions

=over

=item AwsAccountId => Str

=item TemplateId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListTemplateVersions>

Returns: a L<Paws::Quicksight::ListTemplateVersionsResponse> instance

Lists all the versions of the templates in the Quicksight account.


=head2 ListUserGroups

=over

=item AwsAccountId => Str

=item Namespace => Str

=item UserName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListUserGroups>

Returns: a L<Paws::Quicksight::ListUserGroupsResponse> instance

Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
member of.


=head2 ListUsers

=over

=item AwsAccountId => Str

=item Namespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListUsers>

Returns: a L<Paws::Quicksight::ListUsersResponse> instance

Returns a list of all of the Amazon QuickSight users belonging to this
account.


=head2 RegisterUser

=over

=item AwsAccountId => Str

=item Email => Str

=item IdentityType => Str

=item Namespace => Str

=item UserRole => Str

=item [IamArn => Str]

=item [SessionName => Str]

=item [UserName => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::RegisterUser>

Returns: a L<Paws::Quicksight::RegisterUserResponse> instance

Creates an Amazon QuickSight user, whose identity is associated with
the AWS Identity and Access Management (IAM) identity or role specified
in the request.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Quicksight::Tag>]


=back

Each argument is described in detail in: L<Paws::Quicksight::TagResource>

Returns: a L<Paws::Quicksight::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified QuickSight
resource.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only resources with certain tag values. You can use
the C<TagResource> operation with a resource that already has tags. If
you specify a new tag key for the resource, this tag is appended to the
list of tags associated with the resource. If you specify a tag key
that is already associated with the resource, the new tag value that
you specify replaces the previous value for that tag.

You can associate as many as 50 tags with a resource. QuickSight
supports tagging on data set, data source, dashboard, and template.

Tagging for QuickSight works in a similar way to tagging for other AWS
services, except for the following:

=over

=item *

You can't use tags to track AWS costs for QuickSight. This restriction
is because QuickSight costs are based on users and SPICE capacity,
which aren't taggable resources.

=item *

QuickSight doesn't currently support the Tag Editor for AWS Resource
Groups.

=back



=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Quicksight::UntagResource>

Returns: a L<Paws::Quicksight::UntagResourceResponse> instance

Removes a tag or tags from a resource.


=head2 UpdateDashboard

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item Name => Str

=item SourceEntity => L<Paws::Quicksight::DashboardSourceEntity>

=item [DashboardPublishOptions => L<Paws::Quicksight::DashboardPublishOptions>]

=item [Parameters => L<Paws::Quicksight::Parameters>]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateDashboard>

Returns: a L<Paws::Quicksight::UpdateDashboardResponse> instance

Updates a dashboard in the AWS account.


=head2 UpdateDashboardPermissions

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item [GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateDashboardPermissions>

Returns: a L<Paws::Quicksight::UpdateDashboardPermissionsResponse> instance

Updates read and write permissions on a dashboard.


=head2 UpdateDashboardPublishedVersion

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateDashboardPublishedVersion>

Returns: a L<Paws::Quicksight::UpdateDashboardPublishedVersionResponse> instance

Updates the published version of a dashboard.


=head2 UpdateDataSet

=over

=item AwsAccountId => Str

=item DataSetId => Str

=item ImportMode => Str

=item Name => Str

=item PhysicalTableMap => L<Paws::Quicksight::PhysicalTableMap>

=item [ColumnGroups => ArrayRef[L<Paws::Quicksight::ColumnGroup>]]

=item [LogicalTableMap => L<Paws::Quicksight::LogicalTableMap>]

=item [RowLevelPermissionDataSet => L<Paws::Quicksight::RowLevelPermissionDataSet>]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateDataSet>

Returns: a L<Paws::Quicksight::UpdateDataSetResponse> instance

Updates a dataset.


=head2 UpdateDataSetPermissions

=over

=item AwsAccountId => Str

=item DataSetId => Str

=item [GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateDataSetPermissions>

Returns: a L<Paws::Quicksight::UpdateDataSetPermissionsResponse> instance

Updates the permissions on a dataset.

The permissions resource is
C<arn:aws:quicksight:region:aws-account-id:dataset/data-set-id>.


=head2 UpdateDataSource

=over

=item AwsAccountId => Str

=item DataSourceId => Str

=item Name => Str

=item [Credentials => L<Paws::Quicksight::DataSourceCredentials>]

=item [DataSourceParameters => L<Paws::Quicksight::DataSourceParameters>]

=item [SslProperties => L<Paws::Quicksight::SslProperties>]

=item [VpcConnectionProperties => L<Paws::Quicksight::VpcConnectionProperties>]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateDataSource>

Returns: a L<Paws::Quicksight::UpdateDataSourceResponse> instance

Updates a data source.


=head2 UpdateDataSourcePermissions

=over

=item AwsAccountId => Str

=item DataSourceId => Str

=item [GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateDataSourcePermissions>

Returns: a L<Paws::Quicksight::UpdateDataSourcePermissionsResponse> instance

Updates the permissions to a data source.


=head2 UpdateGroup

=over

=item AwsAccountId => Str

=item GroupName => Str

=item Namespace => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateGroup>

Returns: a L<Paws::Quicksight::UpdateGroupResponse> instance

Changes a group description.


=head2 UpdateIAMPolicyAssignment

=over

=item AssignmentName => Str

=item AwsAccountId => Str

=item Namespace => Str

=item [AssignmentStatus => Str]

=item [Identities => L<Paws::Quicksight::IdentityMap>]

=item [PolicyArn => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateIAMPolicyAssignment>

Returns: a L<Paws::Quicksight::UpdateIAMPolicyAssignmentResponse> instance

Updates an existing assignment. This operation updates only the
optional parameter or parameters that are specified in the request.


=head2 UpdateTemplate

=over

=item AwsAccountId => Str

=item SourceEntity => L<Paws::Quicksight::TemplateSourceEntity>

=item TemplateId => Str

=item [Name => Str]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateTemplate>

Returns: a L<Paws::Quicksight::UpdateTemplateResponse> instance

Updates a template from an existing QuickSight analysis.


=head2 UpdateTemplateAlias

=over

=item AliasName => Str

=item AwsAccountId => Str

=item TemplateId => Str

=item TemplateVersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateTemplateAlias>

Returns: a L<Paws::Quicksight::UpdateTemplateAliasResponse> instance

Updates the template alias of a template.


=head2 UpdateTemplatePermissions

=over

=item AwsAccountId => Str

=item TemplateId => Str

=item [GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateTemplatePermissions>

Returns: a L<Paws::Quicksight::UpdateTemplatePermissionsResponse> instance

Updates the permissions on a template.


=head2 UpdateUser

=over

=item AwsAccountId => Str

=item Email => Str

=item Namespace => Str

=item Role => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateUser>

Returns: a L<Paws::Quicksight::UpdateUserResponse> instance

Updates an Amazon QuickSight user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

