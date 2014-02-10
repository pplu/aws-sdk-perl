
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::IAM::statusType', ['Active','Inactive',];


package Aws::IAM::AccessKey {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str');
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::IAM::statusType', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::AccessKeyMetadata {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AccessKeyId => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::IAM::statusType');
  has UserName => (is => 'ro', isa => 'Str');
}

package Aws::IAM::Group {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::InstanceProfile {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has Roles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Role]', required => 1);
}

package Aws::IAM::LoginProfile {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::MFADevice {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has EnableDate => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::PasswordPolicy {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Str');
  has ExpirePasswords => (is => 'ro', isa => 'Str');
  has MaxPasswordAge => (is => 'ro', isa => 'Int');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Str');
  has RequireNumbers => (is => 'ro', isa => 'Str');
  has RequireSymbols => (is => 'ro', isa => 'Str');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Str');
}

package Aws::IAM::Role {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has RoleId => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::SAMLProviderListEntry {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
}

package Aws::IAM::ServerCertificate {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadata => (is => 'ro', isa => 'Aws::IAM::ServerCertificateMetadata', required => 1);
}

package Aws::IAM::ServerCertificateMetadata {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateId => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
}

package Aws::IAM::SigningCertificate {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::IAM::statusType', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::User {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::VirtualMFADevice {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Base32StringSeed => (is => 'ro', isa => 'Str');
  has EnableDate => (is => 'ro', isa => 'Str');
  has QRCodePNG => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has User => (is => 'ro', isa => 'Aws::IAM::User');
}

package Aws::IAM::summaryMapType {
  use Moose;
  with 'AWS::API::MapParser';
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



package Aws::IAM::AddRoleToInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddRoleToInstanceProfile');
  has _returns => (isa => 'Aws::IAM::AddRoleToInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddRoleToInstanceProfileResult');  
}
package Aws::IAM::AddUserToGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddUserToGroup');
  has _returns => (isa => 'Aws::IAM::AddUserToGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddUserToGroupResult');  
}
package Aws::IAM::ChangePassword {
  use Moose;
  has NewPassword => (is => 'ro', isa => 'Str', required => 1);
  has OldPassword => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangePassword');
  has _returns => (isa => 'Aws::IAM::ChangePasswordResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangePasswordResult');  
}
package Aws::IAM::CreateAccessKey {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessKey');
  has _returns => (isa => 'Aws::IAM::CreateAccessKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAccessKeyResult');  
}
package Aws::IAM::CreateAccountAlias {
  use Moose;
  has AccountAlias => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccountAlias');
  has _returns => (isa => 'Aws::IAM::CreateAccountAliasResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAccountAliasResult');  
}
package Aws::IAM::CreateGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  has _returns => (isa => 'Aws::IAM::CreateGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGroupResult');  
}
package Aws::IAM::CreateInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfile');
  has _returns => (isa => 'Aws::IAM::CreateInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfileResult');  
}
package Aws::IAM::CreateLoginProfile {
  use Moose;
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoginProfile');
  has _returns => (isa => 'Aws::IAM::CreateLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoginProfileResult');  
}
package Aws::IAM::CreateRole {
  use Moose;
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRole');
  has _returns => (isa => 'Aws::IAM::CreateRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRoleResult');  
}
package Aws::IAM::CreateSAMLProvider {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSAMLProvider');
  has _returns => (isa => 'Aws::IAM::CreateSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSAMLProviderResult');  
}
package Aws::IAM::CreateUser {
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  has _returns => (isa => 'Aws::IAM::CreateUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserResult');  
}
package Aws::IAM::CreateVirtualMFADevice {
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has VirtualMFADeviceName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADevice');
  has _returns => (isa => 'Aws::IAM::CreateVirtualMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADeviceResult');  
}
package Aws::IAM::DeactivateMFADevice {
  use Moose;
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeactivateMFADevice');
  has _returns => (isa => 'Aws::IAM::DeactivateMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeactivateMFADeviceResult');  
}
package Aws::IAM::DeleteAccessKey {
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccessKey');
  has _returns => (isa => 'Aws::IAM::DeleteAccessKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAccessKeyResult');  
}
package Aws::IAM::DeleteAccountAlias {
  use Moose;
  has AccountAlias => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountAlias');
  has _returns => (isa => 'Aws::IAM::DeleteAccountAliasResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAccountAliasResult');  
}
package Aws::IAM::DeleteAccountPasswordPolicy {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountPasswordPolicy');
  has _returns => (isa => 'Aws::IAM::DeleteAccountPasswordPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAccountPasswordPolicyResult');  
}
package Aws::IAM::DeleteGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroup');
  has _returns => (isa => 'Aws::IAM::DeleteGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGroupResult');  
}
package Aws::IAM::DeleteGroupPolicy {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroupPolicy');
  has _returns => (isa => 'Aws::IAM::DeleteGroupPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGroupPolicyResult');  
}
package Aws::IAM::DeleteInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstanceProfile');
  has _returns => (isa => 'Aws::IAM::DeleteInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInstanceProfileResult');  
}
package Aws::IAM::DeleteLoginProfile {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoginProfile');
  has _returns => (isa => 'Aws::IAM::DeleteLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoginProfileResult');  
}
package Aws::IAM::DeleteRole {
  use Moose;
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRole');
  has _returns => (isa => 'Aws::IAM::DeleteRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRoleResult');  
}
package Aws::IAM::DeleteRolePolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRolePolicy');
  has _returns => (isa => 'Aws::IAM::DeleteRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRolePolicyResult');  
}
package Aws::IAM::DeleteSAMLProvider {
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSAMLProvider');
  has _returns => (isa => 'Aws::IAM::DeleteSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSAMLProviderResult');  
}
package Aws::IAM::DeleteServerCertificate {
  use Moose;
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServerCertificate');
  has _returns => (isa => 'Aws::IAM::DeleteServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteServerCertificateResult');  
}
package Aws::IAM::DeleteSigningCertificate {
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSigningCertificate');
  has _returns => (isa => 'Aws::IAM::DeleteSigningCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSigningCertificateResult');  
}
package Aws::IAM::DeleteUser {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUser');
  has _returns => (isa => 'Aws::IAM::DeleteUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserResult');  
}
package Aws::IAM::DeleteUserPolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserPolicy');
  has _returns => (isa => 'Aws::IAM::DeleteUserPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserPolicyResult');  
}
package Aws::IAM::DeleteVirtualMFADevice {
  use Moose;
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualMFADevice');
  has _returns => (isa => 'Aws::IAM::DeleteVirtualMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVirtualMFADeviceResult');  
}
package Aws::IAM::EnableMFADevice {
  use Moose;
  has AuthenticationCode1 => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationCode2 => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMFADevice');
  has _returns => (isa => 'Aws::IAM::EnableMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableMFADeviceResult');  
}
package Aws::IAM::GetAccountPasswordPolicy {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicy');
  has _returns => (isa => 'Aws::IAM::GetAccountPasswordPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicyResult');  
}
package Aws::IAM::GetAccountSummary {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountSummary');
  has _returns => (isa => 'Aws::IAM::GetAccountSummaryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountSummaryResult');  
}
package Aws::IAM::GetGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroup');
  has _returns => (isa => 'Aws::IAM::GetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupResult');  
}
package Aws::IAM::GetGroupPolicy {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupPolicy');
  has _returns => (isa => 'Aws::IAM::GetGroupPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupPolicyResult');  
}
package Aws::IAM::GetInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceProfile');
  has _returns => (isa => 'Aws::IAM::GetInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetInstanceProfileResult');  
}
package Aws::IAM::GetLoginProfile {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetLoginProfile');
  has _returns => (isa => 'Aws::IAM::GetLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetLoginProfileResult');  
}
package Aws::IAM::GetRole {
  use Moose;
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetRole');
  has _returns => (isa => 'Aws::IAM::GetRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetRoleResult');  
}
package Aws::IAM::GetRolePolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetRolePolicy');
  has _returns => (isa => 'Aws::IAM::GetRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetRolePolicyResult');  
}
package Aws::IAM::GetSAMLProvider {
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSAMLProvider');
  has _returns => (isa => 'Aws::IAM::GetSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSAMLProviderResult');  
}
package Aws::IAM::GetServerCertificate {
  use Moose;
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetServerCertificate');
  has _returns => (isa => 'Aws::IAM::GetServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetServerCertificateResult');  
}
package Aws::IAM::GetUser {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetUser');
  has _returns => (isa => 'Aws::IAM::GetUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserResult');  
}
package Aws::IAM::GetUserPolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserPolicy');
  has _returns => (isa => 'Aws::IAM::GetUserPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserPolicyResult');  
}
package Aws::IAM::ListAccessKeys {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessKeys');
  has _returns => (isa => 'Aws::IAM::ListAccessKeysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAccessKeysResult');  
}
package Aws::IAM::ListAccountAliases {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccountAliases');
  has _returns => (isa => 'Aws::IAM::ListAccountAliasesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAccountAliasesResult');  
}
package Aws::IAM::ListGroupPolicies {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupPolicies');
  has _returns => (isa => 'Aws::IAM::ListGroupPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupPoliciesResult');  
}
package Aws::IAM::ListGroups {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroups');
  has _returns => (isa => 'Aws::IAM::ListGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupsResult');  
}
package Aws::IAM::ListGroupsForUser {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupsForUser');
  has _returns => (isa => 'Aws::IAM::ListGroupsForUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupsForUserResult');  
}
package Aws::IAM::ListInstanceProfiles {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceProfiles');
  has _returns => (isa => 'Aws::IAM::ListInstanceProfilesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesResult');  
}
package Aws::IAM::ListInstanceProfilesForRole {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRole');
  has _returns => (isa => 'Aws::IAM::ListInstanceProfilesForRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRoleResult');  
}
package Aws::IAM::ListMFADevices {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListMFADevices');
  has _returns => (isa => 'Aws::IAM::ListMFADevicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListMFADevicesResult');  
}
package Aws::IAM::ListRolePolicies {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListRolePolicies');
  has _returns => (isa => 'Aws::IAM::ListRolePoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolePoliciesResult');  
}
package Aws::IAM::ListRoles {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListRoles');
  has _returns => (isa => 'Aws::IAM::ListRolesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolesResult');  
}
package Aws::IAM::ListSAMLProviders {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSAMLProviders');
  has _returns => (isa => 'Aws::IAM::ListSAMLProvidersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSAMLProvidersResult');  
}
package Aws::IAM::ListServerCertificates {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListServerCertificates');
  has _returns => (isa => 'Aws::IAM::ListServerCertificatesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListServerCertificatesResult');  
}
package Aws::IAM::ListSigningCertificates {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSigningCertificates');
  has _returns => (isa => 'Aws::IAM::ListSigningCertificatesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSigningCertificatesResult');  
}
package Aws::IAM::ListUserPolicies {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserPolicies');
  has _returns => (isa => 'Aws::IAM::ListUserPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListUserPoliciesResult');  
}
package Aws::IAM::ListUsers {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  has _returns => (isa => 'Aws::IAM::ListUsersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListUsersResult');  
}
package Aws::IAM::ListVirtualMFADevices {
  use Moose;
  has AssignmentStatus => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevices');
  has _returns => (isa => 'Aws::IAM::ListVirtualMFADevicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevicesResult');  
}
package Aws::IAM::PutGroupPolicy {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutGroupPolicy');
  has _returns => (isa => 'Aws::IAM::PutGroupPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutGroupPolicyResult');  
}
package Aws::IAM::PutRolePolicy {
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutRolePolicy');
  has _returns => (isa => 'Aws::IAM::PutRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutRolePolicyResult');  
}
package Aws::IAM::PutUserPolicy {
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutUserPolicy');
  has _returns => (isa => 'Aws::IAM::PutUserPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutUserPolicyResult');  
}
package Aws::IAM::RemoveRoleFromInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveRoleFromInstanceProfile');
  has _returns => (isa => 'Aws::IAM::RemoveRoleFromInstanceProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveRoleFromInstanceProfileResult');  
}
package Aws::IAM::RemoveUserFromGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveUserFromGroup');
  has _returns => (isa => 'Aws::IAM::RemoveUserFromGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveUserFromGroupResult');  
}
package Aws::IAM::ResyncMFADevice {
  use Moose;
  has AuthenticationCode1 => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationCode2 => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResyncMFADevice');
  has _returns => (isa => 'Aws::IAM::ResyncMFADeviceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResyncMFADeviceResult');  
}
package Aws::IAM::UpdateAccessKey {
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccessKey');
  has _returns => (isa => 'Aws::IAM::UpdateAccessKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAccessKeyResult');  
}
package Aws::IAM::UpdateAccountPasswordPolicy {
  use Moose;
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
package Aws::IAM::UpdateAssumeRolePolicy {
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssumeRolePolicy');
  has _returns => (isa => 'Aws::IAM::UpdateAssumeRolePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAssumeRolePolicyResult');  
}
package Aws::IAM::UpdateGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has NewGroupName => (is => 'ro', isa => 'Str');
  has NewPath => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  has _returns => (isa => 'Aws::IAM::UpdateGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGroupResult');  
}
package Aws::IAM::UpdateLoginProfile {
  use Moose;
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLoginProfile');
  has _returns => (isa => 'Aws::IAM::UpdateLoginProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateLoginProfileResult');  
}
package Aws::IAM::UpdateSAMLProvider {
  use Moose;
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProvider');
  has _returns => (isa => 'Aws::IAM::UpdateSAMLProviderResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProviderResult');  
}
package Aws::IAM::UpdateServerCertificate {
  use Moose;
  has NewPath => (is => 'ro', isa => 'Str');
  has NewServerCertificateName => (is => 'ro', isa => 'Str');
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServerCertificate');
  has _returns => (isa => 'Aws::IAM::UpdateServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateServerCertificateResult');  
}
package Aws::IAM::UpdateSigningCertificate {
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSigningCertificate');
  has _returns => (isa => 'Aws::IAM::UpdateSigningCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSigningCertificateResult');  
}
package Aws::IAM::UpdateUser {
  use Moose;
  has NewPath => (is => 'ro', isa => 'Str');
  has NewUserName => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  has _returns => (isa => 'Aws::IAM::UpdateUserResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateUserResult');  
}
package Aws::IAM::UploadServerCertificate {
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UploadServerCertificate');
  has _returns => (isa => 'Aws::IAM::UploadServerCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UploadServerCertificateResult');  
}
package Aws::IAM::UploadSigningCertificate {
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificate');
  has _returns => (isa => 'Aws::IAM::UploadSigningCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificateResult');  
}

