
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::IAM::statusType', ['Active','Inactive',];


class AWS::IAM::AccessKey with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str');
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'AWS::IAM::statusType', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::IAM::AccessKeyMetadata with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AccessKeyId => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'AWS::IAM::statusType');
  has UserName => (is => 'ro', isa => 'Str');
}

class AWS::IAM::Group with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::IAM::InstanceProfile with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has Roles => (is => 'ro', isa => 'ArrayRef[AWS::IAM::Role]', required => 1);
}

class AWS::IAM::LoginProfile with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::IAM::MFADevice with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EnableDate => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::IAM::PasswordPolicy with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Str');
  has ExpirePasswords => (is => 'ro', isa => 'Str');
  has MaxPasswordAge => (is => 'ro', isa => 'Int');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Str');
  has RequireNumbers => (is => 'ro', isa => 'Str');
  has RequireSymbols => (is => 'ro', isa => 'Str');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Str');
}

class AWS::IAM::Role with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has RoleId => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::IAM::SAMLProviderListEntry with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
}

class AWS::IAM::ServerCertificate with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadata => (is => 'ro', isa => 'AWS::IAM::ServerCertificateMetadata', required => 1);
}

class AWS::IAM::ServerCertificateMetadata with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateId => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
}

class AWS::IAM::SigningCertificate with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'AWS::IAM::statusType', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::IAM::User with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::IAM::VirtualMFADevice with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Base32StringSeed => (is => 'ro', isa => 'Str');
  has EnableDate => (is => 'ro', isa => 'Str');
  has QRCodePNG => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has User => (is => 'ro', isa => 'AWS::IAM::User');
}

class AWS::IAM::summaryMapType with AWS::API::MapParser {
  has AccessKeysPerUserQuota => (is => 'ro', isa => 'Int');
  has AccountMFAEnabled => (is => 'ro', isa => 'Int');
  has GroupPolicySizeQuota => (is => 'ro', isa => 'Int');
  has Groups => (is => 'ro', isa => 'Int');
  has GroupsPerUserQuota => (is => 'ro', isa => 'Int');
  has GroupsQuota => (is => 'ro', isa => 'Int');
  has MFADevices => (is => 'ro', isa => 'Int');
  has MFADevicesInUse => (is => 'ro', isa => 'Int');
  has ServerCertificates => (is => 'ro', isa => 'Int');
  has ServerCertificatesQuota => (is => 'ro', isa => 'Int');
  has SigningCertificatesPerUserQuota => (is => 'ro', isa => 'Int');
  has UserPolicySizeQuota => (is => 'ro', isa => 'Int');
  has Users => (is => 'ro', isa => 'Int');
  has UsersQuota => (is => 'ro', isa => 'Int');
}



