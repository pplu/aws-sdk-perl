
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::IAM::statusType', [qw(Active Inactive )];


class Aws::IAM::AccessKey with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str');
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::IAM::statusType', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::IAM::AccessKeyMetadata with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AccessKeyId => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::IAM::statusType');
  has UserName => (is => 'ro', isa => 'Str');
}

class Aws::IAM::Group with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::IAM::InstanceProfile with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has Roles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Role]', required => 1);
}

class Aws::IAM::LoginProfile with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::IAM::MFADevice with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EnableDate => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::IAM::PasswordPolicy with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Str');
  has ExpirePasswords => (is => 'ro', isa => 'Str');
  has MaxPasswordAge => (is => 'ro', isa => 'Int');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Str');
  has RequireNumbers => (is => 'ro', isa => 'Str');
  has RequireSymbols => (is => 'ro', isa => 'Str');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Str');
}

class Aws::IAM::Role with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has RoleId => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::IAM::SAMLProviderListEntry with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
}

class Aws::IAM::ServerCertificate with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadata => (is => 'ro', isa => 'Aws::IAM::ServerCertificateMetadata', required => 1);
}

class Aws::IAM::ServerCertificateMetadata with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateId => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
}

class Aws::IAM::SigningCertificate with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::IAM::statusType', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::IAM::User with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::IAM::VirtualMFADevice with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Base32StringSeed => (is => 'ro', isa => 'Str');
  has EnableDate => (is => 'ro', isa => 'Str');
  has QRCodePNG => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has User => (is => 'ro', isa => 'Aws::IAM::User');
}

