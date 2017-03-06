package Paws::Organizations;
  use Moose;
  sub service { 'organizations' }
  sub version { '2016-11-28' }
  sub target_prefix { 'AWSOrganizationsV20161128' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AcceptHandshake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::AcceptHandshake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::AttachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelHandshake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CancelHandshake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CreateAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CreateOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOrganizationalUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CreateOrganizationalUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::CreatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeclineHandshake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DeclineHandshake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DeleteOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOrganizationalUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DeleteOrganizationalUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCreateAccountStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeCreateAccountStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHandshake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeHandshake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganizationalUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribeOrganizationalUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DescribePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DetachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisablePolicyType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::DisablePolicyType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableAllFeatures {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::EnableAllFeatures', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnablePolicyType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::EnablePolicyType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InviteAccountToOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::InviteAccountToOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LeaveOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::LeaveOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountsForParent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListAccountsForParent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChildren {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListChildren', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCreateAccountStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListCreateAccountStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHandshakesForAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListHandshakesForAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHandshakesForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListHandshakesForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationalUnitsForParent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListOrganizationalUnitsForParent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListParents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListParents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPoliciesForTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListPoliciesForTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListRoots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargetsForPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::ListTargetsForPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MoveAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::MoveAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveAccountFromOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::RemoveAccountFromOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOrganizationalUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::UpdateOrganizationalUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Organizations::UpdatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AcceptHandshake AttachPolicy CancelHandshake CreateAccount CreateOrganization CreateOrganizationalUnit CreatePolicy DeclineHandshake DeleteOrganization DeleteOrganizationalUnit DeletePolicy DescribeAccount DescribeCreateAccountStatus DescribeHandshake DescribeOrganization DescribeOrganizationalUnit DescribePolicy DetachPolicy DisablePolicyType EnableAllFeatures EnablePolicyType InviteAccountToOrganization LeaveOrganization ListAccounts ListAccountsForParent ListChildren ListCreateAccountStatus ListHandshakesForAccount ListHandshakesForOrganization ListOrganizationalUnitsForParent ListParents ListPolicies ListPoliciesForTarget ListRoots ListTargetsForPolicy MoveAccount RemoveAccountFromOrganization UpdateOrganizationalUnit UpdatePolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations - Perl Interface to AWS AWS Organizations

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Organizations');
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

AWS Organizations API Reference

AWS Organizations is a web service that enables you to consolidate your
multiple AWS accounts into an I<organization> and centrally manage your
accounts and their resources.

This guide provides descriptions of the Organizations API. For more
information about using this service, see the AWS Organizations User
Guide.

B<API Version>

This version of the Organizations API Reference documents the
Organizations API version 2016-11-28.

As an alternative to using the API directly, you can use one of the AWS
SDKs, which consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .NET, iOS, Android,
and more). The SDKs provide a convenient way to create programmatic
access to AWS Organizations. For example, the SDKs take care of
cryptographically signing requests, managing errors, and retrying
requests automatically. For more information about the AWS SDKs,
including how to download and install them, see Tools for Amazon Web
Services.

We recommend that you use the AWS SDKs to make programmatic API calls
to Organizations. However, you also can use the Organizations Query API
to make direct calls to the Organizations web service. To learn more
about the Organizations Query API, see Making Query Requests in the
I<AWS Organizations User Guide>. Organizations supports GET and POST
requests for all actions. That is, the API does not require you to use
GET for some actions and POST for others. However, GET requests are
subject to the limitation size of a URL. Therefore, for operations that
require larger sizes, use a POST request.

B<Signing Requests>

When you send HTTP requests to AWS, you must sign the requests so that
AWS can identify who sent them. You sign requests with your AWS access
key, which consists of an access key ID and a secret access key. We
strongly recommend that you do not create an access key for your root
account. Anyone who has the access key for your root account has
unrestricted access to all the resources in your account. Instead,
create an access key for an IAM user account that has administrative
privileges. As another option, use AWS Security Token Service to
generate temporary security credentials, and use those credentials to
sign requests.

To sign requests, we recommend that you use Signature Version 4. If you
have an existing application that uses Signature Version 2, you do not
have to update it to use Signature Version 4. However, some operations
now require Signature Version 4. The documentation for operations that
require version 4 indicate this requirement.

When you use the AWS Command Line Interface (AWS CLI) or one of the AWS
SDKs to make requests to AWS, these tools automatically sign the
requests for you with the access key that you specify when you
configure the tools.

In this release, each organization can have only one root. In a future
release, a single organization will support multiple roots.

B<Support and Feedback for AWS Organizations>

We welcome your feedback. Send your comments to
aws-organizations-feedback@amazon.com or post your feedback and
questions in our private AWS Organizations support forum. If you don't
have access to the forum, send a request for access to the email
address, along with your forum user ID. For more information about the
AWS support forums, see Forums Help.

B<Endpoint to Call When Using the CLI or the AWS API>

For the current release of Organizations, you must specify the
C<us-east-1> region for all AWS API and CLI calls. You can do this in
the CLI by using these parameters and commands:

=over

=item *

Use the following parameter with each command to specify both the
endpoint and its region:

C<--endpoint-url https://organizations.us-east-1.amazonaws.com>

=item *

Use the default endpoint, but configure your default region with this
command:

C<aws configure set default.region us-east-1>

=item *

Use the following parameter with each command to specify the endpoint:

C<--region us-east-1>

=back

For the various SDKs used to call the APIs, see the documentation for
the SDK of interest to learn how to direct the requests to a specific
endpoint. For more information, see Regions and Endpoints in the I<AWS
General Reference>.

B<How examples are presented>

The JSON returned by the AWS Organizations service as response to your
requests is returned as a single long string without line breaks or
formatting whitespace. Both line breaks and whitespace are included in
the examples in this guide to improve readability. When example input
parameters also would result in long strings that would extend beyond
the screen, we insert line breaks to enhance readability. You should
always submit the input as a single JSON text string.

B<Recording API Requests>

AWS Organizations supports AWS CloudTrail, a service that records AWS
API calls for your AWS account and delivers log files to an Amazon S3
bucket. By using information collected by AWS CloudTrail, you can
determine which requests were successfully made to Organizations, who
made the request, when it was made, and so on. For more about AWS
Organizations and its support for AWS CloudTrail, see Logging AWS
Organizations Events with AWS CloudTrail in the I<AWS Organizations
User Guide>. To learn more about CloudTrail, including how to turn it
on and find your log files, see the AWS CloudTrail User Guide.

=head1 METHODS

=head2 AcceptHandshake(HandshakeId => Str)

Each argument is described in detail in: L<Paws::Organizations::AcceptHandshake>

Returns: a L<Paws::Organizations::AcceptHandshakeResponse> instance

  Sends a response to the originator of a handshake agreeing to the
action proposed by the handshake request.

This operation can be called only by the following principals when they
also have the relevant IAM permissions:

=over

=item *

B<Invitation to join> or B<Approve all features request> handshakes:
only a principal from the member account.

=item *

B<Enable all features final confirmation> handshake: only a principal
from the master account.

For more information about invitations, see Inviting an AWS Account to
Join Your Organization in the I<AWS Organizations User Guide>. For more
information about requests to enable all features in the organization,
see Enabling All Features in Your Organization in the I<AWS
Organizations User Guide>.

=back



=head2 AttachPolicy(PolicyId => Str, TargetId => Str)

Each argument is described in detail in: L<Paws::Organizations::AttachPolicy>

Returns: nothing

  Attaches a policy to a root, an organizational unit, or an individual
account. How the policy affects accounts depends on the type of policy:

=over

=item *

B<Service control policy (SCP)> - An SCP specifies what permissions can
be delegated to users in affected member accounts. The scope of
influence for a policy depends on what you attach the policy to:

=over

=item *

If you attach an SCP to a root, it affects all accounts in the
organization.

=item *

If you attach an SCP to an OU, it affects all accounts in that OU and
in any child OUs.

=item *

If you attach the policy directly to an account, then it affects only
that account.

=back

SCPs essentially are permission "filters". When you attach one SCP to a
higher level root or OU, and you also attach a different SCP to a child
OU or to an account, the child policy can further restrict only the
permissions that pass through the parent filter and are available to
the child. An SCP that is attached to a child cannot grant a permission
that is not already granted by the parent. For example, imagine that
the parent SCP allows permissions A, B, C, D, and E. The child SCP
allows C, D, E, F, and G. The result is that the accounts affected by
the child SCP are allowed to use only C, D, and E. They cannot use A or
B because they were filtered out by the child OU. They also cannot use
F and G because they were filtered out by the parent OU. They cannot be
granted back by the child SCP; child SCPs can only filter the
permissions they receive from the parent SCP.

AWS Organizations attaches a default SCP named C<"FullAWSAccess> to
every root, OU, and account. This default SCP allows all services and
actions, enabling any new child OU or account to inherit the
permissions of the parent root or OU. If you detach the default policy,
you must replace it with a policy that specifies the permissions that
you want to allow in that OU or account.

For more information about how Organizations policies permissions work,
see Using Service Control Policies in the I<AWS Organizations User
Guide>.

=back

This operation can be called only from the organization's master
account.


=head2 CancelHandshake(HandshakeId => Str)

Each argument is described in detail in: L<Paws::Organizations::CancelHandshake>

Returns: a L<Paws::Organizations::CancelHandshakeResponse> instance

  Cancels a handshake. Canceling a handshake sets the handshake state to
C<CANCELED>.

This operation can be called only from the account that originated the
handshake. The recipient of the handshake can't cancel it, but can use
DeclineHandshake instead. After a handshake is canceled, the recipient
can no longer respond to that handshake.


=head2 CreateAccount(AccountName => Str, Email => Str, [IamUserAccessToBilling => Str, RoleName => Str])

Each argument is described in detail in: L<Paws::Organizations::CreateAccount>

Returns: a L<Paws::Organizations::CreateAccountResponse> instance

  Creates an AWS account that is automatically a member of the
organization whose credentials made the request. This is an
asynchronous request that AWS performs in the background. If you want
to check the status of the request later, you need the C<OperationId>
response element from this operation to provide as a parameter to the
DescribeCreateAccountStatus operation.

AWS Organizations preconfigures the new member account with a role
(named C<OrganizationAccountAccessRole> by default) that grants
administrator permissions to the new account. Principals in the master
account can assume the role. AWS Organizations clones the company name
and address information for the new account from the organization's
master account.

For more information about creating accounts, see Creating an AWS
Account in Your Organization in the I<AWS Organizations User Guide>.

You cannot remove accounts that are created with this operation from an
organization. That also means that you cannot delete an organization
that contains an account that is created with this operation.

When you create a member account with this operation, the account is
created with the B<IAM User and Role Access to Billing Information>
switch enabled. This allows IAM users and roles that are granted
appropriate permissions to view billing information. If this is
disabled, then only the account root user can access billing
information. For information about how to disable this for an account,
see Granting Access to Your Billing Information and Tools.

This operation can be called only from the organization's master
account.


=head2 CreateOrganization([FeatureSet => Str])

Each argument is described in detail in: L<Paws::Organizations::CreateOrganization>

Returns: a L<Paws::Organizations::CreateOrganizationResponse> instance

  Creates an AWS organization. The account whose user is calling the
CreateOrganization operation automatically becomes the master account
of the new organization.

This operation must be called using credentials from the account that
is to become the new organization's master account. The principal must
also have the relevant IAM permissions.

By default (or if you set the C<FeatureSet> parameter to C<ALL>), the
new organization is created with all features enabled and service
control policies automatically enabled in the root. If you instead
choose to create the organization supporting only the consolidated
billing features by setting the C<FeatureSet> parameter to
C<CONSOLIDATED_BILLING">, then no policy types are enabled by default
and you cannot use organization policies.


=head2 CreateOrganizationalUnit(Name => Str, ParentId => Str)

Each argument is described in detail in: L<Paws::Organizations::CreateOrganizationalUnit>

Returns: a L<Paws::Organizations::CreateOrganizationalUnitResponse> instance

  Creates an organizational unit (OU) within a root or parent OU. An OU
is a container for accounts that enables you to organize your accounts
to apply policies according to your business requirements. The number
of levels deep that you can nest OUs is dependent upon the policy types
enabled for that root. For service control policies, the limit is five.

For more information about OUs, see Managing Organizational Units in
the I<AWS Organizations User Guide>.

This operation can be called only from the organization's master
account.


=head2 CreatePolicy(Content => Str, Description => Str, Name => Str, Type => Str)

Each argument is described in detail in: L<Paws::Organizations::CreatePolicy>

Returns: a L<Paws::Organizations::CreatePolicyResponse> instance

  Creates a policy of a specified type that you can attach to a root, an
organizational unit (OU), or an individual AWS account.

For more information about policies and their use, see Managing
Organization Policies.

This operation can be called only from the organization's master
account.


=head2 DeclineHandshake(HandshakeId => Str)

Each argument is described in detail in: L<Paws::Organizations::DeclineHandshake>

Returns: a L<Paws::Organizations::DeclineHandshakeResponse> instance

  Declines a handshake request. This sets the handshake state to
C<DECLINED> and effectively deactivates the request.

This operation can be called only from the account that received the
handshake. The originator of the handshake can use CancelHandshake
instead. The originator can't reactivate a declined request, but can
re-initiate the process with a new handshake request.


=head2 DeleteOrganization( => )

Each argument is described in detail in: L<Paws::Organizations::DeleteOrganization>

Returns: nothing

  Deletes the organization. You can delete an organization only by using
credentials from the master account. The organization must be empty of
member accounts, OUs, and policies.

If you create any accounts using Organizations operations or the
Organizations console, you can't remove those accounts from the
organization, which means that you can't delete the organization.


=head2 DeleteOrganizationalUnit(OrganizationalUnitId => Str)

Each argument is described in detail in: L<Paws::Organizations::DeleteOrganizationalUnit>

Returns: nothing

  Deletes an organizational unit from a root or another OU. You must
first remove all accounts and child OUs from the OU that you want to
delete.

This operation can be called only from the organization's master
account.


=head2 DeletePolicy(PolicyId => Str)

Each argument is described in detail in: L<Paws::Organizations::DeletePolicy>

Returns: nothing

  Deletes the specified policy from your organization. Before you perform
this operation, you must first detach the policy from all OUs, roots,
and accounts.

This operation can be called only from the organization's master
account.


=head2 DescribeAccount(AccountId => Str)

Each argument is described in detail in: L<Paws::Organizations::DescribeAccount>

Returns: a L<Paws::Organizations::DescribeAccountResponse> instance

  Retrieves Organizations-related information about the specified
account.

This operation can be called only from the organization's master
account.


=head2 DescribeCreateAccountStatus(CreateAccountRequestId => Str)

Each argument is described in detail in: L<Paws::Organizations::DescribeCreateAccountStatus>

Returns: a L<Paws::Organizations::DescribeCreateAccountStatusResponse> instance

  Retrieves the current status of an asynchronous request to create an
account.

This operation can be called only from the organization's master
account.


=head2 DescribeHandshake(HandshakeId => Str)

Each argument is described in detail in: L<Paws::Organizations::DescribeHandshake>

Returns: a L<Paws::Organizations::DescribeHandshakeResponse> instance

  Retrieves information about a previously requested handshake. The
handshake ID comes from the response to the original
InviteAccountToOrganization operation that generated the handshake.

This operation can be called from any account in the organization.


=head2 DescribeOrganization( => )

Each argument is described in detail in: L<Paws::Organizations::DescribeOrganization>

Returns: a L<Paws::Organizations::DescribeOrganizationResponse> instance

  Retrieves information about the organization that the user's account
belongs to.

This operation can be called from any account in the organization.


=head2 DescribeOrganizationalUnit(OrganizationalUnitId => Str)

Each argument is described in detail in: L<Paws::Organizations::DescribeOrganizationalUnit>

Returns: a L<Paws::Organizations::DescribeOrganizationalUnitResponse> instance

  Retrieves information about an organizational unit (OU).

This operation can be called only from the organization's master
account.


=head2 DescribePolicy(PolicyId => Str)

Each argument is described in detail in: L<Paws::Organizations::DescribePolicy>

Returns: a L<Paws::Organizations::DescribePolicyResponse> instance

  Retrieves information about a policy.

This operation can be called only from the organization's master
account.


=head2 DetachPolicy(PolicyId => Str, TargetId => Str)

Each argument is described in detail in: L<Paws::Organizations::DetachPolicy>

Returns: nothing

  Detaches a policy from a target root, organizational unit, or account.
If the policy being detached is a service control policy (SCP), the
changes to permissions for IAM users and roles in affected accounts are
immediate.

B<Note:> Every root, OU, and account must have at least one SCP
attached. If you want to replace the default C<FullAWSAccess> policy
with one that limits the permissions that can be delegated, then you
must attach the replacement policy before you can remove the default
one. This is the authorization strategy of whitelisting. If you instead
attach a second SCP and leave the C<FullAWSAccess> SCP still attached,
and specify C<"Effect": "Deny"> in the second SCP to override the
C<"Effect": "Allow"> in the C<FullAWSAccess> policy (or any other
attached SCP), then you are using the authorization strategy of
blacklisting.

This operation can be called only from the organization's master
account.


=head2 DisablePolicyType(PolicyType => Str, RootId => Str)

Each argument is described in detail in: L<Paws::Organizations::DisablePolicyType>

Returns: a L<Paws::Organizations::DisablePolicyTypeResponse> instance

  Disables an organizational control policy type in a root. A poicy of a
certain type can be attached to entities in a root only if that type is
enabled in the root. After you perform this operation, you no longer
can attach policies of the specified type to that root or to any OU or
account in that root. You can undo this by using the EnablePolicyType
operation.

This operation can be called only from the organization's master
account.


=head2 EnableAllFeatures()

Each argument is described in detail in: L<Paws::Organizations::EnableAllFeatures>

Returns: a L<Paws::Organizations::EnableAllFeaturesResponse> instance

  Enables all features in an organization. This enables the use of
organization policies that can restrict the services and actions that
can be called in each account. Until you enable all features, you have
access only to consolidated billing, and you can't use any of the
advanced account administration features that AWS Organizations
supports. For more information, see Enabling All Features in Your
Organization in the I<AWS Organizations User Guide>.

This operation is required only for organizations that were created
explicitly with only the consolidated billing features enabled, or that
were migrated from a Consolidated Billing account family to
Organizations. Calling this operation sends a handshake to every
invited account in the organization. The feature set change can be
finalized and the additional features enabled only after all
administrators in the invited accounts approve the change by accepting
the handshake.

After all invited member accounts accept the handshake, you finalize
the feature set change by accepting the handshake that contains
C<"Action": "ENABLE_ALL_FEATURES">. This completes the change.

After you enable all features in your organization, the master account
in the organization can apply policies on all member accounts. These
policies can restrict what users and even administrators in those
accounts can do. The master account can apply policies that prevent
accounts from leaving the organization. Ensure that your account
administrators are aware of this.

This operation can be called only from the organization's master
account.


=head2 EnablePolicyType(PolicyType => Str, RootId => Str)

Each argument is described in detail in: L<Paws::Organizations::EnablePolicyType>

Returns: a L<Paws::Organizations::EnablePolicyTypeResponse> instance

  Enables a policy type in a root. After you enable a policy type in a
root, you can attach policies of that type to the root, any OU, or
account in that root. You can undo this by using the DisablePolicyType
operation.

This operation can be called only from the organization's master
account.


=head2 InviteAccountToOrganization(Target => L<Paws::Organizations::HandshakeParty>, [Notes => Str])

Each argument is described in detail in: L<Paws::Organizations::InviteAccountToOrganization>

Returns: a L<Paws::Organizations::InviteAccountToOrganizationResponse> instance

  Sends an invitation to another account to join your organization as a
member account. Organizations sends email on your behalf to the email
address that is associated with the other account's owner. The
invitation is implemented as a Handshake whose details are in the
response.

This operation can be called only from the organization's master
account.


=head2 LeaveOrganization( => )

Each argument is described in detail in: L<Paws::Organizations::LeaveOrganization>

Returns: nothing

  Removes a member account from its parent organization. This version of
the operation is performed by the account that wants to leave. To
remove a member account as a user in the master account, use
RemoveAccountFromOrganization instead.

This operation can be called only from a member account in the
organization.

The master account in an organization with all features enabled can set
service control policies (SCPs) that can restrict what administrators
of member accounts can do, including preventing them from successfully
calling C<LeaveOrganization> and leaving the organization.


=head2 ListAccounts([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListAccounts>

Returns: a L<Paws::Organizations::ListAccountsResponse> instance

  Lists all the accounts in the organization. To request only the
accounts in a root or OU, use the ListAccountsForParent operation
instead.

This operation can be called only from the organization's master
account.


=head2 ListAccountsForParent(ParentId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListAccountsForParent>

Returns: a L<Paws::Organizations::ListAccountsForParentResponse> instance

  Lists the accounts in an organization that are contained by the
specified target root or organizational unit (OU). If you specify the
root, you get a list of all the accounts that are not in any OU. If you
specify an OU, you get a list of all the accounts in only that OU, and
not in any child OUs. To get a list of all accounts in the
organization, use the ListAccounts operation.


=head2 ListChildren(ChildType => Str, ParentId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListChildren>

Returns: a L<Paws::Organizations::ListChildrenResponse> instance

  Lists all of the OUs or accounts that are contained in the specified
parent OU or root. This operation, along with ListParents enables you
to traverse the tree structure that makes up this root.


=head2 ListCreateAccountStatus([MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::Organizations::ListCreateAccountStatus>

Returns: a L<Paws::Organizations::ListCreateAccountStatusResponse> instance

  Lists the account creation requests that match the specified status
that is currently being tracked for the organization.

This operation can be called only from the organization's master
account.


=head2 ListHandshakesForAccount([Filter => L<Paws::Organizations::HandshakeFilter>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListHandshakesForAccount>

Returns: a L<Paws::Organizations::ListHandshakesForAccountResponse> instance

  Lists the current handshakes that are associated with the account of
the requesting user.

This operation can be called from any account in the organization.


=head2 ListHandshakesForOrganization([Filter => L<Paws::Organizations::HandshakeFilter>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListHandshakesForOrganization>

Returns: a L<Paws::Organizations::ListHandshakesForOrganizationResponse> instance

  Lists the handshakes that are associated with the organization that the
requesting user is part of. The C<ListHandshakesForOrganization>
operation returns a list of handshake structures. Each structure
contains details and status about a handshake.

This operation can be called only from the organization's master
account.


=head2 ListOrganizationalUnitsForParent(ParentId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListOrganizationalUnitsForParent>

Returns: a L<Paws::Organizations::ListOrganizationalUnitsForParentResponse> instance

  Lists the organizational units (OUs) in a parent organizational unit or
root.

This operation can be called only from the organization's master
account.


=head2 ListParents(ChildId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListParents>

Returns: a L<Paws::Organizations::ListParentsResponse> instance

  Lists the root or organizational units (OUs) that serve as the
immediate parent of the specified child OU or account. This operation,
along with ListChildren enables you to traverse the tree structure that
makes up this root.

This operation can be called only from the organization's master
account.

In the current release, a child can have only a single parent.


=head2 ListPolicies(Filter => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListPolicies>

Returns: a L<Paws::Organizations::ListPoliciesResponse> instance

  Retrieves the list of all policies in an organization of a specified
type.

This operation can be called only from the organization's master
account.


=head2 ListPoliciesForTarget(Filter => Str, TargetId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListPoliciesForTarget>

Returns: a L<Paws::Organizations::ListPoliciesForTargetResponse> instance

  Lists the policies that are directly attached to the specified target
root, organizational unit (OU), or account. You must specify the policy
type that you want included in the returned list.

This operation can be called only from the organization's master
account.


=head2 ListRoots([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListRoots>

Returns: a L<Paws::Organizations::ListRootsResponse> instance

  Lists the roots that are defined in the current organization.

This operation can be called only from the organization's master
account.


=head2 ListTargetsForPolicy(PolicyId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Organizations::ListTargetsForPolicy>

Returns: a L<Paws::Organizations::ListTargetsForPolicyResponse> instance

  Lists all the roots, OUs, and accounts to which the specified policy is
attached.

This operation can be called only from the organization's master
account.


=head2 MoveAccount(AccountId => Str, DestinationParentId => Str, SourceParentId => Str)

Each argument is described in detail in: L<Paws::Organizations::MoveAccount>

Returns: nothing

  Moves an account from its current source parent root or OU to the
specified destination parent root or OU.

This operation can be called only from the organization's master
account.


=head2 RemoveAccountFromOrganization(AccountId => Str)

Each argument is described in detail in: L<Paws::Organizations::RemoveAccountFromOrganization>

Returns: nothing

  Removes the specified account from the organization.

The removed account becomes a stand-alone account that is not a member
of any organization. It is no longer subject to any policies and is
responsible for its own bill payments. The organization's master
account is no longer charged for any expenses accrued by the member
account after it is removed from the organization.

This operation can be called only from the organization's master
account. Member accounts can remove themselves with LeaveOrganization
instead.

You can remove only existing accounts that were invited to join the
organization. You cannot remove accounts that were created by AWS
Organizations.


=head2 UpdateOrganizationalUnit(OrganizationalUnitId => Str, [Name => Str])

Each argument is described in detail in: L<Paws::Organizations::UpdateOrganizationalUnit>

Returns: a L<Paws::Organizations::UpdateOrganizationalUnitResponse> instance

  Renames the specified organizational unit (OU). The ID and ARN do not
change. The child OUs and accounts remain in place, and any attached
policies of the OU remain attached.

This operation can be called only from the organization's master
account.


=head2 UpdatePolicy(PolicyId => Str, [Content => Str, Description => Str, Name => Str])

Each argument is described in detail in: L<Paws::Organizations::UpdatePolicy>

Returns: a L<Paws::Organizations::UpdatePolicyResponse> instance

  Updates an existing policy with a new name, description, or content. If
any parameter is not supplied, that value remains unchanged. Note that
you cannot change a policy's type.

This operation can be called only from the organization's master
account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