class AWS::IAM::AddRoleToInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddRoleToInstanceProfile');
  has _returns => (isa => 'AWS::IAM::AddRoleToInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddRoleToInstanceProfileResult');  
}
class AWS::IAM::AddUserToGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddUserToGroup');
  has _returns => (isa => 'AWS::IAM::AddUserToGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddUserToGroupResult');  
}
class AWS::IAM::ChangePassword {
  has NewPassword => (is => 'ro', isa => 'Str', required => 1);
  has OldPassword => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangePassword');
  has _returns => (isa => 'AWS::IAM::ChangePasswordResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangePasswordResult');  
}
class AWS::IAM::CreateAccessKey {
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessKey');
  has _returns => (isa => 'AWS::IAM::CreateAccessKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAccessKeyResult');  
}
class AWS::IAM::CreateAccountAlias {
  has AccountAlias => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccountAlias');
  has _returns => (isa => 'AWS::IAM::CreateAccountAliasResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAccountAliasResult');  
}
class AWS::IAM::CreateGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  has _returns => (isa => 'AWS::IAM::CreateGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGroupResult');  
}
class AWS::IAM::CreateInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfile');
  has _returns => (isa => 'AWS::IAM::CreateInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfileResult');  
}
class AWS::IAM::CreateLoginProfile {
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoginProfile');
  has _returns => (isa => 'AWS::IAM::CreateLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoginProfileResult');  
}
class AWS::IAM::CreateRole {
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRole');
  has _returns => (isa => 'AWS::IAM::CreateRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRoleResult');  
}
class AWS::IAM::CreateSAMLProvider {
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSAMLProvider');
  has _returns => (isa => 'AWS::IAM::CreateSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSAMLProviderResult');  
}
class AWS::IAM::CreateUser {
  has Path => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  has _returns => (isa => 'AWS::IAM::CreateUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserResult');  
}
class AWS::IAM::CreateVirtualMFADevice {
  has Path => (is => 'ro', isa => 'Str');
  has VirtualMFADeviceName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADevice');
  has _returns => (isa => 'AWS::IAM::CreateVirtualMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADeviceResult');  
}
class AWS::IAM::DeactivateMFADevice {
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeactivateMFADevice');
  has _returns => (isa => 'AWS::IAM::DeactivateMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeactivateMFADeviceResult');  
}
class AWS::IAM::DeleteAccessKey {
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccessKey');
  has _returns => (isa => 'AWS::IAM::DeleteAccessKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAccessKeyResult');  
}
class AWS::IAM::DeleteAccountAlias {
  has AccountAlias => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountAlias');
  has _returns => (isa => 'AWS::IAM::DeleteAccountAliasResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAccountAliasResult');  
}
class AWS::IAM::DeleteAccountPasswordPolicy {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountPasswordPolicy');
  has _returns => (isa => 'AWS::IAM::DeleteAccountPasswordPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAccountPasswordPolicyResult');  
}
class AWS::IAM::DeleteGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroup');
  has _returns => (isa => 'AWS::IAM::DeleteGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGroupResult');  
}
class AWS::IAM::DeleteGroupPolicy {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroupPolicy');
  has _returns => (isa => 'AWS::IAM::DeleteGroupPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGroupPolicyResult');  
}
class AWS::IAM::DeleteInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstanceProfile');
  has _returns => (isa => 'AWS::IAM::DeleteInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInstanceProfileResult');  
}
class AWS::IAM::DeleteLoginProfile {
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoginProfile');
  has _returns => (isa => 'AWS::IAM::DeleteLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoginProfileResult');  
}
class AWS::IAM::DeleteRole {
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRole');
  has _returns => (isa => 'AWS::IAM::DeleteRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRoleResult');  
}
class AWS::IAM::DeleteRolePolicy {
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRolePolicy');
  has _returns => (isa => 'AWS::IAM::DeleteRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRolePolicyResult');  
}
class AWS::IAM::DeleteSAMLProvider {
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSAMLProvider');
  has _returns => (isa => 'AWS::IAM::DeleteSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSAMLProviderResult');  
}
class AWS::IAM::DeleteServerCertificate {
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServerCertificate');
  has _returns => (isa => 'AWS::IAM::DeleteServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteServerCertificateResult');  
}
class AWS::IAM::DeleteSigningCertificate {
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSigningCertificate');
  has _returns => (isa => 'AWS::IAM::DeleteSigningCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSigningCertificateResult');  
}
class AWS::IAM::DeleteUser {
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUser');
  has _returns => (isa => 'AWS::IAM::DeleteUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserResult');  
}
class AWS::IAM::DeleteUserPolicy {
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserPolicy');
  has _returns => (isa => 'AWS::IAM::DeleteUserPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserPolicyResult');  
}
class AWS::IAM::DeleteVirtualMFADevice {
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualMFADevice');
  has _returns => (isa => 'AWS::IAM::DeleteVirtualMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVirtualMFADeviceResult');  
}
class AWS::IAM::EnableMFADevice {
  has AuthenticationCode1 => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationCode2 => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMFADevice');
  has _returns => (isa => 'AWS::IAM::EnableMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableMFADeviceResult');  
}
class AWS::IAM::GetAccountPasswordPolicy {

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicy');
  has _returns => (isa => 'AWS::IAM::GetAccountPasswordPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicyResult');  
}
class AWS::IAM::GetAccountSummary {

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountSummary');
  has _returns => (isa => 'AWS::IAM::GetAccountSummaryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountSummaryResult');  
}
class AWS::IAM::GetGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroup');
  has _returns => (isa => 'AWS::IAM::GetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupResult');  
}
class AWS::IAM::GetGroupPolicy {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupPolicy');
  has _returns => (isa => 'AWS::IAM::GetGroupPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupPolicyResult');  
}
class AWS::IAM::GetInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceProfile');
  has _returns => (isa => 'AWS::IAM::GetInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetInstanceProfileResult');  
}
class AWS::IAM::GetLoginProfile {
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetLoginProfile');
  has _returns => (isa => 'AWS::IAM::GetLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetLoginProfileResult');  
}
class AWS::IAM::GetRole {
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetRole');
  has _returns => (isa => 'AWS::IAM::GetRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetRoleResult');  
}
class AWS::IAM::GetRolePolicy {
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetRolePolicy');
  has _returns => (isa => 'AWS::IAM::GetRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetRolePolicyResult');  
}
class AWS::IAM::GetSAMLProvider {
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSAMLProvider');
  has _returns => (isa => 'AWS::IAM::GetSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSAMLProviderResult');  
}
class AWS::IAM::GetServerCertificate {
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetServerCertificate');
  has _returns => (isa => 'AWS::IAM::GetServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetServerCertificateResult');  
}
class AWS::IAM::GetUser {
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetUser');
  has _returns => (isa => 'AWS::IAM::GetUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserResult');  
}
class AWS::IAM::GetUserPolicy {
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserPolicy');
  has _returns => (isa => 'AWS::IAM::GetUserPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserPolicyResult');  
}
class AWS::IAM::ListAccessKeys {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessKeys');
  has _returns => (isa => 'AWS::IAM::ListAccessKeysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAccessKeysResult');  
}
class AWS::IAM::ListAccountAliases {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccountAliases');
  has _returns => (isa => 'AWS::IAM::ListAccountAliasesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAccountAliasesResult');  
}
class AWS::IAM::ListGroupPolicies {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupPolicies');
  has _returns => (isa => 'AWS::IAM::ListGroupPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupPoliciesResult');  
}
class AWS::IAM::ListGroups {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroups');
  has _returns => (isa => 'AWS::IAM::ListGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupsResult');  
}
class AWS::IAM::ListGroupsForUser {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupsForUser');
  has _returns => (isa => 'AWS::IAM::ListGroupsForUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupsForUserResult');  
}
class AWS::IAM::ListInstanceProfiles {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceProfiles');
  has _returns => (isa => 'AWS::IAM::ListInstanceProfilesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesResult');  
}
class AWS::IAM::ListInstanceProfilesForRole {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRole');
  has _returns => (isa => 'AWS::IAM::ListInstanceProfilesForRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRoleResult');  
}
class AWS::IAM::ListMFADevices {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListMFADevices');
  has _returns => (isa => 'AWS::IAM::ListMFADevicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListMFADevicesResult');  
}
class AWS::IAM::ListRolePolicies {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListRolePolicies');
  has _returns => (isa => 'AWS::IAM::ListRolePoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolePoliciesResult');  
}
class AWS::IAM::ListRoles {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListRoles');
  has _returns => (isa => 'AWS::IAM::ListRolesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolesResult');  
}
class AWS::IAM::ListSAMLProviders {

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSAMLProviders');
  has _returns => (isa => 'AWS::IAM::ListSAMLProvidersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSAMLProvidersResult');  
}
class AWS::IAM::ListServerCertificates {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListServerCertificates');
  has _returns => (isa => 'AWS::IAM::ListServerCertificatesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListServerCertificatesResult');  
}
class AWS::IAM::ListSigningCertificates {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSigningCertificates');
  has _returns => (isa => 'AWS::IAM::ListSigningCertificatesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSigningCertificatesResult');  
}
class AWS::IAM::ListUserPolicies {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserPolicies');
  has _returns => (isa => 'AWS::IAM::ListUserPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListUserPoliciesResult');  
}
class AWS::IAM::ListUsers {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  has _returns => (isa => 'AWS::IAM::ListUsersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListUsersResult');  
}
class AWS::IAM::ListVirtualMFADevices {
  has AssignmentStatus => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevices');
  has _returns => (isa => 'AWS::IAM::ListVirtualMFADevicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevicesResult');  
}
class AWS::IAM::PutGroupPolicy {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutGroupPolicy');
  has _returns => (isa => 'AWS::IAM::PutGroupPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutGroupPolicyResult');  
}
class AWS::IAM::PutRolePolicy {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutRolePolicy');
  has _returns => (isa => 'AWS::IAM::PutRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutRolePolicyResult');  
}
class AWS::IAM::PutUserPolicy {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutUserPolicy');
  has _returns => (isa => 'AWS::IAM::PutUserPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutUserPolicyResult');  
}
class AWS::IAM::RemoveRoleFromInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveRoleFromInstanceProfile');
  has _returns => (isa => 'AWS::IAM::RemoveRoleFromInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveRoleFromInstanceProfileResult');  
}
class AWS::IAM::RemoveUserFromGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveUserFromGroup');
  has _returns => (isa => 'AWS::IAM::RemoveUserFromGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveUserFromGroupResult');  
}
class AWS::IAM::ResyncMFADevice {
  has AuthenticationCode1 => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationCode2 => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResyncMFADevice');
  has _returns => (isa => 'AWS::IAM::ResyncMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResyncMFADeviceResult');  
}
class AWS::IAM::UpdateAccessKey {
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccessKey');
  has _returns => (isa => 'AWS::IAM::UpdateAccessKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAccessKeyResult');  
}
class AWS::IAM::UpdateAccountPasswordPolicy {
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Str');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Str');
  has RequireNumbers => (is => 'ro', isa => 'Str');
  has RequireSymbols => (is => 'ro', isa => 'Str');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountPasswordPolicy');
  has _returns => (isa => 'AWS::IAM::UpdateAccountPasswordPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAccountPasswordPolicyResult');  
}
class AWS::IAM::UpdateAssumeRolePolicy {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssumeRolePolicy');
  has _returns => (isa => 'AWS::IAM::UpdateAssumeRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAssumeRolePolicyResult');  
}
class AWS::IAM::UpdateGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has NewGroupName => (is => 'ro', isa => 'Str');
  has NewPath => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  has _returns => (isa => 'AWS::IAM::UpdateGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGroupResult');  
}
class AWS::IAM::UpdateLoginProfile {
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLoginProfile');
  has _returns => (isa => 'AWS::IAM::UpdateLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateLoginProfileResult');  
}
class AWS::IAM::UpdateSAMLProvider {
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProvider');
  has _returns => (isa => 'AWS::IAM::UpdateSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProviderResult');  
}
class AWS::IAM::UpdateServerCertificate {
  has NewPath => (is => 'ro', isa => 'Str');
  has NewServerCertificateName => (is => 'ro', isa => 'Str');
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServerCertificate');
  has _returns => (isa => 'AWS::IAM::UpdateServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateServerCertificateResult');  
}
class AWS::IAM::UpdateSigningCertificate {
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSigningCertificate');
  has _returns => (isa => 'AWS::IAM::UpdateSigningCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSigningCertificateResult');  
}
class AWS::IAM::UpdateUser {
  has NewPath => (is => 'ro', isa => 'Str');
  has NewUserName => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  has _returns => (isa => 'AWS::IAM::UpdateUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateUserResult');  
}
class AWS::IAM::UploadServerCertificate {
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UploadServerCertificate');
  has _returns => (isa => 'AWS::IAM::UploadServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UploadServerCertificateResult');  
}
class AWS::IAM::UploadSigningCertificate {
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificate');
  has _returns => (isa => 'AWS::IAM::UploadSigningCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificateResult');  
}