class Aws::IAM::summaryMapType with AWS::API::MapParser {
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



class Aws::IAM::AddRoleToInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddRoleToInstanceProfile');
  has _returns => (isa => 'Aws::IAM::AddRoleToInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddRoleToInstanceProfileResult');  
}
class Aws::IAM::AddUserToGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddUserToGroup');
  has _returns => (isa => 'Aws::IAM::AddUserToGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddUserToGroupResult');  
}
class Aws::IAM::ChangePassword {
  has NewPassword => (is => 'ro', isa => 'Str', required => 1);
  has OldPassword => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangePassword');
  has _returns => (isa => 'Aws::IAM::ChangePasswordResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangePasswordResult');  
}
class Aws::IAM::CreateAccessKey {
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessKey');
  has _returns => (isa => 'Aws::IAM::CreateAccessKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAccessKeyResult');  
}
class Aws::IAM::CreateAccountAlias {
  has AccountAlias => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccountAlias');
  has _returns => (isa => 'Aws::IAM::CreateAccountAliasResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAccountAliasResult');  
}
class Aws::IAM::CreateGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  has _returns => (isa => 'Aws::IAM::CreateGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGroupResult');  
}
class Aws::IAM::CreateInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfile');
  has _returns => (isa => 'Aws::IAM::CreateInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfileResult');  
}
class Aws::IAM::CreateLoginProfile {
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoginProfile');
  has _returns => (isa => 'Aws::IAM::CreateLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoginProfileResult');  
}
class Aws::IAM::CreateRole {
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRole');
  has _returns => (isa => 'Aws::IAM::CreateRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRoleResult');  
}
class Aws::IAM::CreateSAMLProvider {
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSAMLProvider');
  has _returns => (isa => 'Aws::IAM::CreateSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSAMLProviderResult');  
}
class Aws::IAM::CreateUser {
  has Path => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  has _returns => (isa => 'Aws::IAM::CreateUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserResult');  
}
class Aws::IAM::CreateVirtualMFADevice {
  has Path => (is => 'ro', isa => 'Str');
  has VirtualMFADeviceName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADevice');
  has _returns => (isa => 'Aws::IAM::CreateVirtualMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADeviceResult');  
}
class Aws::IAM::DeactivateMFADevice {
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeactivateMFADevice');
  has _returns => (isa => 'Aws::IAM::DeactivateMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeactivateMFADeviceResult');  
}
class Aws::IAM::DeleteAccessKey {
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccessKey');
  has _returns => (isa => 'Aws::IAM::DeleteAccessKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAccessKeyResult');  
}
class Aws::IAM::DeleteAccountAlias {
  has AccountAlias => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountAlias');
  has _returns => (isa => 'Aws::IAM::DeleteAccountAliasResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAccountAliasResult');  
}
class Aws::IAM::DeleteAccountPasswordPolicy {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountPasswordPolicy');
  has _returns => (isa => 'Aws::IAM::DeleteAccountPasswordPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAccountPasswordPolicyResult');  
}
class Aws::IAM::DeleteGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroup');
  has _returns => (isa => 'Aws::IAM::DeleteGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGroupResult');  
}
class Aws::IAM::DeleteGroupPolicy {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroupPolicy');
  has _returns => (isa => 'Aws::IAM::DeleteGroupPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGroupPolicyResult');  
}
class Aws::IAM::DeleteInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstanceProfile');
  has _returns => (isa => 'Aws::IAM::DeleteInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInstanceProfileResult');  
}
class Aws::IAM::DeleteLoginProfile {
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoginProfile');
  has _returns => (isa => 'Aws::IAM::DeleteLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoginProfileResult');  
}
class Aws::IAM::DeleteRole {
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRole');
  has _returns => (isa => 'Aws::IAM::DeleteRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRoleResult');  
}
class Aws::IAM::DeleteRolePolicy {
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRolePolicy');
  has _returns => (isa => 'Aws::IAM::DeleteRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRolePolicyResult');  
}
class Aws::IAM::DeleteSAMLProvider {
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSAMLProvider');
  has _returns => (isa => 'Aws::IAM::DeleteSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSAMLProviderResult');  
}
class Aws::IAM::DeleteServerCertificate {
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServerCertificate');
  has _returns => (isa => 'Aws::IAM::DeleteServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteServerCertificateResult');  
}
class Aws::IAM::DeleteSigningCertificate {
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSigningCertificate');
  has _returns => (isa => 'Aws::IAM::DeleteSigningCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSigningCertificateResult');  
}
class Aws::IAM::DeleteUser {
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUser');
  has _returns => (isa => 'Aws::IAM::DeleteUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserResult');  
}
class Aws::IAM::DeleteUserPolicy {
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserPolicy');
  has _returns => (isa => 'Aws::IAM::DeleteUserPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserPolicyResult');  
}
class Aws::IAM::DeleteVirtualMFADevice {
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualMFADevice');
  has _returns => (isa => 'Aws::IAM::DeleteVirtualMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVirtualMFADeviceResult');  
}
class Aws::IAM::EnableMFADevice {
  has AuthenticationCode1 => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationCode2 => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMFADevice');
  has _returns => (isa => 'Aws::IAM::EnableMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableMFADeviceResult');  
}
class Aws::IAM::GetAccountPasswordPolicy {

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicy');
  has _returns => (isa => 'Aws::IAM::GetAccountPasswordPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicyResult');  
}
class Aws::IAM::GetAccountSummary {

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountSummary');
  has _returns => (isa => 'Aws::IAM::GetAccountSummaryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountSummaryResult');  
}
class Aws::IAM::GetGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroup');
  has _returns => (isa => 'Aws::IAM::GetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupResult');  
}
class Aws::IAM::GetGroupPolicy {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupPolicy');
  has _returns => (isa => 'Aws::IAM::GetGroupPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupPolicyResult');  
}
class Aws::IAM::GetInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceProfile');
  has _returns => (isa => 'Aws::IAM::GetInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetInstanceProfileResult');  
}
class Aws::IAM::GetLoginProfile {
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetLoginProfile');
  has _returns => (isa => 'Aws::IAM::GetLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetLoginProfileResult');  
}
class Aws::IAM::GetRole {
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetRole');
  has _returns => (isa => 'Aws::IAM::GetRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetRoleResult');  
}
class Aws::IAM::GetRolePolicy {
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetRolePolicy');
  has _returns => (isa => 'Aws::IAM::GetRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetRolePolicyResult');  
}
class Aws::IAM::GetSAMLProvider {
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSAMLProvider');
  has _returns => (isa => 'Aws::IAM::GetSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSAMLProviderResult');  
}
class Aws::IAM::GetServerCertificate {
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetServerCertificate');
  has _returns => (isa => 'Aws::IAM::GetServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetServerCertificateResult');  
}
class Aws::IAM::GetUser {
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetUser');
  has _returns => (isa => 'Aws::IAM::GetUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserResult');  
}
class Aws::IAM::GetUserPolicy {
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserPolicy');
  has _returns => (isa => 'Aws::IAM::GetUserPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserPolicyResult');  
}
class Aws::IAM::ListAccessKeys {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessKeys');
  has _returns => (isa => 'Aws::IAM::ListAccessKeysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAccessKeysResult');  
}
class Aws::IAM::ListAccountAliases {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccountAliases');
  has _returns => (isa => 'Aws::IAM::ListAccountAliasesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAccountAliasesResult');  
}
class Aws::IAM::ListGroupPolicies {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupPolicies');
  has _returns => (isa => 'Aws::IAM::ListGroupPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupPoliciesResult');  
}
class Aws::IAM::ListGroups {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroups');
  has _returns => (isa => 'Aws::IAM::ListGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupsResult');  
}
class Aws::IAM::ListGroupsForUser {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupsForUser');
  has _returns => (isa => 'Aws::IAM::ListGroupsForUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupsForUserResult');  
}
class Aws::IAM::ListInstanceProfiles {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceProfiles');
  has _returns => (isa => 'Aws::IAM::ListInstanceProfilesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesResult');  
}
class Aws::IAM::ListInstanceProfilesForRole {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRole');
  has _returns => (isa => 'Aws::IAM::ListInstanceProfilesForRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRoleResult');  
}
class Aws::IAM::ListMFADevices {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListMFADevices');
  has _returns => (isa => 'Aws::IAM::ListMFADevicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListMFADevicesResult');  
}
class Aws::IAM::ListRolePolicies {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListRolePolicies');
  has _returns => (isa => 'Aws::IAM::ListRolePoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolePoliciesResult');  
}
class Aws::IAM::ListRoles {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListRoles');
  has _returns => (isa => 'Aws::IAM::ListRolesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolesResult');  
}
class Aws::IAM::ListSAMLProviders {

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSAMLProviders');
  has _returns => (isa => 'Aws::IAM::ListSAMLProvidersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSAMLProvidersResult');  
}
class Aws::IAM::ListServerCertificates {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListServerCertificates');
  has _returns => (isa => 'Aws::IAM::ListServerCertificatesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListServerCertificatesResult');  
}
class Aws::IAM::ListSigningCertificates {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSigningCertificates');
  has _returns => (isa => 'Aws::IAM::ListSigningCertificatesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSigningCertificatesResult');  
}
class Aws::IAM::ListUserPolicies {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserPolicies');
  has _returns => (isa => 'Aws::IAM::ListUserPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListUserPoliciesResult');  
}
class Aws::IAM::ListUsers {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  has _returns => (isa => 'Aws::IAM::ListUsersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListUsersResult');  
}
class Aws::IAM::ListVirtualMFADevices {
  has AssignmentStatus => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevices');
  has _returns => (isa => 'Aws::IAM::ListVirtualMFADevicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevicesResult');  
}
class Aws::IAM::PutGroupPolicy {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutGroupPolicy');
  has _returns => (isa => 'Aws::IAM::PutGroupPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutGroupPolicyResult');  
}
class Aws::IAM::PutRolePolicy {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutRolePolicy');
  has _returns => (isa => 'Aws::IAM::PutRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutRolePolicyResult');  
}
class Aws::IAM::PutUserPolicy {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutUserPolicy');
  has _returns => (isa => 'Aws::IAM::PutUserPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutUserPolicyResult');  
}
class Aws::IAM::RemoveRoleFromInstanceProfile {
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveRoleFromInstanceProfile');
  has _returns => (isa => 'Aws::IAM::RemoveRoleFromInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveRoleFromInstanceProfileResult');  
}
class Aws::IAM::RemoveUserFromGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveUserFromGroup');
  has _returns => (isa => 'Aws::IAM::RemoveUserFromGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveUserFromGroupResult');  
}
class Aws::IAM::ResyncMFADevice {
  has AuthenticationCode1 => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationCode2 => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResyncMFADevice');
  has _returns => (isa => 'Aws::IAM::ResyncMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResyncMFADeviceResult');  
}
class Aws::IAM::UpdateAccessKey {
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccessKey');
  has _returns => (isa => 'Aws::IAM::UpdateAccessKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAccessKeyResult');  
}
class Aws::IAM::UpdateAccountPasswordPolicy {
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Str');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Str');
  has RequireNumbers => (is => 'ro', isa => 'Str');
  has RequireSymbols => (is => 'ro', isa => 'Str');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountPasswordPolicy');
  has _returns => (isa => 'Aws::IAM::UpdateAccountPasswordPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAccountPasswordPolicyResult');  
}
class Aws::IAM::UpdateAssumeRolePolicy {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssumeRolePolicy');
  has _returns => (isa => 'Aws::IAM::UpdateAssumeRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAssumeRolePolicyResult');  
}
class Aws::IAM::UpdateGroup {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has NewGroupName => (is => 'ro', isa => 'Str');
  has NewPath => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  has _returns => (isa => 'Aws::IAM::UpdateGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGroupResult');  
}
class Aws::IAM::UpdateLoginProfile {
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLoginProfile');
  has _returns => (isa => 'Aws::IAM::UpdateLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateLoginProfileResult');  
}
class Aws::IAM::UpdateSAMLProvider {
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProvider');
  has _returns => (isa => 'Aws::IAM::UpdateSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProviderResult');  
}
class Aws::IAM::UpdateServerCertificate {
  has NewPath => (is => 'ro', isa => 'Str');
  has NewServerCertificateName => (is => 'ro', isa => 'Str');
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServerCertificate');
  has _returns => (isa => 'Aws::IAM::UpdateServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateServerCertificateResult');  
}
class Aws::IAM::UpdateSigningCertificate {
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSigningCertificate');
  has _returns => (isa => 'Aws::IAM::UpdateSigningCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSigningCertificateResult');  
}
class Aws::IAM::UpdateUser {
  has NewPath => (is => 'ro', isa => 'Str');
  has NewUserName => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  has _returns => (isa => 'Aws::IAM::UpdateUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateUserResult');  
}
class Aws::IAM::UploadServerCertificate {
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UploadServerCertificate');
  has _returns => (isa => 'Aws::IAM::UploadServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UploadServerCertificateResult');  
}
class Aws::IAM::UploadSigningCertificate {
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificate');
  has _returns => (isa => 'Aws::IAM::UploadSigningCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificateResult');  
}

