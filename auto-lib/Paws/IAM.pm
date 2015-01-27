
use Paws::API;


package Paws::IAM {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'iam');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-08');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  with 'Paws::API::SingleEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
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
  sub GetAccountAuthorizationDetails {
    my $self = shift;
    return $self->do_call('Paws::IAM::GetAccountAuthorizationDetails', @_);
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

### main pod documentation begin ###

=head1 NAME

Paws::IAM - Perl Interface to AWS AWS Identity and Access Management

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Identity and Access Management

AWS Identity and Access Management (IAM) is a web service that you can
use to manage users and user permissions under your AWS account. This
guide provides descriptions of IAM actions that you can call
programmatically. For general information about IAM, see AWS Identity
and Access Management (IAM). For the user guide for IAM, see Using IAM.

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .NET, iOS, Android,
etc.). The SDKs provide a convenient way to create programmatic access
to IAM and AWS. For example, the SDKs take care of tasks such as
cryptographically signing requests (see below), managing errors, and
retrying requests automatically. For information about the AWS SDKs,
including how to download and install them, see the Tools for Amazon
Web Services page.

We recommend that you use the AWS SDKs to make programmatic API calls
to IAM. However, you can also use the IAM Query API to make direct
calls to the IAM web service. To learn more about the IAM Query API,
see Making Query Requests in the I<Using IAM> guide. IAM supports GET
and POST requests for all actions. That is, the API does not require
you to use GET for some actions and POST for others. However, GET
requests are subject to the limitation size of a URL. Therefore, for
operations that require larger sizes, use a POST request.

B<Signing Requests>

Requests must be signed using an access key ID and a secret access key.
We strongly recommend that you do not use your AWS account access key
ID and secret access key for everyday work with IAM. You can use the
access key ID and secret access key for an IAM user or you can use the
AWS Security Token Service to generate temporary security credentials
and use those to sign requests.

To sign requests, we recommend that you use Signature Version 4. If you
have an existing application that uses Signature Version 2, you do not
have to update it to use Signature Version 4. However, some operations
now require Signature Version 4. The documentation for operations that
require version 4 indicate this requirement.

B<Recording API requests>

IAM supports AWS CloudTrail, which is a service that records AWS calls
for your AWS account and delivers log files to an Amazon S3 bucket. By
using information collected by CloudTrail, you can determine what
requests were successfully made to IAM, who made the request, when it
was made, and so on. To learn more about CloudTrail, including how to
turn it on and find your log files, see the AWS CloudTrail User Guide.

B<Additional Resources>

For more information, see the following:

=over

=item * AWS Security Credentials. This topic provides general
information about the types of credentials used for accessing AWS.

=item * IAM Best Practices. This topic presents a list of suggestions
for using the IAM service to help secure your AWS resources.

=item * AWS Security Token Service. This guide describes how to create
and use temporary security credentials.

=item * Signing AWS API Requests. This set of topics walk you through
the process of signing a request using an access key ID and secret
access key.

=back










=head1 METHODS

=head2 AddClientIDToOpenIDConnectProvider()

  Arguments described in: L<Paws::IAM::AddClientIDToOpenIDConnectProvider>

  Returns: nothing

  

Adds a new client ID (also known as audience) to the list of client IDs
already registered for the specified IAM OpenID Connect provider.

This action is idempotent; it does not fail or return an error if you
add an existing client ID to the provider.











=head2 AddRoleToInstanceProfile()

  Arguments described in: L<Paws::IAM::AddRoleToInstanceProfile>

  Returns: nothing

  

Adds the specified role to the specified instance profile. For more
information about roles, go to Working with Roles. For more information
about instance profiles, go to About Instance Profiles.











=head2 AddUserToGroup()

  Arguments described in: L<Paws::IAM::AddUserToGroup>

  Returns: nothing

  

Adds the specified user to the specified group.











=head2 ChangePassword()

  Arguments described in: L<Paws::IAM::ChangePassword>

  Returns: nothing

  

Changes the password of the IAM user who is calling this action. The
root account password is not affected by this action.

To change the password for a different user, see UpdateLoginProfile.
For more information about modifying passwords, see Managing Passwords
in the I<Using IAM> guide.











=head2 CreateAccessKey()

  Arguments described in: L<Paws::IAM::CreateAccessKey>

  Returns: L<Paws::IAM::CreateAccessKeyResponse>

  

Creates a new AWS secret access key and corresponding AWS access key ID
for the specified user. The default status for new keys is C<Active>.

If you do not specify a user name, IAM determines the user name
implicitly based on the AWS access key ID signing the request. Because
this action works for access keys under the AWS account, you can use
this action to manage root credentials even if the AWS account has no
associated users.

