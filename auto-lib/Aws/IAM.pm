
use AWS::API;


package Aws::IAM::AccessKey {
  use Moose;
  with ('AWS::API::ResultParser');
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str');
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::AccessKeyMetadata {
  use Moose;
  with ('AWS::API::ResultParser');
  has AccessKeyId => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
}

package Aws::IAM::Group {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::InstanceProfile {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has Roles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Role]', required => 1);
}

package Aws::IAM::LoginProfile {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has PasswordResetRequired => (is => 'ro', isa => 'Bool');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::MFADevice {
  use Moose;
  with ('AWS::API::ResultParser');
  has EnableDate => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::PasswordPolicy {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Bool');
  has ExpirePasswords => (is => 'ro', isa => 'Bool');
  has HardExpiry => (is => 'ro', isa => 'Bool');
  has MaxPasswordAge => (is => 'ro', isa => 'Int');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has PasswordReusePrevention => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Bool');
  has RequireNumbers => (is => 'ro', isa => 'Bool');
  has RequireSymbols => (is => 'ro', isa => 'Bool');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Bool');
}

package Aws::IAM::Role {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has RoleId => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::SAMLProviderListEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
}

package Aws::IAM::ServerCertificate {
  use Moose;
  with ('AWS::API::ResultParser');
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadata => (is => 'ro', isa => 'Aws::IAM::ServerCertificateMetadata', required => 1);
}

package Aws::IAM::ServerCertificateMetadata {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Expiration => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateId => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
}

package Aws::IAM::SigningCertificate {
  use Moose;
  with ('AWS::API::ResultParser');
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::User {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::IAM::VirtualMFADevice {
  use Moose;
  with ('AWS::API::ResultParser');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddRoleToInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::AddUserToGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddUserToGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::ChangePassword {
  use Moose;
  has NewPassword => (is => 'ro', isa => 'Str', required => 1);
  has OldPassword => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangePassword');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::CreateAccessKey {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateAccessKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAccessKeyResult');
}
package Aws::IAM::CreateAccountAlias {
  use Moose;
  has AccountAlias => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccountAlias');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::CreateGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGroupResult');
}
package Aws::IAM::CreateInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateInstanceProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfileResult');
}
package Aws::IAM::CreateLoginProfile {
  use Moose;
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has PasswordResetRequired => (is => 'ro', isa => 'Bool');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoginProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateLoginProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoginProfileResult');
}
package Aws::IAM::CreateRole {
  use Moose;
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateRoleResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRoleResult');
}
package Aws::IAM::CreateSAMLProvider {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateSAMLProviderResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSAMLProviderResult');
}
package Aws::IAM::CreateUser {
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateUserResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserResult');
}
package Aws::IAM::CreateVirtualMFADevice {
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has VirtualMFADeviceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateVirtualMFADeviceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADeviceResult');
}
package Aws::IAM::DeactivateMFADevice {
  use Moose;
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeactivateMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteAccessKey {
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccessKey');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteAccountAlias {
  use Moose;
  has AccountAlias => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountAlias');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteAccountPasswordPolicy {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountPasswordPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteGroupPolicy {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteLoginProfile {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoginProfile');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteRole {
  use Moose;
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRole');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteRolePolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRolePolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteSAMLProvider {
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteServerCertificate {
  use Moose;
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServerCertificate');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteSigningCertificate {
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSigningCertificate');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteUser {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUser');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteUserPolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::DeleteVirtualMFADevice {
  use Moose;
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::EnableMFADevice {
  use Moose;
  has AuthenticationCode1 => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationCode2 => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::GenerateCredentialReport {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateCredentialReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GenerateCredentialReportResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GenerateCredentialReportResult');
}
package Aws::IAM::GetAccountPasswordPolicy {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetAccountPasswordPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicyResult');
}
package Aws::IAM::GetAccountSummary {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetAccountSummaryResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountSummaryResult');
}
package Aws::IAM::GetCredentialReport {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCredentialReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetCredentialReportResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetCredentialReportResult');
}
package Aws::IAM::GetGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupResult');
}
package Aws::IAM::GetGroupPolicy {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetGroupPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupPolicyResult');
}
package Aws::IAM::GetInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetInstanceProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetInstanceProfileResult');
}
package Aws::IAM::GetLoginProfile {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLoginProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetLoginProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetLoginProfileResult');
}
package Aws::IAM::GetRole {
  use Moose;
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetRoleResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetRoleResult');
}
package Aws::IAM::GetRolePolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRolePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetRolePolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetRolePolicyResult');
}
package Aws::IAM::GetSAMLProvider {
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetSAMLProviderResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSAMLProviderResult');
}
package Aws::IAM::GetServerCertificate {
  use Moose;
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServerCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetServerCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetServerCertificateResult');
}
package Aws::IAM::GetUser {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetUserResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserResult');
}
package Aws::IAM::GetUserPolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetUserPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserPolicyResult');
}
package Aws::IAM::ListAccessKeys {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListAccessKeysResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListAccessKeysResult');
}
package Aws::IAM::ListAccountAliases {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccountAliases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListAccountAliasesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListAccountAliasesResult');
}
package Aws::IAM::ListGroupPolicies {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListGroupPoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupPoliciesResult');
}
package Aws::IAM::ListGroups {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupsResult');
}
package Aws::IAM::ListGroupsForUser {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupsForUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListGroupsForUserResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupsForUserResult');
}
package Aws::IAM::ListInstanceProfiles {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListInstanceProfilesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesResult');
}
package Aws::IAM::ListInstanceProfilesForRole {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListInstanceProfilesForRoleResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRoleResult');
}
package Aws::IAM::ListMFADevices {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMFADevices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListMFADevicesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListMFADevicesResult');
}
package Aws::IAM::ListRolePolicies {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRolePolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListRolePoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolePoliciesResult');
}
package Aws::IAM::ListRoles {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRoles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListRolesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolesResult');
}
package Aws::IAM::ListSAMLProviders {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSAMLProviders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListSAMLProvidersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSAMLProvidersResult');
}
package Aws::IAM::ListServerCertificates {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServerCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListServerCertificatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListServerCertificatesResult');
}
package Aws::IAM::ListSigningCertificates {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSigningCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListSigningCertificatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSigningCertificatesResult');
}
package Aws::IAM::ListUserPolicies {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListUserPoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListUserPoliciesResult');
}
package Aws::IAM::ListUsers {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListUsersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListUsersResult');
}
package Aws::IAM::ListVirtualMFADevices {
  use Moose;
  has AssignmentStatus => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListVirtualMFADevicesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevicesResult');
}
package Aws::IAM::PutGroupPolicy {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::PutRolePolicy {
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRolePolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::PutUserPolicy {
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutUserPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::RemoveRoleFromInstanceProfile {
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveRoleFromInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::RemoveUserFromGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveUserFromGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::ResyncMFADevice {
  use Moose;
  has AuthenticationCode1 => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationCode2 => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResyncMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::UpdateAccessKey {
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccessKey');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::UpdateAccountPasswordPolicy {
  use Moose;
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Bool');
  has HardExpiry => (is => 'ro', isa => 'Bool');
  has MaxPasswordAge => (is => 'ro', isa => 'Int');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has PasswordReusePrevention => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Bool');
  has RequireNumbers => (is => 'ro', isa => 'Bool');
  has RequireSymbols => (is => 'ro', isa => 'Bool');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountPasswordPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::UpdateAssumeRolePolicy {
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssumeRolePolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::UpdateGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has NewGroupName => (is => 'ro', isa => 'Str');
  has NewPath => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::UpdateLoginProfile {
  use Moose;
  has Password => (is => 'ro', isa => 'Str');
  has PasswordResetRequired => (is => 'ro', isa => 'Bool');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLoginProfile');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::UpdateSAMLProvider {
  use Moose;
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::UpdateSAMLProviderResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProviderResult');
}
package Aws::IAM::UpdateServerCertificate {
  use Moose;
  has NewPath => (is => 'ro', isa => 'Str');
  has NewServerCertificateName => (is => 'ro', isa => 'Str');
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServerCertificate');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::UpdateSigningCertificate {
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSigningCertificate');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::UpdateUser {
  use Moose;
  has NewPath => (is => 'ro', isa => 'Str');
  has NewUserName => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::IAM::UploadServerCertificate {
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadServerCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::UploadServerCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadServerCertificateResult');
}
package Aws::IAM::UploadSigningCertificate {
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::UploadSigningCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificateResult');
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
package Aws::IAM::GenerateCredentialReportResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Description => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

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
package Aws::IAM::GetCredentialReportResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Content => (is => 'ro', isa => 'Str');
  has GeneratedTime => (is => 'ro', isa => 'Str');
  has ReportFormat => (is => 'ro', isa => 'Str');

}
package Aws::IAM::GetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Group => (is => 'ro', isa => 'Aws::IAM::Group', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
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
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListAccountAliasesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccountAliases => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListGroupPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
package Aws::IAM::ListGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListGroupsForUserResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListInstanceProfilesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListInstanceProfilesForRoleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListMFADevicesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MFADevices => (is => 'ro', isa => 'ArrayRef[Aws::IAM::MFADevice]', required => 1);

}
package Aws::IAM::ListRolePoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
package Aws::IAM::ListRolesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
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
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadataList => (is => 'ro', isa => 'ArrayRef[Aws::IAM::ServerCertificateMetadata]', required => 1);

}
package Aws::IAM::ListSigningCertificatesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Certificates => (is => 'ro', isa => 'ArrayRef[Aws::IAM::SigningCertificate]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::IAM::ListUserPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
package Aws::IAM::ListUsersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Aws::IAM::User]', required => 1);

}
package Aws::IAM::ListVirtualMFADevicesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
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
