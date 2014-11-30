
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

C<AccessKeysPerUserQuota> - Maximum number of access keys that can be
created per user

=item *

C<AccountMFAEnabled> - 1 if the root account has an MFA device assigned
to it, 0 otherwise

=item *

C<AssumeRolePolicySizeQuota> - Maximum allowed size for assume role
policy documents (in kilobytes)

=item *

C<GroupPolicySizeQuota> - Maximum allowed size for Group policy
documents (in kilobytes)

=item *

C<Groups> - Number of Groups for the AWS account

=item *

C<GroupsPerUserQuota> - Maximum number of groups an IAM user can belong
to

=item *

C<GroupsQuota> - Maximum groups allowed for the AWS account

=item *

C<InstanceProfiles> - Number of instance profiles for the AWS account

=item *

C<InstanceProfilesQuota> - Maximum instance profiles allowed for the
AWS account

=item *

C<MFADevices> - Number of MFA devices, either assigned or unassigned

=item *

C<MFADevicesInUse> - Number of MFA devices that have been assigned to
an IAM user or to the root account

=item *

C<RolePolicySizeQuota> - Maximum allowed size for role policy documents
(in kilobytes)

=item *

C<Roles> - Number of roles for the AWS account

=item *

C<RolesQuota> - Maximum roles allowed for the AWS account

=item *

C<ServerCertificates> - Number of server certificates for the AWS
account

=item *

C<ServerCertificatesQuota> - Maximum server certificates allowed for
the AWS account

=item *

C<SigningCertificatesPerUserQuota> - Maximum number of X509
certificates allowed for a user

=item *

C<UserPolicySizeQuota> - Maximum allowed size for user policy documents
(in kilobytes)

=item *

C<Users> - Number of users for the AWS account

=item *

C<UsersQuota> - Maximum users allowed for the AWS account

=back











=cut