For information about limits on the number of keys you can create, see
Limitations on IAM Entities in the I<Using IAM> guide.

To ensure the security of your AWS account, the secret access key is
accessible only during key and user creation. You must save the key
(for example, in a text file) if you want to be able to access it
again. If a secret key is lost, you can delete the access keys for the
associated user and then create new keys.











=head2 CreateAccountAlias()

  Arguments described in: L<Paws::IAM::CreateAccountAlias>

  Returns: nothing

  

Creates an alias for your AWS account. For information about using an
AWS account alias, see Using an Alias for Your AWS Account ID in the
I<Using IAM> guide.











=head2 CreateGroup()

  Arguments described in: L<Paws::IAM::CreateGroup>

  Returns: L<Paws::IAM::CreateGroupResponse>

  

Creates a new group.

For information about the number of groups you can create, see
Limitations on IAM Entities in the I<Using IAM> guide.











=head2 CreateInstanceProfile()

  Arguments described in: L<Paws::IAM::CreateInstanceProfile>

  Returns: L<Paws::IAM::CreateInstanceProfileResponse>

  

Creates a new instance profile. For information about instance
profiles, go to About Instance Profiles.

For information about the number of instance profiles you can create,
see Limitations on IAM Entities in the I<Using IAM> guide.











=head2 CreateLoginProfile()

  Arguments described in: L<Paws::IAM::CreateLoginProfile>

  Returns: L<Paws::IAM::CreateLoginProfileResponse>

  

Creates a password for the specified user, giving the user the ability
to access AWS services through the AWS Management Console. For more
information about managing passwords, see Managing Passwords in the
I<Using IAM> guide.











=head2 CreateOpenIDConnectProvider()

  Arguments described in: L<Paws::IAM::CreateOpenIDConnectProvider>

  Returns: L<Paws::IAM::CreateOpenIDConnectProviderResponse>

  

Creates an IAM entity to describe an identity provider (IdP) that
supports OpenID Connect (OIDC).

The OIDC provider that you create with this operation can be used as a
principal in a role's trust policy to establish a trust relationship
between AWS and the OIDC provider.

When you create the IAM OIDC provider, you specify the URL of the OIDC
identity provider (IdP) to trust, a list of client IDs (also known as
audiences) that identify the application or applications that are
allowed to authenticate using the OIDC provider, and a list of
thumbprints of the server certificate(s) that the IdP uses. You get all
of this information from the OIDC IdP that you want to use for access
to AWS.

Because trust for the OIDC provider is ultimately derived from the IAM
provider that this action creates, it is a best practice to limit
access to the CreateOpenIDConnectProvider action to highly-privileged
users.











=head2 CreateRole()

  Arguments described in: L<Paws::IAM::CreateRole>

  Returns: L<Paws::IAM::CreateRoleResponse>

  

Creates a new role for your AWS account. For more information about
roles, go to Working with Roles. For information about limitations on
role names and the number of roles you can create, go to Limitations on
IAM Entities in the I<Using IAM> guide.

The example policy grants permission to an EC2 instance to assume the
role. The policy is URL-encoded according to RFC 3986. For more
information about RFC 3986, go to
http://www.faqs.org/rfcs/rfc3986.html.











=head2 CreateSAMLProvider()

  Arguments described in: L<Paws::IAM::CreateSAMLProvider>

  Returns: L<Paws::IAM::CreateSAMLProviderResponse>

  

Creates an IAM entity to describe an identity provider (IdP) that
supports SAML 2.0.

The SAML provider that you create with this operation can be used as a
principal in a role's trust policy to establish a trust relationship
between AWS and a SAML identity provider. You can create an IAM role
that supports Web-based single sign-on (SSO) to the AWS Management
Console or one that supports API access to AWS.

When you create the SAML provider, you upload an a SAML metadata
document that you get from your IdP and that includes the issuer's
name, expiration information, and keys that can be used to validate the
SAML authentication response (assertions) that are received from the
IdP. You must generate the metadata document using the identity
management software that is used as your organization's IdP.

This operation requires Signature Version 4.

For more information, see Giving Console Access Using SAML and Creating
Temporary Security Credentials for SAML Federation in the I<Using
Temporary Credentials> guide.











=head2 CreateUser()

  Arguments described in: L<Paws::IAM::CreateUser>

  Returns: L<Paws::IAM::CreateUserResponse>

  

Creates a new user for your AWS account.

For information about limitations on the number of users you can
create, see Limitations on IAM Entities in the I<Using IAM> guide.











=head2 CreateVirtualMFADevice()

  Arguments described in: L<Paws::IAM::CreateVirtualMFADevice>

  Returns: L<Paws::IAM::CreateVirtualMFADeviceResponse>

  

