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
  sub CreateAccountCustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateAccountCustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateAnalysis', @_);
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
  sub CreateFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFolderMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateFolderMembership', @_);
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
  sub CreateNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateNamespace', @_);
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
  sub CreateTheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateTheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThemeAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::CreateThemeAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountCustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteAccountCustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteAnalysis', @_);
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
  sub DeleteFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFolderMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteFolderMembership', @_);
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
  sub DeleteNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteNamespace', @_);
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
  sub DeleteTheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteTheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThemeAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DeleteThemeAlias', @_);
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
  sub DescribeAccountCustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeAccountCustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAnalysisPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeAnalysisPermissions', @_);
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
  sub DescribeFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFolderPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeFolderPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFolderResolvedPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeFolderResolvedPermissions', @_);
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
  sub DescribeNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeNamespace', @_);
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
  sub DescribeTheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeTheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThemeAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeThemeAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThemePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::DescribeThemePermissions', @_);
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
  sub GetSessionEmbedUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::GetSessionEmbedUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnalyses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListAnalyses', @_);
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
  sub ListFolderMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListFolderMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFolders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListFolders', @_);
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
  sub ListNamespaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListNamespaces', @_);
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
  sub ListThemeAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListThemeAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThemes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListThemes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThemeVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::ListThemeVersions', @_);
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
  sub RestoreAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::RestoreAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchAnalyses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::SearchAnalyses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchDashboards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::SearchDashboards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchFolders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::SearchFolders', @_);
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
  sub UpdateAccountCustomization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateAccountCustomization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnalysisPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateAnalysisPermissions', @_);
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
  sub UpdateFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFolderPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateFolderPermissions', @_);
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
  sub UpdateTheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateTheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThemeAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateThemeAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThemePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateThemePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Quicksight::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAnalyses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnalyses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAnalyses(@_, NextToken => $next_result->NextToken);
        push @{ $result->AnalysisSummaryList }, @{ $next_result->AnalysisSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AnalysisSummaryList') foreach (@{ $result->AnalysisSummaryList });
        $result = $self->ListAnalyses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AnalysisSummaryList') foreach (@{ $result->AnalysisSummaryList });
    }

    return undef
  }
  sub ListAllDashboards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDashboards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDashboards(@_, NextToken => $next_result->NextToken);
        push @{ $result->DashboardSummaryList }, @{ $next_result->DashboardSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DashboardSummaryList') foreach (@{ $result->DashboardSummaryList });
        $result = $self->ListDashboards(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DashboardSummaryList') foreach (@{ $result->DashboardSummaryList });
    }

    return undef
  }
  sub ListAllDashboardVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDashboardVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDashboardVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->DashboardVersionSummaryList }, @{ $next_result->DashboardVersionSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DashboardVersionSummaryList') foreach (@{ $result->DashboardVersionSummaryList });
        $result = $self->ListDashboardVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DashboardVersionSummaryList') foreach (@{ $result->DashboardVersionSummaryList });
    }

    return undef
  }
  sub ListAllDataSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataSetSummaries }, @{ $next_result->DataSetSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataSetSummaries') foreach (@{ $result->DataSetSummaries });
        $result = $self->ListDataSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataSetSummaries') foreach (@{ $result->DataSetSummaries });
    }

    return undef
  }
  sub ListAllDataSources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataSources(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataSources }, @{ $next_result->DataSources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataSources') foreach (@{ $result->DataSources });
        $result = $self->ListDataSources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataSources') foreach (@{ $result->DataSources });
    }

    return undef
  }
  sub ListAllIngestions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIngestions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIngestions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Ingestions }, @{ $next_result->Ingestions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Ingestions') foreach (@{ $result->Ingestions });
        $result = $self->ListIngestions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Ingestions') foreach (@{ $result->Ingestions });
    }

    return undef
  }
  sub ListAllNamespaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNamespaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNamespaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Namespaces }, @{ $next_result->Namespaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Namespaces') foreach (@{ $result->Namespaces });
        $result = $self->ListNamespaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Namespaces') foreach (@{ $result->Namespaces });
    }

    return undef
  }
  sub ListAllTemplateAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplateAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTemplateAliases(@_, NextToken => $next_result->NextToken);
        push @{ $result->TemplateAliasList }, @{ $next_result->TemplateAliasList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TemplateAliasList') foreach (@{ $result->TemplateAliasList });
        $result = $self->ListTemplateAliases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TemplateAliasList') foreach (@{ $result->TemplateAliasList });
    }

    return undef
  }
  sub ListAllTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTemplates(@_, NextToken => $next_result->NextToken);
        push @{ $result->TemplateSummaryList }, @{ $next_result->TemplateSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TemplateSummaryList') foreach (@{ $result->TemplateSummaryList });
        $result = $self->ListTemplates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TemplateSummaryList') foreach (@{ $result->TemplateSummaryList });
    }

    return undef
  }
  sub ListAllTemplateVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplateVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTemplateVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->TemplateVersionSummaryList }, @{ $next_result->TemplateVersionSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TemplateVersionSummaryList') foreach (@{ $result->TemplateVersionSummaryList });
        $result = $self->ListTemplateVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TemplateVersionSummaryList') foreach (@{ $result->TemplateVersionSummaryList });
    }

    return undef
  }
  sub ListAllThemes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThemes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListThemes(@_, NextToken => $next_result->NextToken);
        push @{ $result->ThemeSummaryList }, @{ $next_result->ThemeSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ThemeSummaryList') foreach (@{ $result->ThemeSummaryList });
        $result = $self->ListThemes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ThemeSummaryList') foreach (@{ $result->ThemeSummaryList });
    }

    return undef
  }
  sub ListAllThemeVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThemeVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListThemeVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ThemeVersionSummaryList }, @{ $next_result->ThemeVersionSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ThemeVersionSummaryList') foreach (@{ $result->ThemeVersionSummaryList });
        $result = $self->ListThemeVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ThemeVersionSummaryList') foreach (@{ $result->ThemeVersionSummaryList });
    }

    return undef
  }
  sub SearchAllAnalyses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchAnalyses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchAnalyses(@_, NextToken => $next_result->NextToken);
        push @{ $result->AnalysisSummaryList }, @{ $next_result->AnalysisSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AnalysisSummaryList') foreach (@{ $result->AnalysisSummaryList });
        $result = $self->SearchAnalyses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AnalysisSummaryList') foreach (@{ $result->AnalysisSummaryList });
    }

    return undef
  }
  sub SearchAllDashboards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchDashboards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchDashboards(@_, NextToken => $next_result->NextToken);
        push @{ $result->DashboardSummaryList }, @{ $next_result->DashboardSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DashboardSummaryList') foreach (@{ $result->DashboardSummaryList });
        $result = $self->SearchDashboards(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DashboardSummaryList') foreach (@{ $result->DashboardSummaryList });
    }

    return undef
  }


  sub operations { qw/CancelIngestion CreateAccountCustomization CreateAnalysis CreateDashboard CreateDataSet CreateDataSource CreateFolder CreateFolderMembership CreateGroup CreateGroupMembership CreateIAMPolicyAssignment CreateIngestion CreateNamespace CreateTemplate CreateTemplateAlias CreateTheme CreateThemeAlias DeleteAccountCustomization DeleteAnalysis DeleteDashboard DeleteDataSet DeleteDataSource DeleteFolder DeleteFolderMembership DeleteGroup DeleteGroupMembership DeleteIAMPolicyAssignment DeleteNamespace DeleteTemplate DeleteTemplateAlias DeleteTheme DeleteThemeAlias DeleteUser DeleteUserByPrincipalId DescribeAccountCustomization DescribeAccountSettings DescribeAnalysis DescribeAnalysisPermissions DescribeDashboard DescribeDashboardPermissions DescribeDataSet DescribeDataSetPermissions DescribeDataSource DescribeDataSourcePermissions DescribeFolder DescribeFolderPermissions DescribeFolderResolvedPermissions DescribeGroup DescribeIAMPolicyAssignment DescribeIngestion DescribeNamespace DescribeTemplate DescribeTemplateAlias DescribeTemplatePermissions DescribeTheme DescribeThemeAlias DescribeThemePermissions DescribeUser GetDashboardEmbedUrl GetSessionEmbedUrl ListAnalyses ListDashboards ListDashboardVersions ListDataSets ListDataSources ListFolderMembers ListFolders ListGroupMemberships ListGroups ListIAMPolicyAssignments ListIAMPolicyAssignmentsForUser ListIngestions ListNamespaces ListTagsForResource ListTemplateAliases ListTemplates ListTemplateVersions ListThemeAliases ListThemes ListThemeVersions ListUserGroups ListUsers RegisterUser RestoreAnalysis SearchAnalyses SearchDashboards SearchFolders TagResource UntagResource UpdateAccountCustomization UpdateAccountSettings UpdateAnalysis UpdateAnalysisPermissions UpdateDashboard UpdateDashboardPermissions UpdateDashboardPublishedVersion UpdateDataSet UpdateDataSetPermissions UpdateDataSource UpdateDataSourcePermissions UpdateFolder UpdateFolderPermissions UpdateGroup UpdateIAMPolicyAssignment UpdateTemplate UpdateTemplateAlias UpdateTemplatePermissions UpdateTheme UpdateThemeAlias UpdateThemePermissions UpdateUser / }

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


