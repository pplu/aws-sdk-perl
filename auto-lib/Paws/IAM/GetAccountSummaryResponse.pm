
package Paws::IAM::GetAccountSummaryResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has SummaryMap => (is => 'ro', isa => 'Paws::IAM::summaryMapType');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetAccountSummaryResponse

=head1 ATTRIBUTES

=head2 SummaryMap => Paws::IAM::summaryMapType

  

A set of key value pairs containing account-level information.

C<SummaryMap> contains the following keys:

=over

=item *

C<AccessKeysPerUserQuota> - Maximum number of active access keys
allowed per IAM user

=item *

C<AccountAccessKeysPresent> - 1 if the root account has an access key,
0 otherwise

=item *

C<AccountMFAEnabled> - 1 if the root account has an MFA device assigned
to it, 0 otherwise

=item *

C<AccountSigningCertificatesPresent> - 1 if the root account has a
signing certificate, 0 otherwise

=item *

C<AssumeRolePolicySizeQuota> - Maximum allowed size for assume role
policy documents (trust policies), in non-whitespace characters

=item *

C<GroupPolicySizeQuota> - Maximum allowed size for IAM group policy
documents, in non-whitespace characters

=item *

C<Groups> - Number of IAM groups in the AWS account

=item *

C<GroupsPerUserQuota> - Maximum number of IAM groups each IAM user can
belong to

=item *

C<GroupsQuota> - Maximum number of IAM groups allowed in the AWS
account

=item *

C<InstanceProfiles> - Number of instance profiles in the AWS account

=item *

C<InstanceProfilesQuota> - Maximum number of instance profiles allowed
in the AWS account

=item *

C<MFADevices> - Number of MFA devices, either assigned or unassigned

=item *

C<MFADevicesInUse> - Number of MFA devices that have been assigned to
an IAM user or to the root account

=item *

C<RolePolicySizeQuota> - Maximum allowed size for IAM role policy
documents (permissions policies), in non-whitespace characters

=item *

C<Roles> - Number of roles IAM in the AWS account

=item *

C<RolesQuota> - Maximum number of IAM roles allowed in the AWS account

=item *

C<UserPolicySizeQuota> - Maximum allowed size for IAM user policy
documents, in non-whitespace characters

=item *

C<Users> - Number of IAM users in the AWS account

=item *

C<UsersQuota> - Maximum number of IAM users allowed in the AWS account

=item *

C<ServerCertificates> - Number of server certificates in the AWS
account

=item *

C<ServerCertificatesQuota> - Maximum number of server certificates
allowed in the AWS account

=item *

C<SigningCertificatesPerUserQuota> - Maximum number of X509 signing
certificates allowed per IAM user

=back











=cut