Creates a new virtual MFA device for the AWS account. After creating
the virtual MFA, use EnableMFADevice to attach the MFA device to an IAM
user. For more information about creating and working with virtual MFA
devices, go to Using a Virtual MFA Device in the I<Using IAM> guide.

For information about limits on the number of MFA devices you can
create, see Limitations on Entities in the I<Using IAM> guide.

The seed information contained in the QR code and the Base32 string
should be treated like any other secret access information, such as
your AWS access keys or your passwords. After you provision your
virtual device, you should ensure that the information is destroyed
following secure procedures.











=head2 DeactivateMFADevice()

  Arguments described in: L<Paws::IAM::DeactivateMFADevice>

  Returns: nothing

  

Deactivates the specified MFA device and removes it from association
with the user name for which it was originally enabled.

For more information about creating and working with virtual MFA
devices, go to Using a Virtual MFA Device in the I<Using IAM> guide.











=head2 DeleteAccessKey()

  Arguments described in: L<Paws::IAM::DeleteAccessKey>

  Returns: nothing

  

Deletes the access key associated with the specified user.

If you do not specify a user name, IAM determines the user name
implicitly based on the AWS access key ID signing the request. Because
this action works for access keys under the AWS account, you can use
this action to manage root credentials even if the AWS account has no
associated users.











=head2 DeleteAccountAlias()

  Arguments described in: L<Paws::IAM::DeleteAccountAlias>

  Returns: nothing

  

Deletes the specified AWS account alias. For information about using an
AWS account alias, see Using an Alias for Your AWS Account ID in the
I<Using IAM> guide.











=head2 DeleteAccountPasswordPolicy()

  Arguments described in: L<Paws::IAM::DeleteAccountPasswordPolicy>

  Returns: nothing

  

Deletes the password policy for the AWS account.











=head2 DeleteGroup()

  Arguments described in: L<Paws::IAM::DeleteGroup>

  Returns: nothing

  

Deletes the specified group. The group must not contain any users or
have any attached policies.











=head2 DeleteGroupPolicy()

  Arguments described in: L<Paws::IAM::DeleteGroupPolicy>

  Returns: nothing

  

Deletes the specified policy that is associated with the specified
group.











=head2 DeleteInstanceProfile()

  Arguments described in: L<Paws::IAM::DeleteInstanceProfile>

  Returns: nothing

  

Deletes the specified instance profile. The instance profile must not
have an associated role.

Make sure you do not have any Amazon EC2 instances running with the
instance profile you are about to delete. Deleting a role or instance
profile that is associated with a running instance will break any
applications running on the instance.

For more information about instance profiles, go to About Instance
Profiles.











=head2 DeleteLoginProfile()

  Arguments described in: L<Paws::IAM::DeleteLoginProfile>

  Returns: nothing

  

Deletes the password for the specified user, which terminates the
user's ability to access AWS services through the AWS Management
Console.

Deleting a user's password does not prevent a user from accessing IAM
through the command line interface or the API. To prevent all user
access you must also either make the access key inactive or delete it.
For more information about making keys inactive or deleting them, see
UpdateAccessKey and DeleteAccessKey.











=head2 DeleteOpenIDConnectProvider()

  Arguments described in: L<Paws::IAM::DeleteOpenIDConnectProvider>

  Returns: nothing

  

Deletes an IAM OpenID Connect identity provider.

Deleting an OIDC provider does not update any roles that reference the
provider as a principal in their trust policies. Any attempt to assume
a role that references a provider that has been deleted will fail.

This action is idempotent; it does not fail or return an error if you
call the action for a provider that was already deleted.











=head2 DeleteRole()

  Arguments described in: L<Paws::IAM::DeleteRole>

  Returns: nothing

  

Deletes the specified role. The role must not have any policies
attached. For more information about roles, go to Working with Roles.

Make sure you do not have any Amazon EC2 instances running with the
role you are about to delete. Deleting a role or instance profile that
is associated with a running instance will break any applications
running on the instance.











=head2 DeleteRolePolicy()

  Arguments described in: L<Paws::IAM::DeleteRolePolicy>

  Returns: nothing

  

Deletes the specified policy associated with the specified role.











=head2 DeleteSAMLProvider()

  Arguments described in: L<Paws::IAM::DeleteSAMLProvider>

  Returns: nothing

  

Deletes a SAML provider.

Deleting the provider does not update any roles that reference the SAML
provider as a principal in their trust policies. Any attempt to assume
a role that references a SAML provider that has been deleted will fail.

This operation requires Signature Version 4.











=head2 DeleteServerCertificate()

  Arguments described in: L<Paws::IAM::DeleteServerCertificate>

  Returns: nothing

  

Deletes the specified server certificate.