class Aws::IAM::CreateAccessKeyResult with AWS::API::ResultParser {
  has AccessKey => (is => 'ro', isa => 'Aws::IAM::AccessKey', required => 1);

}
class Aws::IAM::CreateGroupResult with AWS::API::ResultParser {
  has Group => (is => 'ro', isa => 'Aws::IAM::Group', required => 1);

}
class Aws::IAM::CreateInstanceProfileResult with AWS::API::ResultParser {
  has InstanceProfile => (is => 'ro', isa => 'Aws::IAM::InstanceProfile', required => 1);

}
class Aws::IAM::CreateLoginProfileResult with AWS::API::ResultParser {
  has LoginProfile => (is => 'ro', isa => 'Aws::IAM::LoginProfile', required => 1);

}
class Aws::IAM::CreateRoleResult with AWS::API::ResultParser {
  has Role => (is => 'ro', isa => 'Aws::IAM::Role', required => 1);

}
class Aws::IAM::CreateSAMLProviderResult with AWS::API::ResultParser {
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
class Aws::IAM::CreateUserResult with AWS::API::ResultParser {
  has User => (is => 'ro', isa => 'Aws::IAM::User');

}
class Aws::IAM::CreateVirtualMFADeviceResult with AWS::API::ResultParser {
  has VirtualMFADevice => (is => 'ro', isa => 'Aws::IAM::VirtualMFADevice', required => 1);

}
class Aws::IAM::GetAccountPasswordPolicyResult with AWS::API::ResultParser {
  has PasswordPolicy => (is => 'ro', isa => 'Aws::IAM::PasswordPolicy', required => 1);

}
class Aws::IAM::GetAccountSummaryResult with AWS::API::ResultParser {
  has SummaryMap => (is => 'ro', isa => 'Aws::IAM::summaryMapType');

}
class Aws::IAM::GetGroupResult with AWS::API::ResultParser {
  has Group => (is => 'ro', isa => 'Aws::IAM::Group', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Aws::IAM::User]', required => 1);

}
class Aws::IAM::GetGroupPolicyResult with AWS::API::ResultParser {
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::IAM::GetInstanceProfileResult with AWS::API::ResultParser {
  has InstanceProfile => (is => 'ro', isa => 'Aws::IAM::InstanceProfile', required => 1);

}
class Aws::IAM::GetLoginProfileResult with AWS::API::ResultParser {
  has LoginProfile => (is => 'ro', isa => 'Aws::IAM::LoginProfile', required => 1);

}
class Aws::IAM::GetRoleResult with AWS::API::ResultParser {
  has Role => (is => 'ro', isa => 'Aws::IAM::Role', required => 1);

}
class Aws::IAM::GetRolePolicyResult with AWS::API::ResultParser {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::IAM::GetSAMLProviderResult with AWS::API::ResultParser {
  has CreateDate => (is => 'ro', isa => 'Str');
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

}
class Aws::IAM::GetServerCertificateResult with AWS::API::ResultParser {
  has ServerCertificate => (is => 'ro', isa => 'Aws::IAM::ServerCertificate', required => 1);

}
class Aws::IAM::GetUserResult with AWS::API::ResultParser {
  has User => (is => 'ro', isa => 'Aws::IAM::User', required => 1);

}
class Aws::IAM::GetUserPolicyResult with AWS::API::ResultParser {
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::IAM::ListAccessKeysResult with AWS::API::ResultParser {
  has AccessKeyMetadata => (is => 'ro', isa => 'ArrayRef[Aws::IAM::AccessKeyMetadata]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::IAM::ListAccountAliasesResult with AWS::API::ResultParser {
  has AccountAliases => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::IAM::ListGroupPoliciesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
class Aws::IAM::ListGroupsResult with AWS::API::ResultParser {
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::IAM::ListGroupsForUserResult with AWS::API::ResultParser {
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::IAM::ListInstanceProfilesResult with AWS::API::ResultParser {
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::IAM::ListInstanceProfilesForRoleResult with AWS::API::ResultParser {
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::IAM::ListMFADevicesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MFADevices => (is => 'ro', isa => 'ArrayRef[Aws::IAM::MFADevice]', required => 1);

}
class Aws::IAM::ListRolePoliciesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
class Aws::IAM::ListRolesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Roles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Role]', required => 1);

}
class Aws::IAM::ListSAMLProvidersResult with AWS::API::ResultParser {
  has SAMLProviderList => (is => 'ro', isa => 'ArrayRef[Aws::IAM::SAMLProviderListEntry]');

}
class Aws::IAM::ListServerCertificatesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadataList => (is => 'ro', isa => 'ArrayRef[Aws::IAM::ServerCertificateMetadata]', required => 1);

}
class Aws::IAM::ListSigningCertificatesResult with AWS::API::ResultParser {
  has Certificates => (is => 'ro', isa => 'ArrayRef[Aws::IAM::SigningCertificate]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::IAM::ListUserPoliciesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
class Aws::IAM::ListUsersResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Aws::IAM::User]', required => 1);

}
class Aws::IAM::ListVirtualMFADevicesResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VirtualMFADevices => (is => 'ro', isa => 'ArrayRef[Aws::IAM::VirtualMFADevice]', required => 1);

}
class Aws::IAM::UpdateSAMLProviderResult with AWS::API::ResultParser {
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
class Aws::IAM::UploadServerCertificateResult with AWS::API::ResultParser {
  has ServerCertificateMetadata => (is => 'ro', isa => 'Aws::IAM::ServerCertificateMetadata');

}
class Aws::IAM::UploadSigningCertificateResult with AWS::API::ResultParser {
  has Certificate => (is => 'ro', isa => 'Aws::IAM::SigningCertificate', required => 1);

}

class Aws::IAM with (Net::AWS::Caller, AWS::API::SingleEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'iam');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-08');
  
  method AddRoleToInstanceProfile (%args) {
    my $call = Aws::IAM::AddRoleToInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AddUserToGroup (%args) {
    my $call = Aws::IAM::AddUserToGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ChangePassword (%args) {
    my $call = Aws::IAM::ChangePassword->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateAccessKey (%args) {
    my $call = Aws::IAM::CreateAccessKey->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateAccessKeyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateAccountAlias (%args) {
    my $call = Aws::IAM::CreateAccountAlias->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateGroup (%args) {
    my $call = Aws::IAM::CreateGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateInstanceProfile (%args) {
    my $call = Aws::IAM::CreateInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateInstanceProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateLoginProfile (%args) {
    my $call = Aws::IAM::CreateLoginProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateLoginProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateRole (%args) {
    my $call = Aws::IAM::CreateRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateSAMLProvider (%args) {
    my $call = Aws::IAM::CreateSAMLProvider->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateSAMLProviderResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateUser (%args) {
    my $call = Aws::IAM::CreateUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateUserResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateVirtualMFADevice (%args) {
    my $call = Aws::IAM::CreateVirtualMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateVirtualMFADeviceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeactivateMFADevice (%args) {
    my $call = Aws::IAM::DeactivateMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteAccessKey (%args) {
    my $call = Aws::IAM::DeleteAccessKey->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteAccountAlias (%args) {
    my $call = Aws::IAM::DeleteAccountAlias->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteAccountPasswordPolicy (%args) {
    my $call = Aws::IAM::DeleteAccountPasswordPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteGroup (%args) {
    my $call = Aws::IAM::DeleteGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteGroupPolicy (%args) {
    my $call = Aws::IAM::DeleteGroupPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteInstanceProfile (%args) {
    my $call = Aws::IAM::DeleteInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteLoginProfile (%args) {
    my $call = Aws::IAM::DeleteLoginProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteRole (%args) {
    my $call = Aws::IAM::DeleteRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteRolePolicy (%args) {
    my $call = Aws::IAM::DeleteRolePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteSAMLProvider (%args) {
    my $call = Aws::IAM::DeleteSAMLProvider->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteServerCertificate (%args) {
    my $call = Aws::IAM::DeleteServerCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteSigningCertificate (%args) {
    my $call = Aws::IAM::DeleteSigningCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteUser (%args) {
    my $call = Aws::IAM::DeleteUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteUserPolicy (%args) {
    my $call = Aws::IAM::DeleteUserPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteVirtualMFADevice (%args) {
    my $call = Aws::IAM::DeleteVirtualMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method EnableMFADevice (%args) {
    my $call = Aws::IAM::EnableMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetAccountPasswordPolicy (%args) {
    my $call = Aws::IAM::GetAccountPasswordPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetAccountPasswordPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetAccountSummary (%args) {
    my $call = Aws::IAM::GetAccountSummary->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetAccountSummaryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetGroup (%args) {
    my $call = Aws::IAM::GetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetGroupPolicy (%args) {
    my $call = Aws::IAM::GetGroupPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetGroupPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetInstanceProfile (%args) {
    my $call = Aws::IAM::GetInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetInstanceProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetLoginProfile (%args) {
    my $call = Aws::IAM::GetLoginProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetLoginProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetRole (%args) {
    my $call = Aws::IAM::GetRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetRolePolicy (%args) {
    my $call = Aws::IAM::GetRolePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetRolePolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetSAMLProvider (%args) {
    my $call = Aws::IAM::GetSAMLProvider->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetSAMLProviderResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetServerCertificate (%args) {
    my $call = Aws::IAM::GetServerCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetServerCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetUser (%args) {
    my $call = Aws::IAM::GetUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetUserResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetUserPolicy (%args) {
    my $call = Aws::IAM::GetUserPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetUserPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListAccessKeys (%args) {
    my $call = Aws::IAM::ListAccessKeys->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListAccessKeysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListAccountAliases (%args) {
    my $call = Aws::IAM::ListAccountAliases->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListAccountAliasesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListGroupPolicies (%args) {
    my $call = Aws::IAM::ListGroupPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListGroupPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListGroups (%args) {
    my $call = Aws::IAM::ListGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListGroupsForUser (%args) {
    my $call = Aws::IAM::ListGroupsForUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListGroupsForUserResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListInstanceProfiles (%args) {
    my $call = Aws::IAM::ListInstanceProfiles->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListInstanceProfilesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListInstanceProfilesForRole (%args) {
    my $call = Aws::IAM::ListInstanceProfilesForRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListInstanceProfilesForRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListMFADevices (%args) {
    my $call = Aws::IAM::ListMFADevices->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListMFADevicesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListRolePolicies (%args) {
    my $call = Aws::IAM::ListRolePolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListRolePoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListRoles (%args) {
    my $call = Aws::IAM::ListRoles->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListRolesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSAMLProviders (%args) {
    my $call = Aws::IAM::ListSAMLProviders->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListSAMLProvidersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListServerCertificates (%args) {
    my $call = Aws::IAM::ListServerCertificates->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListServerCertificatesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSigningCertificates (%args) {
    my $call = Aws::IAM::ListSigningCertificates->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListSigningCertificatesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListUserPolicies (%args) {
    my $call = Aws::IAM::ListUserPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListUserPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListUsers (%args) {
    my $call = Aws::IAM::ListUsers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListUsersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListVirtualMFADevices (%args) {
    my $call = Aws::IAM::ListVirtualMFADevices->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListVirtualMFADevicesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PutGroupPolicy (%args) {
    my $call = Aws::IAM::PutGroupPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method PutRolePolicy (%args) {
    my $call = Aws::IAM::PutRolePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method PutUserPolicy (%args) {
    my $call = Aws::IAM::PutUserPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RemoveRoleFromInstanceProfile (%args) {
    my $call = Aws::IAM::RemoveRoleFromInstanceProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RemoveUserFromGroup (%args) {
    my $call = Aws::IAM::RemoveUserFromGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ResyncMFADevice (%args) {
    my $call = Aws::IAM::ResyncMFADevice->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateAccessKey (%args) {
    my $call = Aws::IAM::UpdateAccessKey->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateAccountPasswordPolicy (%args) {
    my $call = Aws::IAM::UpdateAccountPasswordPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateAssumeRolePolicy (%args) {
    my $call = Aws::IAM::UpdateAssumeRolePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateGroup (%args) {
    my $call = Aws::IAM::UpdateGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateLoginProfile (%args) {
    my $call = Aws::IAM::UpdateLoginProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateSAMLProvider (%args) {
    my $call = Aws::IAM::UpdateSAMLProvider->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::UpdateSAMLProviderResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateServerCertificate (%args) {
    my $call = Aws::IAM::UpdateServerCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateSigningCertificate (%args) {
    my $call = Aws::IAM::UpdateSigningCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateUser (%args) {
    my $call = Aws::IAM::UpdateUser->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UploadServerCertificate (%args) {
    my $call = Aws::IAM::UploadServerCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::UploadServerCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UploadSigningCertificate (%args) {
    my $call = Aws::IAM::UploadSigningCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::UploadSigningCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
