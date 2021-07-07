
package Paws::Organizations::CreateGovCloudAccount;
  use Moose;
  has AccountName => (is => 'ro', isa => 'Str', required => 1);
  has Email => (is => 'ro', isa => 'Str', required => 1);
  has IamUserAccessToBilling => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGovCloudAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::CreateGovCloudAccountResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateGovCloudAccount - Arguments for method CreateGovCloudAccount on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGovCloudAccount on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method CreateGovCloudAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGovCloudAccount.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $CreateGovCloudAccountResponse = $organizations->CreateGovCloudAccount(
      AccountName            => 'MyAccountName',
      Email                  => 'MyEmail',
      IamUserAccessToBilling => 'ALLOW',           # OPTIONAL
      RoleName               => 'MyRoleName',      # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreateAccountStatus =
      $CreateGovCloudAccountResponse->CreateAccountStatus;

    # Returns a L<Paws::Organizations::CreateGovCloudAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/CreateGovCloudAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountName => Str

The friendly name of the member account.



=head2 B<REQUIRED> Email => Str

The email address of the owner to assign to the new member account in
the commercial Region. This email address must not already be
associated with another AWS account. You must use a valid email address
to complete account creation. You can't access the root user of the
account or remove an account that was created with an invalid email
address. Like all request parameters for C<CreateGovCloudAccount>, the
request for the email address for the AWS GovCloud (US) account
originates from the commercial Region, not from the AWS GovCloud (US)
Region.



=head2 IamUserAccessToBilling => Str

If set to C<ALLOW>, the new linked account in the commercial Region
enables IAM users to access account billing information I<if> they have
the required permissions. If set to C<DENY>, only the root user of the
new account can access account billing information. For more
information, see Activating Access to the Billing and Cost Management
Console
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate)
in the I<AWS Billing and Cost Management User Guide.>

If you don't specify this parameter, the value defaults to C<ALLOW>,
and IAM users and roles with the required permissions can access
billing information for the new account.

Valid values are: C<"ALLOW">, C<"DENY">

=head2 RoleName => Str

(Optional)

The name of an IAM role that AWS Organizations automatically
preconfigures in the new member accounts in both the AWS GovCloud (US)
Region and in the commercial Region. This role trusts the management
account, allowing users in the management account to assume the role,
as permitted by the management account administrator. The role has
administrator permissions in the new member account.

If you don't specify this parameter, the role name defaults to
C<OrganizationAccountAccessRole>.

For more information about how to use this role to access the member
account, see Accessing and Administering the Member Accounts in Your
Organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role)
in the I<AWS Organizations User Guide> and steps 2 and 3 in Tutorial:
Delegate Access Across AWS Accounts Using IAM Roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html)
in the I<IAM User Guide.>

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter. The pattern can include uppercase letters,
lowercase letters, digits with no spaces, and any of the following
characters: =,.@-



=head2 Tags => ArrayRef[L<Paws::Organizations::Tag>]

A list of tags that you want to attach to the newly created account.
These tags are attached to the commercial account associated with the
GovCloud account, and not to the GovCloud account itself. To add tags
to the actual GovCloud account, call the TagResource operation in the
GovCloud region after the new GovCloud account exists.

For each tag in the list, you must specify both a tag key and a value.
You can set the value to an empty string, but you can't set it to
C<null>. For more information about tagging, see Tagging AWS
Organizations resources
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html)
in the AWS Organizations User Guide.

If any one of the tags is invalid or if you exceed the allowed number
of tags for an account, then the entire request fails and the account
is not created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGovCloudAccount in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