If you are using a server certificate with Elastic Load Balancing,
deleting the certificate could have implications for your application.
If Elastic Load Balancing doesn't detect the deletion of bound
certificates, it may continue to use the certificates. This could cause
Elastic Load Balancing to stop accepting traffic. We recommend that you
remove the reference to the certificate from Elastic Load Balancing
before using this command to delete the certificate. For more
information, go to DeleteLoadBalancerListeners in the I<Elastic Load
Balancing API Reference>.











=head2 DeleteSigningCertificate()

  Arguments described in: L<Paws::IAM::DeleteSigningCertificate>

  Returns: nothing

  

Deletes the specified signing certificate associated with the specified
user.

If you do not specify a user name, IAM determines the user name
implicitly based on the AWS access key ID signing the request. Because
this action works for access keys under the AWS account, you can use
this action to manage root credentials even if the AWS account has no
associated users.











=head2 DeleteUser()

  Arguments described in: L<Paws::IAM::DeleteUser>

  Returns: nothing

  

Deletes the specified user. The user must not belong to any groups,
have any keys or signing certificates, or have any attached policies.











=head2 DeleteUserPolicy()

  Arguments described in: L<Paws::IAM::DeleteUserPolicy>

  Returns: nothing

  

Deletes the specified policy associated with the specified user.











=head2 DeleteVirtualMFADevice()

  Arguments described in: L<Paws::IAM::DeleteVirtualMFADevice>

  Returns: nothing

  

Deletes a virtual MFA device.

You must deactivate a user's virtual MFA device before you can delete
it. For information about deactivating MFA devices, see
DeactivateMFADevice.











=head2 EnableMFADevice()

  Arguments described in: L<Paws::IAM::EnableMFADevice>

  Returns: nothing

  

Enables the specified MFA device and associates it with the specified
user name. When enabled, the MFA device is required for every
subsequent login by the user name associated with the device.











=head2 GenerateCredentialReport()

  Arguments described in: L<Paws::IAM::GenerateCredentialReport>

  Returns: L<Paws::IAM::GenerateCredentialReportResponse>

  

Generates a credential report for the AWS account. For more information
about the credential report, see Getting Credential Reports in the
I<Using IAM> guide.











=head2 GetAccountAuthorizationDetails()

  Arguments described in: L<Paws::IAM::GetAccountAuthorizationDetails>

  Returns: L<Paws::IAM::GetAccountAuthorizationDetailsResponse>

  

Retrieves information about all IAM users, groups, and roles in your
account, including their relationships to one another and their
attached policies. Use this API to obtain a snapshot of the
configuration of IAM permissions (users, groups, roles, and policies)
in your account.

You can optionally filter the results using the C<Filter> parameter.
You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 GetAccountPasswordPolicy()

  Arguments described in: L<Paws::IAM::GetAccountPasswordPolicy>

  Returns: L<Paws::IAM::GetAccountPasswordPolicyResponse>

  

Retrieves the password policy for the AWS account. For more information
about using a password policy, go to Managing an IAM Password Policy.











=head2 GetAccountSummary()

  Arguments described in: L<Paws::IAM::GetAccountSummary>

  Returns: L<Paws::IAM::GetAccountSummaryResponse>

  

Retrieves account level information about account entity usage and IAM
quotas.

For information about limitations on IAM entities, see Limitations on
IAM Entities in the I<Using IAM> guide.











=head2 GetCredentialReport()

  Arguments described in: L<Paws::IAM::GetCredentialReport>

  Returns: L<Paws::IAM::GetCredentialReportResponse>

  

Retrieves a credential report for the AWS account. For more information
about the credential report, see Getting Credential Reports in the
I<Using IAM> guide.











=head2 GetGroup()

  Arguments described in: L<Paws::IAM::GetGroup>

  Returns: L<Paws::IAM::GetGroupResponse>

  

Returns a list of users that are in the specified group. You can
paginate the results using the C<MaxItems> and C<Marker> parameters.











=head2 GetGroupPolicy()

  Arguments described in: L<Paws::IAM::GetGroupPolicy>

  Returns: L<Paws::IAM::GetGroupPolicyResponse>

  

Retrieves the specified policy document for the specified group. The
returned policy is URL-encoded according to RFC 3986. For more
information about RFC 3986, go to
http://www.faqs.org/rfcs/rfc3986.html.











=head2 GetInstanceProfile()

  Arguments described in: L<Paws::IAM::GetInstanceProfile>

  Returns: L<Paws::IAM::GetInstanceProfileResponse>

  

Retrieves information about the specified instance profile, including
the instance profile's path, GUID, ARN, and role. For more information
about instance profiles, go to About Instance Profiles. For more
information about ARNs, go to ARNs.