=head2 CreateAccountCustomization

=over

=item AccountCustomization => L<Paws::Quicksight::AccountCustomization>

=item AwsAccountId => Str

=item [Namespace => Str]

=item [Tags => ArrayRef[L<Paws::Quicksight::Tag>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateAccountCustomization>

Returns: a L<Paws::Quicksight::CreateAccountCustomizationResponse> instance

Creates Amazon QuickSight customizations the current AWS Region.
Currently, you can add a custom default theme by using the
C<CreateAccountCustomization> or C<UpdateAccountCustomization> API
operation. To further customize QuickSight by removing QuickSight
sample assets and videos for all new users, see Customizing QuickSight
(https://docs.aws.amazon.com/quicksight/latest/user/customizing-quicksight.html)
in the I<Amazon QuickSight User Guide.>

You can create customizations for your AWS account or, if you specify a
namespace, for a QuickSight namespace instead. Customizations that
apply to a namespace always override customizations that apply to an
AWS account. To find out which customizations apply, use the
C<DescribeAccountCustomization> API operation.

Before you use the C<CreateAccountCustomization> API operation to add a
theme as the namespace default, make sure that you first share the
theme with the namespace. If you don't share it with the namespace, the
theme isn't visible to your users even if you make it the default
theme. To check if the theme is shared, view the current permissions by
using the C< DescribeThemePermissions > API operation. To share the
theme, grant permissions by using the C< UpdateThemePermissions > API
operation.


=head2 CreateAnalysis

=over

=item AnalysisId => Str

=item AwsAccountId => Str

=item Name => Str

=item SourceEntity => L<Paws::Quicksight::AnalysisSourceEntity>

=item [Parameters => L<Paws::Quicksight::Parameters>]

=item [Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [Tags => ArrayRef[L<Paws::Quicksight::Tag>]]

=item [ThemeArn => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateAnalysis>

Returns: a L<Paws::Quicksight::CreateAnalysisResponse> instance

Creates an analysis in Amazon QuickSight.


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

=item [ThemeArn => Str]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateDashboard>

Returns: a L<Paws::Quicksight::CreateDashboardResponse> instance

Creates a dashboard from a template. To first create a template, see
the C< CreateTemplate > API operation.

A dashboard is an entity in QuickSight that identifies QuickSight
reports, created from analyses. You can share QuickSight dashboards.
With the right permissions, you can create scheduled email reports from
them. If you have the correct permissions, you can create a dashboard
from a template that exists in a different AWS account.


=head2 CreateDataSet

=over

=item AwsAccountId => Str

=item DataSetId => Str

=item ImportMode => Str

=item Name => Str

=item PhysicalTableMap => L<Paws::Quicksight::PhysicalTableMap>

=item [ColumnGroups => ArrayRef[L<Paws::Quicksight::ColumnGroup>]]

=item [ColumnLevelPermissionRules => ArrayRef[L<Paws::Quicksight::ColumnLevelPermissionRule>]]

=item [FieldFolders => L<Paws::Quicksight::FieldFolderMap>]

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


=head2 CreateFolder

=over

=item AwsAccountId => Str

=item FolderId => Str

=item [FolderType => Str]

=item [Name => Str]

=item [ParentFolderArn => Str]

=item [Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [Tags => ArrayRef[L<Paws::Quicksight::Tag>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateFolder>

Returns: a L<Paws::Quicksight::CreateFolderResponse> instance

Creates an empty shared folder.


=head2 CreateFolderMembership

=over

=item AwsAccountId => Str

=item FolderId => Str

=item MemberId => Str

=item MemberType => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateFolderMembership>

Returns: a L<Paws::Quicksight::CreateFolderMembershipResponse> instance

Adds an asset, such as a dashboard, analysis, or dataset into a folder.


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

Creates an assignment with one specified IAM policy, identified by its
Amazon Resource Name (ARN). This policy assignment is attached to the
specified groups or users of Amazon QuickSight. Assignment names are
unique per AWS account. To avoid overwriting rules in other namespaces,
use assignment names that are unique.


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
(http://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/)
in the AWS Knowledge Center. Tags are visible on the tagged dataset,
but not on the ingestion resource.


=head2 CreateNamespace

=over

=item AwsAccountId => Str

=item IdentityStore => Str

=item Namespace => Str

=item [Tags => ArrayRef[L<Paws::Quicksight::Tag>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateNamespace>

Returns: a L<Paws::Quicksight::CreateNamespaceResponse> instance

(Enterprise edition only) Creates a new namespace for you to use with
Amazon QuickSight.

A namespace allows you to isolate the QuickSight users and groups that
are registered for that namespace. Users that access the namespace can
share assets only with other users or groups in the same namespace.
They can't see users and groups in other namespaces. You can create a
namespace after your AWS account is subscribed to QuickSight. The
namespace must be unique within the AWS account. By default, there is a
limit of 100 namespaces per AWS account. To increase your limit, create
a ticket with AWS Support.


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
You can use the resulting template to create a dashboard.

A I<template> is an entity in QuickSight that encapsulates the metadata
required to create an analysis and that you can use to create s
dashboard. A template adds a layer of abstraction by using placeholders
to replace the dataset associated with the analysis. You can use
templates to create dashboards by replacing dataset placeholders with
datasets that follow the same schema that was used to create the source
analysis and template.


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


=head2 CreateTheme

=over

=item AwsAccountId => Str

=item BaseThemeId => Str

=item Configuration => L<Paws::Quicksight::ThemeConfiguration>

=item Name => Str

=item ThemeId => Str

=item [Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [Tags => ArrayRef[L<Paws::Quicksight::Tag>]]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateTheme>

Returns: a L<Paws::Quicksight::CreateThemeResponse> instance

Creates a theme.

A I<theme> is set of configuration options for color and layout. Themes
apply to analyses and dashboards. For more information, see Using
Themes in Amazon QuickSight
(https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html)
in the I<Amazon QuickSight User Guide>.


=head2 CreateThemeAlias

=over

=item AliasName => Str

=item AwsAccountId => Str

=item ThemeId => Str

=item ThemeVersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Quicksight::CreateThemeAlias>

Returns: a L<Paws::Quicksight::CreateThemeAliasResponse> instance

Creates a theme alias for a theme.


=head2 DeleteAccountCustomization

=over

=item AwsAccountId => Str

=item [Namespace => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteAccountCustomization>

Returns: a L<Paws::Quicksight::DeleteAccountCustomizationResponse> instance

Deletes all Amazon QuickSight customizations in this AWS Region for the
specified AWS account and QuickSight namespace.


=head2 DeleteAnalysis

=over

=item AnalysisId => Str

=item AwsAccountId => Str

=item [ForceDeleteWithoutRecovery => Bool]

=item [RecoveryWindowInDays => Int]


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteAnalysis>

Returns: a L<Paws::Quicksight::DeleteAnalysisResponse> instance

Deletes an analysis from Amazon QuickSight. You can optionally include
a recovery window during which you can restore the analysis. If you
don't specify a recovery window value, the operation defaults to 30
days. QuickSight attaches a C<DeletionTime> stamp to the response that
specifies the end of the recovery window. At the end of the recovery
window, QuickSight deletes the analysis permanently.

At any time before recovery window ends, you can use the
C<RestoreAnalysis> API operation to remove the C<DeletionTime> stamp
and cancel the deletion of the analysis. The analysis remains visible
in the API until it's deleted, so you can describe it but you can't
make a template from it.

An analysis that's scheduled for deletion isn't accessible in the
QuickSight console. To access it in the console, restore it. Deleting
an analysis doesn't delete the dashboards that you publish from it.


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

Deletes the data source permanently. This operation breaks all the
datasets that reference the deleted data source.


=head2 DeleteFolder

=over

=item AwsAccountId => Str

=item FolderId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteFolder>

Returns: a L<Paws::Quicksight::DeleteFolderResponse> instance

Deletes an empty folder.


=head2 DeleteFolderMembership

=over

=item AwsAccountId => Str

=item FolderId => Str

=item MemberId => Str

=item MemberType => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteFolderMembership>

Returns: a L<Paws::Quicksight::DeleteFolderMembershipResponse> instance

Removes an asset, such as a dashboard, analysis, or dataset, from a
folder.


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

Deletes an existing IAM policy assignment.


=head2 DeleteNamespace

=over

=item AwsAccountId => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteNamespace>

Returns: a L<Paws::Quicksight::DeleteNamespaceResponse> instance

Deletes a namespace and the users and groups that are associated with
the namespace. This is an asynchronous process. Assets including
dashboards, analyses, datasets and data sources are not deleted. To
delete these assets, you use the API operations for the relevant asset.


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

Deletes the item that the specified template alias points to. If you
provide a specific alias, you delete the version of the template that
the alias points to.


=head2 DeleteTheme

=over

=item AwsAccountId => Str

=item ThemeId => Str

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteTheme>

Returns: a L<Paws::Quicksight::DeleteThemeResponse> instance

Deletes a theme.


=head2 DeleteThemeAlias

=over

=item AliasName => Str

=item AwsAccountId => Str

=item ThemeId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DeleteThemeAlias>

Returns: a L<Paws::Quicksight::DeleteThemeAliasResponse> instance

Deletes the version of the theme that the specified theme alias points
to. If you provide a specific alias, you delete the version of the
theme that the alias points to.


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


=head2 DescribeAccountCustomization

=over

=item AwsAccountId => Str

=item [Namespace => Str]

=item [Resolved => Bool]


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeAccountCustomization>

Returns: a L<Paws::Quicksight::DescribeAccountCustomizationResponse> instance

Describes the customizations associated with the provided AWS account
and Amazon QuickSight namespace in an AWS Region. The QuickSight
console evaluates which customizations to apply by running this API
operation with the C<Resolved> flag included.

To determine what customizations display when you run this command, it
can help to visualize the relationship of the entities involved.

=over

=item *

C<AWS Account> - The AWS account exists at the top of the hierarchy. It
has the potential to use all of the AWS Regions and AWS Services. When
you subscribe to QuickSight, you choose one AWS Region to use as your
home Region. That's where your free SPICE capacity is located. You can
use QuickSight in any supported AWS Region.

=item *

C<AWS Region> - In each AWS Region where you sign in to QuickSight at
least once, QuickSight acts as a separate instance of the same service.
If you have a user directory, it resides in us-east-1, which is the US
East (N. Virginia). Generally speaking, these users have access to
QuickSight in any AWS Region, unless they are constrained to a
namespace.

To run the command in a different AWS Region, you change your Region
settings. If you're using the AWS CLI, you can use one of the following
options:

=over

=item *

Use command line options
(https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html).

=item *

Use named profiles
(https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html).

=item *

Run C<aws configure> to change your default AWS Region. Use Enter to
key the same settings for your keys. For more information, see
Configuring the AWS CLI
(https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).

=back

=item *

C<Namespace> - A QuickSight namespace is a partition that contains
users and assets (data sources, datasets, dashboards, and so on). To
access assets that are in a specific namespace, users and groups must
also be part of the same namespace. People who share a namespace are
completely isolated from users and assets in other namespaces, even if
they are in the same AWS account and AWS Region.

=item *

C<Applied customizations> - Within an AWS Region, a set of QuickSight
customizations can apply to an AWS account or to a namespace. Settings
that you apply to a namespace override settings that you apply to an
AWS account. All settings are isolated to a single AWS Region. To apply
them in other AWS Regions, run the C<CreateAccountCustomization>
command in each AWS Region where you want to apply the same
customizations.

=back



=head2 DescribeAccountSettings

=over

=item AwsAccountId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeAccountSettings>

Returns: a L<Paws::Quicksight::DescribeAccountSettingsResponse> instance

Describes the settings that were used when your QuickSight subscription
was first created in this AWS account.


=head2 DescribeAnalysis

=over

=item AnalysisId => Str

=item AwsAccountId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeAnalysis>

Returns: a L<Paws::Quicksight::DescribeAnalysisResponse> instance

Provides a summary of the metadata for an analysis.


=head2 DescribeAnalysisPermissions

=over

=item AnalysisId => Str

=item AwsAccountId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeAnalysisPermissions>

Returns: a L<Paws::Quicksight::DescribeAnalysisPermissionsResponse> instance

Provides the read and write permissions for an analysis.


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

Describes read and write permissions for a dashboard.


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


=head2 DescribeFolder

=over

=item AwsAccountId => Str

=item FolderId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeFolder>

Returns: a L<Paws::Quicksight::DescribeFolderResponse> instance

Describes a folder.


=head2 DescribeFolderPermissions

=over

=item AwsAccountId => Str

=item FolderId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeFolderPermissions>

Returns: a L<Paws::Quicksight::DescribeFolderPermissionsResponse> instance

Describes permissions for a folder.


=head2 DescribeFolderResolvedPermissions

=over

=item AwsAccountId => Str

=item FolderId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeFolderResolvedPermissions>

Returns: a L<Paws::Quicksight::DescribeFolderResolvedPermissionsResponse> instance

Describes the folder resolved permissions. Permissions consists of both
folder direct permissions and the inherited permissions from the
ancestor folders.


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

Describes an existing IAM policy assignment, as specified by the
assignment name.


=head2 DescribeIngestion

=over

=item AwsAccountId => Str

=item DataSetId => Str

=item IngestionId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeIngestion>

Returns: a L<Paws::Quicksight::DescribeIngestionResponse> instance

Describes a SPICE ingestion.


=head2 DescribeNamespace

=over

=item AwsAccountId => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeNamespace>

Returns: a L<Paws::Quicksight::DescribeNamespaceResponse> instance

Describes the current namespace.


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

Describes the template alias for a template.


=head2 DescribeTemplatePermissions

=over

=item AwsAccountId => Str

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeTemplatePermissions>

Returns: a L<Paws::Quicksight::DescribeTemplatePermissionsResponse> instance

Describes read and write permissions on a template.


=head2 DescribeTheme

=over

=item AwsAccountId => Str

=item ThemeId => Str

=item [AliasName => Str]

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeTheme>

Returns: a L<Paws::Quicksight::DescribeThemeResponse> instance

Describes a theme.


=head2 DescribeThemeAlias

=over

=item AliasName => Str

=item AwsAccountId => Str

=item ThemeId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeThemeAlias>

Returns: a L<Paws::Quicksight::DescribeThemeAliasResponse> instance

Describes the alias for a theme.


=head2 DescribeThemePermissions

=over

=item AwsAccountId => Str

=item ThemeId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::DescribeThemePermissions>

Returns: a L<Paws::Quicksight::DescribeThemePermissionsResponse> instance

Describes the read and write permissions for a theme.


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

=item [AdditionalDashboardIds => ArrayRef[Str|Undef]]

=item [Namespace => Str]

=item [ResetDisabled => Bool]

=item [SessionLifetimeInMinutes => Int]

=item [StatePersistenceEnabled => Bool]

=item [UndoRedoDisabled => Bool]

=item [UserArn => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::GetDashboardEmbedUrl>

Returns: a L<Paws::Quicksight::GetDashboardEmbedUrlResponse> instance

Generates a session URL and authorization code that you can use to
embed an Amazon QuickSight read-only dashboard in your web server code.
Before you use this command, make sure that you have configured the
dashboards and permissions.

Currently, you can use C<GetDashboardEmbedURL> only from the server,
not from the user's browser. The following rules apply to the
combination of URL and authorization code:

=over

=item *

They must be used together.

=item *

They can be used one time only.

=item *

They are valid for 5 minutes after you run this command.

=item *

The resulting user session is valid for 10 hours.

=back

For more information, see Embedded Analytics
(https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html)
in the I<Amazon QuickSight User Guide>.


=head2 GetSessionEmbedUrl

=over

=item AwsAccountId => Str

=item [EntryPoint => Str]

=item [SessionLifetimeInMinutes => Int]

=item [UserArn => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::GetSessionEmbedUrl>

Returns: a L<Paws::Quicksight::GetSessionEmbedUrlResponse> instance

Generates a session URL and authorization code that you can use to
embed the Amazon QuickSight console in your web server code. Use
C<GetSessionEmbedUrl> where you want to provide an authoring portal
that allows users to create data sources, datasets, analyses, and
dashboards. The users who access an embedded QuickSight console need
belong to the author or admin security cohort. If you want to restrict
permissions to some of these features, add a custom permissions profile
to the user with the C< UpdateUser > API operation. Use C< RegisterUser
> API operation to add a new user with a custom permission profile
attached. For more information, see the following sections in the
I<Amazon QuickSight User Guide>:

=over

=item *

Embedding the Amazon QuickSight Console
(https://docs.aws.amazon.com/quicksight/latest/user/embedding-the-quicksight-console.html)

=item *

Customizing Access to the Amazon QuickSight Console
(https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html)

=back



=head2 ListAnalyses

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListAnalyses>

Returns: a L<Paws::Quicksight::ListAnalysesResponse> instance

Lists Amazon QuickSight analyses that exist in the specified AWS
account.


=head2 ListDashboards

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListDashboards>

Returns: a L<Paws::Quicksight::ListDashboardsResponse> instance

Lists dashboards in an AWS account.


=head2 ListDashboardVersions

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListDashboardVersions>

Returns: a L<Paws::Quicksight::ListDashboardVersionsResponse> instance

Lists all the versions of the dashboards in the QuickSight
subscription.


=head2 ListDataSets

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListDataSets>

Returns: a L<Paws::Quicksight::ListDataSetsResponse> instance

Lists all of the datasets belonging to the current AWS account in an
AWS Region.

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


=head2 ListFolderMembers

=over

=item AwsAccountId => Str

=item FolderId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListFolderMembers>

Returns: a L<Paws::Quicksight::ListFolderMembersResponse> instance

List all assets (C<DASHBOARD>, C<ANALYSIS>, and C<DATASET>) in a
folder.


=head2 ListFolders

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListFolders>

Returns: a L<Paws::Quicksight::ListFoldersResponse> instance

Lists all folders in an account.


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

Lists IAM policy assignments in the current Amazon QuickSight account.


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

Lists all the IAM policy assignments, including the Amazon Resource
Names (ARNs) for the IAM policies assigned to the specified user and
group or groups that the user belongs to.


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


=head2 ListNamespaces

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListNamespaces>

Returns: a L<Paws::Quicksight::ListNamespacesResponse> instance

Lists the namespaces for the specified AWS account.


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

Lists all the templates in the current Amazon QuickSight account.


=head2 ListTemplateVersions

=over

=item AwsAccountId => Str

=item TemplateId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListTemplateVersions>

Returns: a L<Paws::Quicksight::ListTemplateVersionsResponse> instance

Lists all the versions of the templates in the current Amazon
QuickSight account.


=head2 ListThemeAliases

=over

=item AwsAccountId => Str

=item ThemeId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListThemeAliases>

Returns: a L<Paws::Quicksight::ListThemeAliasesResponse> instance

Lists all the aliases of a theme.


=head2 ListThemes

=over

=item AwsAccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListThemes>

Returns: a L<Paws::Quicksight::ListThemesResponse> instance

Lists all the themes in the current AWS account.


=head2 ListThemeVersions

=over

=item AwsAccountId => Str

=item ThemeId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::ListThemeVersions>

Returns: a L<Paws::Quicksight::ListThemeVersionsResponse> instance

Lists all the versions of the themes in the current AWS account.


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

=item [CustomFederationProviderUrl => Str]

=item [CustomPermissionsName => Str]

=item [ExternalLoginFederationProviderType => Str]

=item [ExternalLoginId => Str]

=item [IamArn => Str]

=item [SessionName => Str]

=item [UserName => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::RegisterUser>

Returns: a L<Paws::Quicksight::RegisterUserResponse> instance

Creates an Amazon QuickSight user, whose identity is associated with
the AWS Identity and Access Management (IAM) identity or role specified
in the request.


=head2 RestoreAnalysis

=over

=item AnalysisId => Str

=item AwsAccountId => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::RestoreAnalysis>

Returns: a L<Paws::Quicksight::RestoreAnalysisResponse> instance

Restores an analysis.


=head2 SearchAnalyses

=over

=item AwsAccountId => Str

=item Filters => ArrayRef[L<Paws::Quicksight::AnalysisSearchFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::SearchAnalyses>

Returns: a L<Paws::Quicksight::SearchAnalysesResponse> instance

Searches for analyses that belong to the user specified in the filter.


=head2 SearchDashboards

=over

=item AwsAccountId => Str

=item Filters => ArrayRef[L<Paws::Quicksight::DashboardSearchFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::SearchDashboards>

Returns: a L<Paws::Quicksight::SearchDashboardsResponse> instance

Searches for dashboards that belong to a user.


=head2 SearchFolders

=over

=item AwsAccountId => Str

=item Filters => ArrayRef[L<Paws::Quicksight::FolderSearchFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::SearchFolders>

Returns: a L<Paws::Quicksight::SearchFoldersResponse> instance

Searches the subfolders in a folder.


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


=head2 UpdateAccountCustomization

=over

=item AccountCustomization => L<Paws::Quicksight::AccountCustomization>

=item AwsAccountId => Str

=item [Namespace => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateAccountCustomization>

Returns: a L<Paws::Quicksight::UpdateAccountCustomizationResponse> instance

Updates Amazon QuickSight customizations the current AWS Region.
Currently, the only customization you can use is a theme.

You can use customizations for your AWS account or, if you specify a
namespace, for a QuickSight namespace instead. Customizations that
apply to a namespace override customizations that apply to an AWS
account. To find out which customizations apply, use the
C<DescribeAccountCustomization> API operation.


=head2 UpdateAccountSettings

=over

=item AwsAccountId => Str

=item DefaultNamespace => Str

=item [NotificationEmail => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateAccountSettings>

Returns: a L<Paws::Quicksight::UpdateAccountSettingsResponse> instance

Updates the Amazon QuickSight settings in your AWS account.


=head2 UpdateAnalysis

=over

=item AnalysisId => Str

=item AwsAccountId => Str

=item Name => Str

=item SourceEntity => L<Paws::Quicksight::AnalysisSourceEntity>

=item [Parameters => L<Paws::Quicksight::Parameters>]

=item [ThemeArn => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateAnalysis>

Returns: a L<Paws::Quicksight::UpdateAnalysisResponse> instance

Updates an analysis in Amazon QuickSight


=head2 UpdateAnalysisPermissions

=over

=item AnalysisId => Str

=item AwsAccountId => Str

=item [GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateAnalysisPermissions>

Returns: a L<Paws::Quicksight::UpdateAnalysisPermissionsResponse> instance

Updates the read and write permissions for an analysis.


=head2 UpdateDashboard

=over

=item AwsAccountId => Str

=item DashboardId => Str

=item Name => Str

=item SourceEntity => L<Paws::Quicksight::DashboardSourceEntity>

=item [DashboardPublishOptions => L<Paws::Quicksight::DashboardPublishOptions>]

=item [Parameters => L<Paws::Quicksight::Parameters>]

=item [ThemeArn => Str]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateDashboard>

Returns: a L<Paws::Quicksight::UpdateDashboardResponse> instance

Updates a dashboard in an AWS account.


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

=item [ColumnLevelPermissionRules => ArrayRef[L<Paws::Quicksight::ColumnLevelPermissionRule>]]

=item [FieldFolders => L<Paws::Quicksight::FieldFolderMap>]

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


=head2 UpdateFolder

=over

=item AwsAccountId => Str

=item FolderId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateFolder>

Returns: a L<Paws::Quicksight::UpdateFolderResponse> instance

Updates the name of a folder.


=head2 UpdateFolderPermissions

=over

=item AwsAccountId => Str

=item FolderId => Str

=item [GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateFolderPermissions>

Returns: a L<Paws::Quicksight::UpdateFolderPermissionsResponse> instance

Updates permissions of a folder.


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

Updates an existing IAM policy assignment. This operation updates only
the optional parameter or parameters that are specified in the request.
This overwrites all of the users included in C<Identities>.


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

Updates a template from an existing Amazon QuickSight analysis or
another template.


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

Updates the resource permissions for a template.


=head2 UpdateTheme

=over

=item AwsAccountId => Str

=item BaseThemeId => Str

=item ThemeId => Str

=item [Configuration => L<Paws::Quicksight::ThemeConfiguration>]

=item [Name => Str]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateTheme>

Returns: a L<Paws::Quicksight::UpdateThemeResponse> instance

Updates a theme.


=head2 UpdateThemeAlias

=over

=item AliasName => Str

=item AwsAccountId => Str

=item ThemeId => Str

=item ThemeVersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateThemeAlias>

Returns: a L<Paws::Quicksight::UpdateThemeAliasResponse> instance

Updates an alias of a theme.


=head2 UpdateThemePermissions

=over

=item AwsAccountId => Str

=item ThemeId => Str

=item [GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]

=item [RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateThemePermissions>

Returns: a L<Paws::Quicksight::UpdateThemePermissionsResponse> instance

Updates the resource permissions for a theme. Permissions apply to the
action to grant or revoke permissions on, for example
C<"quicksight:DescribeTheme">.

Theme permissions apply in groupings. Valid groupings include the
following for the three levels of permissions, which are user, owner,
or no permissions:

=over

=item *

User

=over

=item *

C<"quicksight:DescribeTheme">

=item *

C<"quicksight:DescribeThemeAlias">

=item *

C<"quicksight:ListThemeAliases">

=item *

C<"quicksight:ListThemeVersions">

=back

=item *

Owner

=over

=item *

C<"quicksight:DescribeTheme">

=item *

C<"quicksight:DescribeThemeAlias">

=item *

C<"quicksight:ListThemeAliases">

=item *

C<"quicksight:ListThemeVersions">

=item *

C<"quicksight:DeleteTheme">

=item *

C<"quicksight:UpdateTheme">

=item *

C<"quicksight:CreateThemeAlias">

=item *

C<"quicksight:DeleteThemeAlias">

=item *

C<"quicksight:UpdateThemeAlias">

=item *

C<"quicksight:UpdateThemePermissions">

=item *

C<"quicksight:DescribeThemePermissions">

=back

=item *

To specify no permissions, omit the permissions list.

=back



=head2 UpdateUser

=over

=item AwsAccountId => Str

=item Email => Str

=item Namespace => Str

=item Role => Str

=item UserName => Str

=item [CustomFederationProviderUrl => Str]

=item [CustomPermissionsName => Str]

=item [ExternalLoginFederationProviderType => Str]

=item [ExternalLoginId => Str]

=item [UnapplyCustomPermissions => Bool]


=back

Each argument is described in detail in: L<Paws::Quicksight::UpdateUser>

Returns: a L<Paws::Quicksight::UpdateUserResponse> instance

Updates an Amazon QuickSight user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAnalyses(sub { },AwsAccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAnalyses(AwsAccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AnalysisSummaryList, passing the object as the first parameter, and the string 'AnalysisSummaryList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListAnalysesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDashboards(sub { },AwsAccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDashboards(AwsAccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DashboardSummaryList, passing the object as the first parameter, and the string 'DashboardSummaryList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListDashboardsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDashboardVersions(sub { },AwsAccountId => Str, DashboardId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDashboardVersions(AwsAccountId => Str, DashboardId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DashboardVersionSummaryList, passing the object as the first parameter, and the string 'DashboardVersionSummaryList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListDashboardVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSets(sub { },AwsAccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataSets(AwsAccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataSetSummaries, passing the object as the first parameter, and the string 'DataSetSummaries' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListDataSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSources(sub { },AwsAccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataSources(AwsAccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataSources, passing the object as the first parameter, and the string 'DataSources' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListDataSourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIngestions(sub { },AwsAccountId => Str, DataSetId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIngestions(AwsAccountId => Str, DataSetId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Ingestions, passing the object as the first parameter, and the string 'Ingestions' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListIngestionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNamespaces(sub { },AwsAccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllNamespaces(AwsAccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Namespaces, passing the object as the first parameter, and the string 'Namespaces' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListNamespacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplateAliases(sub { },AwsAccountId => Str, TemplateId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTemplateAliases(AwsAccountId => Str, TemplateId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TemplateAliasList, passing the object as the first parameter, and the string 'TemplateAliasList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListTemplateAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplates(sub { },AwsAccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTemplates(AwsAccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TemplateSummaryList, passing the object as the first parameter, and the string 'TemplateSummaryList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplateVersions(sub { },AwsAccountId => Str, TemplateId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTemplateVersions(AwsAccountId => Str, TemplateId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TemplateVersionSummaryList, passing the object as the first parameter, and the string 'TemplateVersionSummaryList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListTemplateVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThemes(sub { },AwsAccountId => Str, [MaxResults => Int, NextToken => Str, Type => Str])

=head2 ListAllThemes(AwsAccountId => Str, [MaxResults => Int, NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ThemeSummaryList, passing the object as the first parameter, and the string 'ThemeSummaryList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListThemesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThemeVersions(sub { },AwsAccountId => Str, ThemeId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllThemeVersions(AwsAccountId => Str, ThemeId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ThemeVersionSummaryList, passing the object as the first parameter, and the string 'ThemeVersionSummaryList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::ListThemeVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllAnalyses(sub { },AwsAccountId => Str, Filters => ArrayRef[L<Paws::Quicksight::AnalysisSearchFilter>], [MaxResults => Int, NextToken => Str])

=head2 SearchAllAnalyses(AwsAccountId => Str, Filters => ArrayRef[L<Paws::Quicksight::AnalysisSearchFilter>], [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AnalysisSummaryList, passing the object as the first parameter, and the string 'AnalysisSummaryList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::SearchAnalysesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllDashboards(sub { },AwsAccountId => Str, Filters => ArrayRef[L<Paws::Quicksight::DashboardSearchFilter>], [MaxResults => Int, NextToken => Str])

=head2 SearchAllDashboards(AwsAccountId => Str, Filters => ArrayRef[L<Paws::Quicksight::DashboardSearchFilter>], [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DashboardSummaryList, passing the object as the first parameter, and the string 'DashboardSummaryList' as the second parameter 

If not, it will return a a L<Paws::Quicksight::SearchDashboardsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