class AWS::IAM::CreateAccessKeyResult with AWS::API::ResultParser {
  has AccessKey => (is => 'ro', isa => 'AWS::IAM::AccessKey', required => 1);

}
class AWS::IAM::CreateGroupResult with AWS::API::ResultParser {
  has Group => (is => 'ro', isa => 'AWS::IAM::Group', required => 1);

}
class AWS::IAM::CreateInstanceProfileResult with AWS::API::ResultParser {
  has InstanceProfile => (is => 'ro', isa => 'AWS::IAM::InstanceProfile', required => 1);

}
class AWS::IAM::CreateLoginProfileResult with AWS::API::ResultParser {
  has LoginProfile => (is => 'ro', isa => 'AWS::IAM::LoginProfile', required => 1);

}
class AWS::IAM::CreateRoleResult with AWS::API::ResultParser {
  has Role => (is => 'ro', isa => 'AWS::IAM::Role', required => 1);

}
class AWS::IAM::CreateSAMLProviderResult with AWS::API::ResultParser {
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
class AWS::IAM::CreateUserResult with AWS::API::ResultParser {
  has User => (is => 'ro', isa => 'AWS::IAM::User');

}
class AWS::IAM::CreateVirtualMFADeviceResult with AWS::API::ResultParser {
  has VirtualMFADevice => (is => 'ro', isa => 'AWS::IAM::VirtualMFADevice', required => 1);

}
class AWS::IAM::GetAccountPasswordPolicyResult with AWS::API::ResultParser {
  has PasswordPolicy => (is => 'ro', isa => 'AWS::IAM::PasswordPolicy', required => 1);

}
class AWS::IAM::GetAccountSummaryResult with AWS::API::ResultParser {
  has SummaryMap => (is => 'ro', isa => 'AWS::IAM::summaryMapType');

}
class AWS::IAM::GetGroupResult with AWS::API::ResultParser {
  has Group => (is => 'ro', isa => 'AWS::IAM::Group', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[AWS::IAM::User]', required => 1);

}
class AWS::IAM::GetGroupPolicyResult with AWS::API::ResultParser {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::IAM::GetInstanceProfileResult with AWS::API::ResultParser {
  has InstanceProfile => (is => 'ro', isa => 'AWS::IAM::InstanceProfile', required => 1);

}
class AWS::IAM::GetLoginProfileResult with AWS::API::ResultParser {
  has LoginProfile => (is => 'ro', isa => 'AWS::IAM::LoginProfile', required => 1);

}
class AWS::IAM::GetRoleResult with AWS::API::ResultParser {
  has Role => (is => 'ro', isa => 'AWS::IAM::Role', required => 1);

}
class AWS::IAM::GetRolePolicyResult with AWS::API::ResultParser {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::IAM::GetSAMLProviderResult with AWS::API::ResultParser {
  has CreateDate => (is => 'ro', isa => 'Str');
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

}
class AWS::IAM::GetServerCertificateResult with AWS::API::ResultParser {
  has ServerCertificate => (is => 'ro', isa => 'AWS::IAM::ServerCertificate', required => 1);

}
class AWS::IAM::GetUserResult with AWS::API::ResultParser {
  has User => (is => 'ro', isa => 'AWS::IAM::User', required => 1);

}
class AWS::IAM::GetUserPolicyResult with AWS::API::ResultParser {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::IAM::ListAccessKeysResult with AWS::API::ResultParser {
  has AccessKeyMetadata => (is => 'ro', isa => 'ArrayRef[AWS::IAM::AccessKeyMetadata]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::IAM::ListAccountAliasesResult with AWS::API::ResultParser {
  has AccountAliases => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::IAM::ListGroupPoliciesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
class AWS::IAM::ListGroupsResult with AWS::API::ResultParser {
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::IAM::ListGroupsForUserResult with AWS::API::ResultParser {
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::IAM::ListInstanceProfilesResult with AWS::API::ResultParser {
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[AWS::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::IAM::ListInstanceProfilesForRoleResult with AWS::API::ResultParser {
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[AWS::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::IAM::ListMFADevicesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MFADevices => (is => 'ro', isa => 'ArrayRef[AWS::IAM::MFADevice]', required => 1);

}
class AWS::IAM::ListRolePoliciesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
class AWS::IAM::ListRolesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Roles => (is => 'ro', isa => 'ArrayRef[AWS::IAM::Role]', required => 1);

}
class AWS::IAM::ListSAMLProvidersResult with AWS::API::ResultParser {
  has SAMLProviderList => (is => 'ro', isa => 'ArrayRef[AWS::IAM::SAMLProviderListEntry]');

}
class AWS::IAM::ListServerCertificatesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadataList => (is => 'ro', isa => 'ArrayRef[AWS::IAM::ServerCertificateMetadata]', required => 1);

}
class AWS::IAM::ListSigningCertificatesResult with AWS::API::ResultParser {
  has Certificates => (is => 'ro', isa => 'ArrayRef[AWS::IAM::SigningCertificate]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::IAM::ListUserPoliciesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
class AWS::IAM::ListUsersResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[AWS::IAM::User]', required => 1);

}
class AWS::IAM::ListVirtualMFADevicesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VirtualMFADevices => (is => 'ro', isa => 'ArrayRef[AWS::IAM::VirtualMFADevice]', required => 1);

}
class AWS::IAM::UpdateSAMLProviderResult with AWS::API::ResultParser {
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
class AWS::IAM::UploadServerCertificateResult with AWS::API::ResultParser {
  has ServerCertificateMetadata => (is => 'ro', isa => 'AWS::IAM::ServerCertificateMetadata');

}
class AWS::IAM::UploadSigningCertificateResult with AWS::API::ResultParser {
  has Certificate => (is => 'ro', isa => 'AWS::IAM::SigningCertificate', required => 1);

}

class AWS::IAM with (Net::AWS::Caller, AWS::API::SingleEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'iam');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-08');
  
  method AddRoleToInstanceProfile (%args) {
    my $call = AWS::IAM::AddRoleToInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AddUserToGroup (%args) {
    my $call = AWS::IAM::AddUserToGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ChangePassword (%args) {
    my $call = AWS::IAM::ChangePassword->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateAccessKey (%args) {
    my $call = AWS::IAM::CreateAccessKey->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::CreateAccessKeyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateAccountAlias (%args) {
    my $call = AWS::IAM::CreateAccountAlias->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateGroup (%args) {
    my $call = AWS::IAM::CreateGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::CreateGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateInstanceProfile (%args) {
    my $call = AWS::IAM::CreateInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::CreateInstanceProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateLoginProfile (%args) {
    my $call = AWS::IAM::CreateLoginProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::CreateLoginProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateRole (%args) {
    my $call = AWS::IAM::CreateRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::CreateRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateSAMLProvider (%args) {
    my $call = AWS::IAM::CreateSAMLProvider->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::CreateSAMLProviderResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateUser (%args) {
    my $call = AWS::IAM::CreateUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::CreateUserResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateVirtualMFADevice (%args) {
    my $call = AWS::IAM::CreateVirtualMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::CreateVirtualMFADeviceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeactivateMFADevice (%args) {
    my $call = AWS::IAM::DeactivateMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteAccessKey (%args) {
    my $call = AWS::IAM::DeleteAccessKey->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteAccountAlias (%args) {
    my $call = AWS::IAM::DeleteAccountAlias->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteAccountPasswordPolicy (%args) {
    my $call = AWS::IAM::DeleteAccountPasswordPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteGroup (%args) {
    my $call = AWS::IAM::DeleteGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteGroupPolicy (%args) {
    my $call = AWS::IAM::DeleteGroupPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteInstanceProfile (%args) {
    my $call = AWS::IAM::DeleteInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteLoginProfile (%args) {
    my $call = AWS::IAM::DeleteLoginProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteRole (%args) {
    my $call = AWS::IAM::DeleteRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteRolePolicy (%args) {
    my $call = AWS::IAM::DeleteRolePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteSAMLProvider (%args) {
    my $call = AWS::IAM::DeleteSAMLProvider->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteServerCertificate (%args) {
    my $call = AWS::IAM::DeleteServerCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteSigningCertificate (%args) {
    my $call = AWS::IAM::DeleteSigningCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteUser (%args) {
    my $call = AWS::IAM::DeleteUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteUserPolicy (%args) {
    my $call = AWS::IAM::DeleteUserPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteVirtualMFADevice (%args) {
    my $call = AWS::IAM::DeleteVirtualMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method EnableMFADevice (%args) {
    my $call = AWS::IAM::EnableMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetAccountPasswordPolicy (%args) {
    my $call = AWS::IAM::GetAccountPasswordPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetAccountPasswordPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetAccountSummary (%args) {
    my $call = AWS::IAM::GetAccountSummary->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetAccountSummaryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetGroup (%args) {
    my $call = AWS::IAM::GetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetGroupPolicy (%args) {
    my $call = AWS::IAM::GetGroupPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetGroupPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetInstanceProfile (%args) {
    my $call = AWS::IAM::GetInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetInstanceProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetLoginProfile (%args) {
    my $call = AWS::IAM::GetLoginProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetLoginProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetRole (%args) {
    my $call = AWS::IAM::GetRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetRolePolicy (%args) {
    my $call = AWS::IAM::GetRolePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetRolePolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetSAMLProvider (%args) {
    my $call = AWS::IAM::GetSAMLProvider->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetSAMLProviderResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetServerCertificate (%args) {
    my $call = AWS::IAM::GetServerCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetServerCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetUser (%args) {
    my $call = AWS::IAM::GetUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetUserResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetUserPolicy (%args) {
    my $call = AWS::IAM::GetUserPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::GetUserPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListAccessKeys (%args) {
    my $call = AWS::IAM::ListAccessKeys->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListAccessKeysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListAccountAliases (%args) {
    my $call = AWS::IAM::ListAccountAliases->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListAccountAliasesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListGroupPolicies (%args) {
    my $call = AWS::IAM::ListGroupPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListGroupPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListGroups (%args) {
    my $call = AWS::IAM::ListGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListGroupsForUser (%args) {
    my $call = AWS::IAM::ListGroupsForUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListGroupsForUserResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListInstanceProfiles (%args) {
    my $call = AWS::IAM::ListInstanceProfiles->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListInstanceProfilesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListInstanceProfilesForRole (%args) {
    my $call = AWS::IAM::ListInstanceProfilesForRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListInstanceProfilesForRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListMFADevices (%args) {
    my $call = AWS::IAM::ListMFADevices->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListMFADevicesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListRolePolicies (%args) {
    my $call = AWS::IAM::ListRolePolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListRolePoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListRoles (%args) {
    my $call = AWS::IAM::ListRoles->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListRolesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSAMLProviders (%args) {
    my $call = AWS::IAM::ListSAMLProviders->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListSAMLProvidersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListServerCertificates (%args) {
    my $call = AWS::IAM::ListServerCertificates->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListServerCertificatesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSigningCertificates (%args) {
    my $call = AWS::IAM::ListSigningCertificates->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListSigningCertificatesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListUserPolicies (%args) {
    my $call = AWS::IAM::ListUserPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListUserPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListUsers (%args) {
    my $call = AWS::IAM::ListUsers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListUsersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListVirtualMFADevices (%args) {
    my $call = AWS::IAM::ListVirtualMFADevices->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::ListVirtualMFADevicesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PutGroupPolicy (%args) {
    my $call = AWS::IAM::PutGroupPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method PutRolePolicy (%args) {
    my $call = AWS::IAM::PutRolePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method PutUserPolicy (%args) {
    my $call = AWS::IAM::PutUserPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RemoveRoleFromInstanceProfile (%args) {
    my $call = AWS::IAM::RemoveRoleFromInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RemoveUserFromGroup (%args) {
    my $call = AWS::IAM::RemoveUserFromGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ResyncMFADevice (%args) {
    my $call = AWS::IAM::ResyncMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateAccessKey (%args) {
    my $call = AWS::IAM::UpdateAccessKey->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateAccountPasswordPolicy (%args) {
    my $call = AWS::IAM::UpdateAccountPasswordPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateAssumeRolePolicy (%args) {
    my $call = AWS::IAM::UpdateAssumeRolePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateGroup (%args) {
    my $call = AWS::IAM::UpdateGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateLoginProfile (%args) {
    my $call = AWS::IAM::UpdateLoginProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateSAMLProvider (%args) {
    my $call = AWS::IAM::UpdateSAMLProvider->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::UpdateSAMLProviderResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateServerCertificate (%args) {
    my $call = AWS::IAM::UpdateServerCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateSigningCertificate (%args) {
    my $call = AWS::IAM::UpdateSigningCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateUser (%args) {
    my $call = AWS::IAM::UpdateUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UploadServerCertificate (%args) {
    my $call = AWS::IAM::UploadServerCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::UploadServerCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UploadSigningCertificate (%args) {
    my $call = AWS::IAM::UploadSigningCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::IAM::UploadSigningCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