=head2 GetLoginProfile()

  Arguments described in: L<Paws::IAM::GetLoginProfile>

  Returns: L<Paws::IAM::GetLoginProfileResponse>

  

Retrieves the user name and password-creation date for the specified
user. If the user has not been assigned a password, the action returns
a 404 (C<NoSuchEntity>) error.











=head2 GetOpenIDConnectProvider()

  Arguments described in: L<Paws::IAM::GetOpenIDConnectProvider>

  Returns: L<Paws::IAM::GetOpenIDConnectProviderResponse>

  

Returns information about the specified OpenID Connect provider.











=head2 GetRole()

  Arguments described in: L<Paws::IAM::GetRole>

  Returns: L<Paws::IAM::GetRoleResponse>

  

Retrieves information about the specified role, including the role's
path, GUID, ARN, and the policy granting permission to assume the role.
For more information about ARNs, go to ARNs. For more information about
roles, go to Working with Roles.

The returned policy is URL-encoded according to RFC 3986. For more
information about RFC 3986, go to
http://www.faqs.org/rfcs/rfc3986.html.











=head2 GetRolePolicy()

  Arguments described in: L<Paws::IAM::GetRolePolicy>

  Returns: L<Paws::IAM::GetRolePolicyResponse>

  

Retrieves the specified policy document for the specified role. For
more information about roles, go to Working with Roles.

The returned policy is URL-encoded according to RFC 3986. For more
information about RFC 3986, go to
http://www.faqs.org/rfcs/rfc3986.html.











=head2 GetSAMLProvider()

  Arguments described in: L<Paws::IAM::GetSAMLProvider>

  Returns: L<Paws::IAM::GetSAMLProviderResponse>

  

Returns the SAML provider metadocument that was uploaded when the
provider was created or updated.

This operation requires Signature Version 4.











=head2 GetServerCertificate()

  Arguments described in: L<Paws::IAM::GetServerCertificate>

  Returns: L<Paws::IAM::GetServerCertificateResponse>

  

Retrieves information about the specified server certificate.











=head2 GetUser()

  Arguments described in: L<Paws::IAM::GetUser>

  Returns: L<Paws::IAM::GetUserResponse>

  

Retrieves information about the specified user, including the user's
creation date, path, unique ID, and ARN.

If you do not specify a user name, IAM determines the user name
implicitly based on the AWS access key ID used to sign the request.











=head2 GetUserPolicy()

  Arguments described in: L<Paws::IAM::GetUserPolicy>

  Returns: L<Paws::IAM::GetUserPolicyResponse>

  

Retrieves the specified policy document for the specified user. The
returned policy is URL-encoded according to RFC 3986. For more
information about RFC 3986, go to
http://www.faqs.org/rfcs/rfc3986.html.











=head2 ListAccessKeys()

  Arguments described in: L<Paws::IAM::ListAccessKeys>

  Returns: L<Paws::IAM::ListAccessKeysResponse>

  

Returns information about the access key IDs associated with the
specified user. If there are none, the action returns an empty list.

Although each user is limited to a small number of keys, you can still
paginate the results using the C<MaxItems> and C<Marker> parameters.

If the C<UserName> field is not specified, the UserName is determined
implicitly based on the AWS access key ID used to sign the request.
Because this action works for access keys under the AWS account, you
can use this action to manage root credentials even if the AWS account
has no associated users.

To ensure the security of your AWS account, the secret access key is
accessible only during key and user creation.











=head2 ListAccountAliases()

  Arguments described in: L<Paws::IAM::ListAccountAliases>

  Returns: L<Paws::IAM::ListAccountAliasesResponse>

  

Lists the account aliases associated with the account. For information
about using an AWS account alias, see Using an Alias for Your AWS
Account ID in the I<Using IAM> guide.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListGroupPolicies()

  Arguments described in: L<Paws::IAM::ListGroupPolicies>

  Returns: L<Paws::IAM::ListGroupPoliciesResponse>

  

Lists the names of the policies associated with the specified group. If
there are none, the action returns an empty list.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListGroups()

  Arguments described in: L<Paws::IAM::ListGroups>

  Returns: L<Paws::IAM::ListGroupsResponse>

  

Lists the groups that have the specified path prefix.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListGroupsForUser()

  Arguments described in: L<Paws::IAM::ListGroupsForUser>

  Returns: L<Paws::IAM::ListGroupsForUserResponse>

  

Lists the groups the specified user belongs to.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListInstanceProfiles()

  Arguments described in: L<Paws::IAM::ListInstanceProfiles>

  Returns: L<Paws::IAM::ListInstanceProfilesResponse>

  

