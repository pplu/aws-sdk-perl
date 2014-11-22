
use Paws::API;


package Paws::IAM {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'iam');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-08');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub AddClientIDToOpenIDConnectProvider {
    my $self = shift;
    return $self->do_call('Paws::IAM::AddClientIDToOpenIDConnectProvider', @_);
  }
  sub AddRoleToInstanceProfile {
    my $self = shift;
    return $self->do_call('Paws::IAM::AddRoleToInstanceProfile', @_);
  }
  sub AddUserToGroup {
    my $self = shift;
    return $self->do_call('Paws::IAM::AddUserToGroup', @_);
  }
  sub ChangePassword {
    my $self = shift;
    return $self->do_call('Paws::IAM::ChangePassword', @_);
  }
  sub CreateAccessKey {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateAccessKey', @_);
  }
  sub CreateAccountAlias {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateAccountAlias', @_);
  }
  sub CreateGroup {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateGroup', @_);
  }
  sub CreateInstanceProfile {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateInstanceProfile', @_);
  }
  sub CreateLoginProfile {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateLoginProfile', @_);
  }
  sub CreateOpenIDConnectProvider {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateOpenIDConnectProvider', @_);
  }
  sub CreateRole {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateRole', @_);
  }
  sub CreateSAMLProvider {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateSAMLProvider', @_);
  }
  sub CreateUser {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateUser', @_);
  }
  sub CreateVirtualMFADevice {
    my $self = shift;
    return $self->do_call('Paws::IAM::CreateVirtualMFADevice', @_);
  }
  sub DeactivateMFADevice {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeactivateMFADevice', @_);
  }
  sub DeleteAccessKey {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteAccessKey', @_);
  }
  sub DeleteAccountAlias {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteAccountAlias', @_);
  }
  sub DeleteAccountPasswordPolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteAccountPasswordPolicy', @_);
  }
  sub DeleteGroup {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteGroup', @_);
  }
  sub DeleteGroupPolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteGroupPolicy', @_);
  }
  sub DeleteInstanceProfile {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteInstanceProfile', @_);
  }
  sub DeleteLoginProfile {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteLoginProfile', @_);
  }
  sub DeleteOpenIDConnectProvider {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteOpenIDConnectProvider', @_);
  }
  sub DeleteRole {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteRole', @_);
  }
  sub DeleteRolePolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteRolePolicy', @_);
  }
  sub DeleteSAMLProvider {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteSAMLProvider', @_);
  }
  sub DeleteServerCertificate {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteServerCertificate', @_);
  }
  sub DeleteSigningCertificate {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteSigningCertificate', @_);
  }
  sub DeleteUser {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteUser', @_);
  }
  sub DeleteUserPolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteUserPolicy', @_);
  }
  sub DeleteVirtualMFADevice {
    my $self = shift;
    return $self->do_call('Paws::IAM::DeleteVirtualMFADevice', @_);
  }
  sub EnableMFADevice {
    my $self = shift;
    return $self->do_call('Paws::IAM::EnableMFADevice', @_);
  }
  sub GenerateCredentialReport {
    my $self = shift;
    return $self->do_call('Paws::IAM::GenerateCredentialReport', @_);
  }
  sub GetAccountPasswordPolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetAccountPasswordPolicy', @_);
  }
  sub GetAccountSummary {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetAccountSummary', @_);
  }
  sub GetCredentialReport {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetCredentialReport', @_);
  }
  sub GetGroup {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetGroup', @_);
  }
  sub GetGroupPolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetGroupPolicy', @_);
  }
  sub GetInstanceProfile {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetInstanceProfile', @_);
  }
  sub GetLoginProfile {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetLoginProfile', @_);
  }
  sub GetOpenIDConnectProvider {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetOpenIDConnectProvider', @_);
  }
  sub GetRole {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetRole', @_);
  }
  sub GetRolePolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetRolePolicy', @_);
  }
  sub GetSAMLProvider {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetSAMLProvider', @_);
  }
  sub GetServerCertificate {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetServerCertificate', @_);
  }
  sub GetUser {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetUser', @_);
  }
  sub GetUserPolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetUserPolicy', @_);
  }
  sub ListAccessKeys {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListAccessKeys', @_);
  }
  sub ListAccountAliases {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListAccountAliases', @_);
  }
  sub ListGroupPolicies {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListGroupPolicies', @_);
  }
  sub ListGroups {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListGroups', @_);
  }
  sub ListGroupsForUser {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListGroupsForUser', @_);
  }
  sub ListInstanceProfiles {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListInstanceProfiles', @_);
  }
  sub ListInstanceProfilesForRole {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListInstanceProfilesForRole', @_);
  }
  sub ListMFADevices {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListMFADevices', @_);
  }
  sub ListOpenIDConnectProviders {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListOpenIDConnectProviders', @_);
  }
  sub ListRolePolicies {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListRolePolicies', @_);
  }
  sub ListRoles {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListRoles', @_);
  }
  sub ListSAMLProviders {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListSAMLProviders', @_);
  }
  sub ListServerCertificates {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListServerCertificates', @_);
  }
  sub ListSigningCertificates {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListSigningCertificates', @_);
  }
  sub ListUserPolicies {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListUserPolicies', @_);
  }
  sub ListUsers {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListUsers', @_);
  }
  sub ListVirtualMFADevices {
    my $self = shift;
    return $self->do_call('Paws::IAM::ListVirtualMFADevices', @_);
  }
  sub PutGroupPolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::PutGroupPolicy', @_);
  }
  sub PutRolePolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::PutRolePolicy', @_);
  }
  sub PutUserPolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::PutUserPolicy', @_);
  }
  sub RemoveClientIDFromOpenIDConnectProvider {
    my $self = shift;
    return $self->do_call('Paws::IAM::RemoveClientIDFromOpenIDConnectProvider', @_);
  }
  sub RemoveRoleFromInstanceProfile {
    my $self = shift;
    return $self->do_call('Paws::IAM::RemoveRoleFromInstanceProfile', @_);
  }
  sub RemoveUserFromGroup {
    my $self = shift;
    return $self->do_call('Paws::IAM::RemoveUserFromGroup', @_);
  }
  sub ResyncMFADevice {
    my $self = shift;
    return $self->do_call('Paws::IAM::ResyncMFADevice', @_);
  }
  sub UpdateAccessKey {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateAccessKey', @_);
  }
  sub UpdateAccountPasswordPolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateAccountPasswordPolicy', @_);
  }
  sub UpdateAssumeRolePolicy {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateAssumeRolePolicy', @_);
  }
  sub UpdateGroup {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateGroup', @_);
  }
  sub UpdateLoginProfile {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateLoginProfile', @_);
  }
  sub UpdateOpenIDConnectProviderThumbprint {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateOpenIDConnectProviderThumbprint', @_);
  }
  sub UpdateSAMLProvider {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateSAMLProvider', @_);
  }
  sub UpdateServerCertificate {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateServerCertificate', @_);
  }
  sub UpdateSigningCertificate {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateSigningCertificate', @_);
  }
  sub UpdateUser {
    my $self = shift;
    return $self->do_call('Paws::IAM::UpdateUser', @_);
  }
  sub UploadServerCertificate {
    my $self = shift;
    return $self->do_call('Paws::IAM::UploadServerCertificate', @_);
  }
  sub UploadSigningCertificate {
    my $self = shift;
    return $self->do_call('Paws::IAM::UploadSigningCertificate', @_);
  }
}
1;