package Aws::IAM::CreateAccessKeyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessKey => (is => 'ro', isa => 'Aws::IAM::AccessKey', required => 1);

}
package Aws::IAM::CreateGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Group => (is => 'ro', isa => 'Aws::IAM::Group', required => 1);

}
package Aws::IAM::CreateInstanceProfileResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceProfile => (is => 'ro', isa => 'Aws::IAM::InstanceProfile', required => 1);

}
package Aws::IAM::CreateLoginProfileResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoginProfile => (is => 'ro', isa => 'Aws::IAM::LoginProfile', required => 1);

}
package Aws::IAM::CreateRoleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Role => (is => 'ro', isa => 'Aws::IAM::Role', required => 1);

}
package Aws::IAM::CreateSAMLProviderResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
package Aws::IAM::CreateUserResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has User => (is => 'ro', isa => 'Aws::IAM::User');

}
package Aws::IAM::CreateVirtualMFADeviceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VirtualMFADevice => (is => 'ro', isa => 'Aws::IAM::VirtualMFADevice', required => 1);

}
package Aws::IAM::GetAccountPasswordPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PasswordPolicy => (is => 'ro', isa => 'Aws::IAM::PasswordPolicy', required => 1);

}
package Aws::IAM::GetAccountSummaryResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SummaryMap => (is => 'ro', isa => 'Aws::IAM::summaryMapType');

}
package Aws::IAM::GetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Group => (is => 'ro', isa => 'Aws::IAM::Group', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Aws::IAM::User]', required => 1);

}
package Aws::IAM::GetGroupPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::IAM::GetInstanceProfileResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceProfile => (is => 'ro', isa => 'Aws::IAM::InstanceProfile', required => 1);

}
package Aws::IAM::GetLoginProfileResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoginProfile => (is => 'ro', isa => 'Aws::IAM::LoginProfile', required => 1);

}
package Aws::IAM::GetRoleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Role => (is => 'ro', isa => 'Aws::IAM::Role', required => 1);

}
package Aws::IAM::GetRolePolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::IAM::GetSAMLProviderResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CreateDate => (is => 'ro', isa => 'Str');
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

}
package Aws::IAM::GetServerCertificateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ServerCertificate => (is => 'ro', isa => 'Aws::IAM::ServerCertificate', required => 1);

}
package Aws::IAM::GetUserResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has User => (is => 'ro', isa => 'Aws::IAM::User', required => 1);

}
package Aws::IAM::GetUserPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::IAM::ListAccessKeysResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessKeyMetadata => (is => 'ro', isa => 'ArrayRef[Aws::IAM::AccessKeyMetadata]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListAccountAliasesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccountAliases => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListGroupPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
package Aws::IAM::ListGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListGroupsForUserResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListInstanceProfilesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListInstanceProfilesForRoleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListMFADevicesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MFADevices => (is => 'ro', isa => 'ArrayRef[Aws::IAM::MFADevice]', required => 1);

}
package Aws::IAM::ListRolePoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
package Aws::IAM::ListRolesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Roles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Role]', required => 1);

}
package Aws::IAM::ListSAMLProvidersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SAMLProviderList => (is => 'ro', isa => 'ArrayRef[Aws::IAM::SAMLProviderListEntry]');

}
package Aws::IAM::ListServerCertificatesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadataList => (is => 'ro', isa => 'ArrayRef[Aws::IAM::ServerCertificateMetadata]', required => 1);

}
package Aws::IAM::ListSigningCertificatesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Certificates => (is => 'ro', isa => 'ArrayRef[Aws::IAM::SigningCertificate]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListUserPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
package Aws::IAM::ListUsersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Aws::IAM::User]', required => 1);

}
package Aws::IAM::ListVirtualMFADevicesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VirtualMFADevices => (is => 'ro', isa => 'ArrayRef[Aws::IAM::VirtualMFADevice]', required => 1);

}
package Aws::IAM::UpdateSAMLProviderResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
package Aws::IAM::UploadServerCertificateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ServerCertificateMetadata => (is => 'ro', isa => 'Aws::IAM::ServerCertificateMetadata');

}
package Aws::IAM::UploadSigningCertificateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Certificate => (is => 'ro', isa => 'Aws::IAM::SigningCertificate', required => 1);

}