Lists the instance profiles that have the specified path prefix. If
there are none, the action returns an empty list. For more information
about instance profiles, go to About Instance Profiles.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListInstanceProfilesForRole()

  Arguments described in: L<Paws::IAM::ListInstanceProfilesForRole>

  Returns: L<Paws::IAM::ListInstanceProfilesForRoleResponse>

  

Lists the instance profiles that have the specified associated role. If
there are none, the action returns an empty list. For more information
about instance profiles, go to About Instance Profiles.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListMFADevices()

  Arguments described in: L<Paws::IAM::ListMFADevices>

  Returns: L<Paws::IAM::ListMFADevicesResponse>

  

Lists the MFA devices. If the request includes the user name, then this
action lists all the MFA devices associated with the specified user
name. If you do not specify a user name, IAM determines the user name
implicitly based on the AWS access key ID signing the request.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListOpenIDConnectProviders()

  Arguments described in: L<Paws::IAM::ListOpenIDConnectProviders>

  Returns: L<Paws::IAM::ListOpenIDConnectProvidersResponse>

  

Lists information about the OpenID Connect providers in the AWS
account.











=head2 ListRolePolicies()

  Arguments described in: L<Paws::IAM::ListRolePolicies>

  Returns: L<Paws::IAM::ListRolePoliciesResponse>

  

Lists the names of the policies associated with the specified role. If
there are none, the action returns an empty list.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListRoles()

  Arguments described in: L<Paws::IAM::ListRoles>

  Returns: L<Paws::IAM::ListRolesResponse>

  

Lists the roles that have the specified path prefix. If there are none,
the action returns an empty list. For more information about roles, go
to Working with Roles.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.

The returned policy is URL-encoded according to RFC 3986. For more
information about RFC 3986, go to
http://www.faqs.org/rfcs/rfc3986.html.











=head2 ListSAMLProviders()

  Arguments described in: L<Paws::IAM::ListSAMLProviders>

  Returns: L<Paws::IAM::ListSAMLProvidersResponse>

  

Lists the SAML providers in the account.

This operation requires Signature Version 4.











=head2 ListServerCertificates()

  Arguments described in: L<Paws::IAM::ListServerCertificates>

  Returns: L<Paws::IAM::ListServerCertificatesResponse>

  

Lists the server certificates that have the specified path prefix. If
none exist, the action returns an empty list.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListSigningCertificates()

  Arguments described in: L<Paws::IAM::ListSigningCertificates>

  Returns: L<Paws::IAM::ListSigningCertificatesResponse>

  

Returns information about the signing certificates associated with the
specified user. If there are none, the action returns an empty list.

Although each user is limited to a small number of signing
certificates, you can still paginate the results using the C<MaxItems>
and C<Marker> parameters.

If the C<UserName> field is not specified, the user name is determined
implicitly based on the AWS access key ID used to sign the request.
Because this action works for access keys under the AWS account, you
can use this action to manage root credentials even if the AWS account
has no associated users.











=head2 ListUserPolicies()

  Arguments described in: L<Paws::IAM::ListUserPolicies>

  Returns: L<Paws::IAM::ListUserPoliciesResponse>

  

Lists the names of the policies associated with the specified user. If
there are none, the action returns an empty list.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListUsers()

  Arguments described in: L<Paws::IAM::ListUsers>

  Returns: L<Paws::IAM::ListUsersResponse>

  

Lists the IAM users that have the specified path prefix. If no path
prefix is specified, the action returns all users in the AWS account.
If there are none, the action returns an empty list.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 ListVirtualMFADevices()

  Arguments described in: L<Paws::IAM::ListVirtualMFADevices>

  Returns: L<Paws::IAM::ListVirtualMFADevicesResponse>

  

Lists the virtual MFA devices under the AWS account by assignment
status. If you do not specify an assignment status, the action returns
a list of all virtual MFA devices. Assignment status can be
C<Assigned>, C<Unassigned>, or C<Any>.

You can paginate the results using the C<MaxItems> and C<Marker>
parameters.











=head2 PutGroupPolicy()

  Arguments described in: L<Paws::IAM::PutGroupPolicy>

  Returns: nothing

  

Adds (or updates) a policy document associated with the specified
group. For information about policies, refer to Overview of Policies in
the I<Using IAM> guide.

For information about limits on the number of policies you can
associate with a group, see Limitations on IAM Entities in the I<Using
IAM> guide.

Because policy documents can be large, you should use POST rather than
GET when calling C<PutGroupPolicy>. For information about setting up
signatures and authorization through the API, go to Signing AWS API
Requests in the I<AWS General Reference>. For general information about
using the Query API with IAM, go to Making Query Requests in the
I<Using IAM> guide.











