
use AWS::API;


package Aws::IAM {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'iam');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-08');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AddRoleToInstanceProfile {
    my $self = shift;
    return $self->do_call('Aws::IAM::AddRoleToInstanceProfile', @_);
  }
  sub AddUserToGroup {
    my $self = shift;
    return $self->do_call('Aws::IAM::AddUserToGroup', @_);
  }
  sub ChangePassword {
    my $self = shift;
    return $self->do_call('Aws::IAM::ChangePassword', @_);
  }
  sub CreateAccessKey {
    my $self = shift;
    return $self->do_call('Aws::IAM::CreateAccessKey', @_);
  }
  sub CreateAccountAlias {
    my $self = shift;
    return $self->do_call('Aws::IAM::CreateAccountAlias', @_);
  }
  sub CreateGroup {
    my $self = shift;
    return $self->do_call('Aws::IAM::CreateGroup', @_);
  }
  sub CreateInstanceProfile {
    my $self = shift;
    return $self->do_call('Aws::IAM::CreateInstanceProfile', @_);
  }
  sub CreateLoginProfile {
    my $self = shift;
    return $self->do_call('Aws::IAM::CreateLoginProfile', @_);
  }
  sub CreateRole {
    my $self = shift;
    return $self->do_call('Aws::IAM::CreateRole', @_);
  }
  sub CreateSAMLProvider {
    my $self = shift;
    return $self->do_call('Aws::IAM::CreateSAMLProvider', @_);
  }
  sub CreateUser {
    my $self = shift;
    return $self->do_call('Aws::IAM::CreateUser', @_);
  }
  sub CreateVirtualMFADevice {
    my $self = shift;
    return $self->do_call('Aws::IAM::CreateVirtualMFADevice', @_);
  }
  sub DeactivateMFADevice {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeactivateMFADevice', @_);
  }
  sub DeleteAccessKey {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteAccessKey', @_);
  }
  sub DeleteAccountAlias {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteAccountAlias', @_);
  }
  sub DeleteAccountPasswordPolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteAccountPasswordPolicy', @_);
  }
  sub DeleteGroup {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteGroup', @_);
  }
  sub DeleteGroupPolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteGroupPolicy', @_);
  }
  sub DeleteInstanceProfile {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteInstanceProfile', @_);
  }
  sub DeleteLoginProfile {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteLoginProfile', @_);
  }
  sub DeleteRole {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteRole', @_);
  }
  sub DeleteRolePolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteRolePolicy', @_);
  }
  sub DeleteSAMLProvider {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteSAMLProvider', @_);
  }
  sub DeleteServerCertificate {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteServerCertificate', @_);
  }
  sub DeleteSigningCertificate {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteSigningCertificate', @_);
  }
  sub DeleteUser {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteUser', @_);
  }
  sub DeleteUserPolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteUserPolicy', @_);
  }
  sub DeleteVirtualMFADevice {
    my $self = shift;
    return $self->do_call('Aws::IAM::DeleteVirtualMFADevice', @_);
  }
  sub EnableMFADevice {
    my $self = shift;
    return $self->do_call('Aws::IAM::EnableMFADevice', @_);
  }
  sub GenerateCredentialReport {
    my $self = shift;
    return $self->do_call('Aws::IAM::GenerateCredentialReport', @_);
  }
  sub GetAccountPasswordPolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetAccountPasswordPolicy', @_);
  }
  sub GetAccountSummary {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetAccountSummary', @_);
  }
  sub GetCredentialReport {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetCredentialReport', @_);
  }
  sub GetGroup {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetGroup', @_);
  }
  sub GetGroupPolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetGroupPolicy', @_);
  }
  sub GetInstanceProfile {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetInstanceProfile', @_);
  }
  sub GetLoginProfile {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetLoginProfile', @_);
  }
  sub GetRole {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetRole', @_);
  }
  sub GetRolePolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetRolePolicy', @_);
  }
  sub GetSAMLProvider {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetSAMLProvider', @_);
  }
  sub GetServerCertificate {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetServerCertificate', @_);
  }
  sub GetUser {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetUser', @_);
  }
  sub GetUserPolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::GetUserPolicy', @_);
  }
  sub ListAccessKeys {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListAccessKeys', @_);
  }
  sub ListAccountAliases {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListAccountAliases', @_);
  }
  sub ListGroupPolicies {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListGroupPolicies', @_);
  }
  sub ListGroups {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListGroups', @_);
  }
  sub ListGroupsForUser {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListGroupsForUser', @_);
  }
  sub ListInstanceProfiles {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListInstanceProfiles', @_);
  }
  sub ListInstanceProfilesForRole {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListInstanceProfilesForRole', @_);
  }
  sub ListMFADevices {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListMFADevices', @_);
  }
  sub ListRolePolicies {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListRolePolicies', @_);
  }
  sub ListRoles {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListRoles', @_);
  }
  sub ListSAMLProviders {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListSAMLProviders', @_);
  }
  sub ListServerCertificates {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListServerCertificates', @_);
  }
  sub ListSigningCertificates {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListSigningCertificates', @_);
  }
  sub ListUserPolicies {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListUserPolicies', @_);
  }
  sub ListUsers {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListUsers', @_);
  }
  sub ListVirtualMFADevices {
    my $self = shift;
    return $self->do_call('Aws::IAM::ListVirtualMFADevices', @_);
  }
  sub PutGroupPolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::PutGroupPolicy', @_);
  }
  sub PutRolePolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::PutRolePolicy', @_);
  }
  sub PutUserPolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::PutUserPolicy', @_);
  }
  sub RemoveRoleFromInstanceProfile {
    my $self = shift;
    return $self->do_call('Aws::IAM::RemoveRoleFromInstanceProfile', @_);
  }
  sub RemoveUserFromGroup {
    my $self = shift;
    return $self->do_call('Aws::IAM::RemoveUserFromGroup', @_);
  }
  sub ResyncMFADevice {
    my $self = shift;
    return $self->do_call('Aws::IAM::ResyncMFADevice', @_);
  }
  sub UpdateAccessKey {
    my $self = shift;
    return $self->do_call('Aws::IAM::UpdateAccessKey', @_);
  }
  sub UpdateAccountPasswordPolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::UpdateAccountPasswordPolicy', @_);
  }
  sub UpdateAssumeRolePolicy {
    my $self = shift;
    return $self->do_call('Aws::IAM::UpdateAssumeRolePolicy', @_);
  }
  sub UpdateGroup {
    my $self = shift;
    return $self->do_call('Aws::IAM::UpdateGroup', @_);
  }
  sub UpdateLoginProfile {
    my $self = shift;
    return $self->do_call('Aws::IAM::UpdateLoginProfile', @_);
  }
  sub UpdateSAMLProvider {
    my $self = shift;
    return $self->do_call('Aws::IAM::UpdateSAMLProvider', @_);
  }
  sub UpdateServerCertificate {
    my $self = shift;
    return $self->do_call('Aws::IAM::UpdateServerCertificate', @_);
  }
  sub UpdateSigningCertificate {
    my $self = shift;
    return $self->do_call('Aws::IAM::UpdateSigningCertificate', @_);
  }
  sub UpdateUser {
    my $self = shift;
    return $self->do_call('Aws::IAM::UpdateUser', @_);
  }
  sub UploadServerCertificate {
    my $self = shift;
    return $self->do_call('Aws::IAM::UploadServerCertificate', @_);
  }
  sub UploadSigningCertificate {
    my $self = shift;
    return $self->do_call('Aws::IAM::UploadSigningCertificate', @_);
  }
}
1;