package Aws::IAM {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'iam');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-08');
  with ('Net::AWS::Caller', 'AWS::API::SingleEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub AddRoleToInstanceProfile {
    my $self = shift;
    my $call = Aws::IAM::AddRoleToInstanceProfile->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub AddUserToGroup {
    my $self = shift;
    my $call = Aws::IAM::AddUserToGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ChangePassword {
    my $self = shift;
    my $call = Aws::IAM::ChangePassword->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateAccessKey {
    my $self = shift;
    my $call = Aws::IAM::CreateAccessKey->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateAccessKeyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateAccountAlias {
    my $self = shift;
    my $call = Aws::IAM::CreateAccountAlias->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateGroup {
    my $self = shift;
    my $call = Aws::IAM::CreateGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateInstanceProfile {
    my $self = shift;
    my $call = Aws::IAM::CreateInstanceProfile->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateInstanceProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateLoginProfile {
    my $self = shift;
    my $call = Aws::IAM::CreateLoginProfile->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateLoginProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateRole {
    my $self = shift;
    my $call = Aws::IAM::CreateRole->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateSAMLProvider {
    my $self = shift;
    my $call = Aws::IAM::CreateSAMLProvider->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateSAMLProviderResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateUser {
    my $self = shift;
    my $call = Aws::IAM::CreateUser->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateUserResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateVirtualMFADevice {
    my $self = shift;
    my $call = Aws::IAM::CreateVirtualMFADevice->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::CreateVirtualMFADeviceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeactivateMFADevice {
    my $self = shift;
    my $call = Aws::IAM::DeactivateMFADevice->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteAccessKey {
    my $self = shift;
    my $call = Aws::IAM::DeleteAccessKey->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteAccountAlias {
    my $self = shift;
    my $call = Aws::IAM::DeleteAccountAlias->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteAccountPasswordPolicy {
    my $self = shift;
    my $call = Aws::IAM::DeleteAccountPasswordPolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteGroup {
    my $self = shift;
    my $call = Aws::IAM::DeleteGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteGroupPolicy {
    my $self = shift;
    my $call = Aws::IAM::DeleteGroupPolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteInstanceProfile {
    my $self = shift;
    my $call = Aws::IAM::DeleteInstanceProfile->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteLoginProfile {
    my $self = shift;
    my $call = Aws::IAM::DeleteLoginProfile->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteRole {
    my $self = shift;
    my $call = Aws::IAM::DeleteRole->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteRolePolicy {
    my $self = shift;
    my $call = Aws::IAM::DeleteRolePolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteSAMLProvider {
    my $self = shift;
    my $call = Aws::IAM::DeleteSAMLProvider->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteServerCertificate {
    my $self = shift;
    my $call = Aws::IAM::DeleteServerCertificate->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteSigningCertificate {
    my $self = shift;
    my $call = Aws::IAM::DeleteSigningCertificate->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteUser {
    my $self = shift;
    my $call = Aws::IAM::DeleteUser->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteUserPolicy {
    my $self = shift;
    my $call = Aws::IAM::DeleteUserPolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteVirtualMFADevice {
    my $self = shift;
    my $call = Aws::IAM::DeleteVirtualMFADevice->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub EnableMFADevice {
    my $self = shift;
    my $call = Aws::IAM::EnableMFADevice->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub GetAccountPasswordPolicy {
    my $self = shift;
    my $call = Aws::IAM::GetAccountPasswordPolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetAccountPasswordPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetAccountSummary {
    my $self = shift;
    my $call = Aws::IAM::GetAccountSummary->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetAccountSummaryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetGroup {
    my $self = shift;
    my $call = Aws::IAM::GetGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetGroupPolicy {
    my $self = shift;
    my $call = Aws::IAM::GetGroupPolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetGroupPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetInstanceProfile {
    my $self = shift;
    my $call = Aws::IAM::GetInstanceProfile->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetInstanceProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetLoginProfile {
    my $self = shift;
    my $call = Aws::IAM::GetLoginProfile->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetLoginProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetRole {
    my $self = shift;
    my $call = Aws::IAM::GetRole->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetRolePolicy {
    my $self = shift;
    my $call = Aws::IAM::GetRolePolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetRolePolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetSAMLProvider {
    my $self = shift;
    my $call = Aws::IAM::GetSAMLProvider->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetSAMLProviderResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetServerCertificate {
    my $self = shift;
    my $call = Aws::IAM::GetServerCertificate->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetServerCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetUser {
    my $self = shift;
    my $call = Aws::IAM::GetUser->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetUserResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetUserPolicy {
    my $self = shift;
    my $call = Aws::IAM::GetUserPolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::GetUserPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListAccessKeys {
    my $self = shift;
    my $call = Aws::IAM::ListAccessKeys->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListAccessKeysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListAccountAliases {
    my $self = shift;
    my $call = Aws::IAM::ListAccountAliases->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListAccountAliasesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListGroupPolicies {
    my $self = shift;
    my $call = Aws::IAM::ListGroupPolicies->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListGroupPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListGroups {
    my $self = shift;
    my $call = Aws::IAM::ListGroups->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListGroupsForUser {
    my $self = shift;
    my $call = Aws::IAM::ListGroupsForUser->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListGroupsForUserResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListInstanceProfiles {
    my $self = shift;
    my $call = Aws::IAM::ListInstanceProfiles->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListInstanceProfilesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListInstanceProfilesForRole {
    my $self = shift;
    my $call = Aws::IAM::ListInstanceProfilesForRole->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListInstanceProfilesForRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListMFADevices {
    my $self = shift;
    my $call = Aws::IAM::ListMFADevices->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListMFADevicesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListRolePolicies {
    my $self = shift;
    my $call = Aws::IAM::ListRolePolicies->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListRolePoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListRoles {
    my $self = shift;
    my $call = Aws::IAM::ListRoles->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListRolesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListSAMLProviders {
    my $self = shift;
    my $call = Aws::IAM::ListSAMLProviders->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListSAMLProvidersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListServerCertificates {
    my $self = shift;
    my $call = Aws::IAM::ListServerCertificates->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListServerCertificatesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListSigningCertificates {
    my $self = shift;
    my $call = Aws::IAM::ListSigningCertificates->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListSigningCertificatesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListUserPolicies {
    my $self = shift;
    my $call = Aws::IAM::ListUserPolicies->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListUserPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListUsers {
    my $self = shift;
    my $call = Aws::IAM::ListUsers->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListUsersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListVirtualMFADevices {
    my $self = shift;
    my $call = Aws::IAM::ListVirtualMFADevices->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::ListVirtualMFADevicesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub PutGroupPolicy {
    my $self = shift;
    my $call = Aws::IAM::PutGroupPolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutRolePolicy {
    my $self = shift;
    my $call = Aws::IAM::PutRolePolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutUserPolicy {
    my $self = shift;
    my $call = Aws::IAM::PutUserPolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RemoveRoleFromInstanceProfile {
    my $self = shift;
    my $call = Aws::IAM::RemoveRoleFromInstanceProfile->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RemoveUserFromGroup {
    my $self = shift;
    my $call = Aws::IAM::RemoveUserFromGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ResyncMFADevice {
    my $self = shift;
    my $call = Aws::IAM::ResyncMFADevice->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateAccessKey {
    my $self = shift;
    my $call = Aws::IAM::UpdateAccessKey->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateAccountPasswordPolicy {
    my $self = shift;
    my $call = Aws::IAM::UpdateAccountPasswordPolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateAssumeRolePolicy {
    my $self = shift;
    my $call = Aws::IAM::UpdateAssumeRolePolicy->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateGroup {
    my $self = shift;
    my $call = Aws::IAM::UpdateGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateLoginProfile {
    my $self = shift;
    my $call = Aws::IAM::UpdateLoginProfile->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateSAMLProvider {
    my $self = shift;
    my $call = Aws::IAM::UpdateSAMLProvider->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::UpdateSAMLProviderResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateServerCertificate {
    my $self = shift;
    my $call = Aws::IAM::UpdateServerCertificate->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateSigningCertificate {
    my $self = shift;
    my $call = Aws::IAM::UpdateSigningCertificate->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateUser {
    my $self = shift;
    my $call = Aws::IAM::UpdateUser->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UploadServerCertificate {
    my $self = shift;
    my $call = Aws::IAM::UploadServerCertificate->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::UploadServerCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UploadSigningCertificate {
    my $self = shift;
    my $call = Aws::IAM::UploadSigningCertificate->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::IAM::UploadSigningCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