=head2 PutRolePolicy()

  Arguments described in: L<Paws::IAM::PutRolePolicy>

  Returns: nothing

  

Adds (or updates) a policy document associated with the specified role.
For information about policies, go to Overview of Policies in the
I<Using IAM> guide.

For information about limits on the policies you can associate with a
role, see Limitations on IAM Entities in the I<Using IAM> guide.

Because policy documents can be large, you should use POST rather than
GET when calling C<PutRolePolicy>. For information about setting up
signatures and authorization through the API, go to Signing AWS API
Requests in the I<AWS General Reference>. For general information about
using the Query API with IAM, go to Making Query Requests in the
I<Using IAM> guide.











=head2 PutUserPolicy()

  Arguments described in: L<Paws::IAM::PutUserPolicy>

  Returns: nothing

  

Adds (or updates) a policy document associated with the specified user.
For information about policies, refer to Overview of Policies in the
I<Using IAM> guide.

For information about limits on the number of policies you can
associate with a user, see Limitations on IAM Entities in the I<Using
IAM> guide.

Because policy documents can be large, you should use POST rather than
GET when calling C<PutUserPolicy>. For information about setting up
signatures and authorization through the API, go to Signing AWS API
Requests in the I<AWS General Reference>. For general information about
using the Query API with IAM, go to Making Query Requests in the
I<Using IAM> guide.











=head2 RemoveClientIDFromOpenIDConnectProvider()

  Arguments described in: L<Paws::IAM::RemoveClientIDFromOpenIDConnectProvider>

  Returns: nothing

  

Removes the specified client ID (also known as audience) from the list
of client IDs registered for the specified IAM OpenID Connect provider.

This action is idempotent; it does not fail or return an error if you
try to remove a client ID that was removed previously.











=head2 RemoveRoleFromInstanceProfile()

  Arguments described in: L<Paws::IAM::RemoveRoleFromInstanceProfile>

  Returns: nothing

  

Removes the specified role from the specified instance profile.

Make sure you do not have any Amazon EC2 instances running with the
role you are about to remove from the instance profile. Removing a role
from an instance profile that is associated with a running instance
will break any applications running on the instance.

For more information about roles, go to Working with Roles. For more
information about instance profiles, go to About Instance Profiles.











=head2 RemoveUserFromGroup()

  Arguments described in: L<Paws::IAM::RemoveUserFromGroup>

  Returns: nothing

  

Removes the specified user from the specified group.











=head2 ResyncMFADevice()

  Arguments described in: L<Paws::IAM::ResyncMFADevice>

  Returns: nothing

  

Synchronizes the specified MFA device with AWS servers.

For more information about creating and working with virtual MFA
devices, go to Using a Virtual MFA Device in the I<Using IAM> guide.











=head2 UpdateAccessKey()

  Arguments described in: L<Paws::IAM::UpdateAccessKey>

  Returns: nothing

  

Changes the status of the specified access key from Active to Inactive,
or vice versa. This action can be used to disable a user's key as part
of a key rotation work flow.

If the C<UserName> field is not specified, the UserName is determined
implicitly based on the AWS access key ID used to sign the request.
Because this action works for access keys under the AWS account, you
can use this action to manage root credentials even if the AWS account
has no associated users.

For information about rotating keys, see Managing Keys and Certificates
in the I<Using IAM> guide.











=head2 UpdateAccountPasswordPolicy()

  Arguments described in: L<Paws::IAM::UpdateAccountPasswordPolicy>

  Returns: nothing

  

Updates the password policy settings for the AWS account.

This action does not support partial updates. No parameters are
required, but if you do not specify a parameter, that parameter's value
reverts to its default value. See the B<Request Parameters> section for
each parameter's default value.

For more information about using a password policy, see Managing an IAM
Password Policy in the I<Using IAM> guide.











=head2 UpdateAssumeRolePolicy()

  Arguments described in: L<Paws::IAM::UpdateAssumeRolePolicy>

  Returns: nothing

  

Updates the policy that grants an entity permission to assume a role.
For more information about roles, go to Working with Roles.











=head2 UpdateGroup()

  Arguments described in: L<Paws::IAM::UpdateGroup>

  Returns: nothing

  

Updates the name and/or the path of the specified group.

You should understand the implications of changing a group's path or
name. For more information, see Renaming Users and Groups in the
I<Using IAM> guide. To change a group name the requester must have
appropriate permissions on both the source object and the target
object. For example, to change Managers to MGRs, the entity making the
request must have permission on Managers and MGRs, or must have
permission on all (*). For more information about permissions, see
Permissions and Policies.











=head2 UpdateLoginProfile()

  Arguments described in: L<Paws::IAM::UpdateLoginProfile>

  Returns: nothing

  

Changes the password for the specified user.

Users can change their own passwords by calling ChangePassword. For
more information about modifying passwords, see Managing Passwords in
the I<Using IAM> guide.











=head2 UpdateOpenIDConnectProviderThumbprint()

  Arguments described in: L<Paws::IAM::UpdateOpenIDConnectProviderThumbprint>

  Returns: nothing

  

Replaces the existing list of server certificate thumbprints with a new
list.

The list that you pass with this action completely replaces the
existing list of thumbprints. (The lists are not merged.)

Typically, you need to update a thumbprint only when the identity
provider's certificate changes, which occurs rarely. However, if the
provider's certificate I<does> change, any attempt to assume an IAM
role that specifies the IAM provider as a principal will fail until the
certificate thumbprint is updated.

Because trust for the OpenID Connect provider is ultimately derived
from the provider's certificate and is validated by the thumbprint, it
is a best practice to limit access to the
C<UpdateOpenIDConnectProviderThumbprint> action to highly-privileged
users.











=head2 UpdateSAMLProvider()

  Arguments described in: L<Paws::IAM::UpdateSAMLProvider>

  Returns: L<Paws::IAM::UpdateSAMLProviderResponse>

  

Updates the metadata document for an existing SAML provider.

This operation requires Signature Version 4.











=head2 UpdateServerCertificate()

  Arguments described in: L<Paws::IAM::UpdateServerCertificate>

  Returns: nothing

  

Updates the name and/or the path of the specified server certificate.

You should understand the implications of changing a server
certificate's path or name. For more information, see Managing Server
Certificates in the I<Using IAM> guide. To change a server certificate
name the requester must have appropriate permissions on both the source
object and the target object. For example, to change the name from
ProductionCert to ProdCert, the entity making the request must have
permission on ProductionCert and ProdCert, or must have permission on
all (*). For more information about permissions, see Permissions and
Policies.











=head2 UpdateSigningCertificate()

  Arguments described in: L<Paws::IAM::UpdateSigningCertificate>

  Returns: nothing

  

Changes the status of the specified signing certificate from active to
disabled, or vice versa. This action can be used to disable a user's
signing certificate as part of a certificate rotation work flow.

If the C<UserName> field is not specified, the UserName is determined
implicitly based on the AWS access key ID used to sign the request.
Because this action works for access keys under the AWS account, you
can use this action to manage root credentials even if the AWS account
has no associated users.

For information about rotating certificates, see Managing Keys and
Certificates in the I<Using IAM> guide.











=head2 UpdateUser()

  Arguments described in: L<Paws::IAM::UpdateUser>

  Returns: nothing

  

Updates the name and/or the path of the specified user.

You should understand the implications of changing a user's path or
name. For more information, see Renaming Users and Groups in the
I<Using IAM> guide. To change a user name the requester must have
appropriate permissions on both the source object and the target
object. For example, to change Bob to Robert, the entity making the
request must have permission on Bob and Robert, or must have permission
on all (*). For more information about permissions, see Permissions and
Policies.











=head2 UploadServerCertificate()

  Arguments described in: L<Paws::IAM::UploadServerCertificate>

  Returns: L<Paws::IAM::UploadServerCertificateResponse>

  

Uploads a server certificate entity for the AWS account. The server
certificate entity includes a public key certificate, a private key,
and an optional certificate chain, which should all be PEM-encoded.

For information about the number of server certificates you can upload,
see Limitations on IAM Entities in the I<Using IAM> guide.

Because the body of the public key certificate, private key, and the
certificate chain can be large, you should use POST rather than GET
when calling C<UploadServerCertificate>. For information about setting
up signatures and authorization through the API, go to Signing AWS API
Requests in the I<AWS General Reference>. For general information about
using the Query API with IAM, go to Making Query Requests in the
I<Using IAM> guide.











=head2 UploadSigningCertificate()

  Arguments described in: L<Paws::IAM::UploadSigningCertificate>

  Returns: L<Paws::IAM::UploadSigningCertificateResponse>

  

Uploads an X.509 signing certificate and associates it with the
specified user. Some AWS services use X.509 signing certificates to
validate requests that are signed with a corresponding private key.
When you upload the certificate, its default status is C<Active>.

If the C<UserName> field is not specified, the user name is determined
implicitly based on the AWS access key ID used to sign the request.
Because this action works for access keys under the AWS account, you
can use this action to manage root credentials even if the AWS account
has no associated users.

Because the body of a X.509 certificate can be large, you should use
POST rather than GET when calling C<UploadSigningCertificate>. For
information about setting up signatures and authorization through the
API, go to Signing AWS API Requests in the I<AWS General Reference>.
For general information about using the Query API with IAM, go to
Making Query Requests in the I<Using IAM>guide.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

