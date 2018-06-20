
package Paws::STS::AssumeRole;
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str');
  has TokenCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::AssumeRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRole - Arguments for method AssumeRole on L<Paws::STS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssumeRole on the
L<AWS Security Token Service|Paws::STS> service. Use the attributes of this class
as arguments to method AssumeRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssumeRole.

=head1 SYNOPSIS

    my $sts = Paws->service('STS');
    # To assume a role
    my $AssumeRoleResponse = $sts->AssumeRole(
      {
        'DurationSeconds' => 3600,
        'ExternalId'      => '123ABC',
        'Policy' =>
'{"Version":"2012-10-17","Statement":[{"Sid":"Stmt1","Effect":"Allow","Action":"s3:*","Resource":"*"}]}',
        'RoleArn'         => 'arn:aws:iam::123456789012:role/demo',
        'RoleSessionName' => 'Bob'
      }
    );

    # Results:
    my $AssumedRoleUser  = $AssumeRoleResponse->AssumedRoleUser;
    my $Credentials      = $AssumeRoleResponse->Credentials;
    my $PackedPolicySize = $AssumeRoleResponse->PackedPolicySize;

    # Returns a L<Paws::STS::AssumeRoleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sts/AssumeRole>

=head1 ATTRIBUTES


=head2 DurationSeconds => Int

The duration, in seconds, of the role session. The value can range from
900 seconds (15 minutes) up to the maximum session duration setting for
the role. This setting can have a value from 1 hour to 12 hours. If you
specify a value higher than this setting, the operation fails. For
example, if you specify a session duration of 12 hours, but your
administrator set the maximum session duration to 6 hours, your
operation fails. To learn how to view the maximum value for your role,
see View the Maximum Session Duration Setting for a Role
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
in the I<IAM User Guide>.

By default, the value is set to 3600 seconds.

The C<DurationSeconds> parameter is separate from the duration of a
console session that you might request using the returned credentials.
The request to the federation endpoint for a console sign-in token
takes a C<SessionDuration> parameter that specifies the maximum length
of the console session. For more information, see Creating a URL that
Enables Federated Users to Access the AWS Management Console
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html)
in the I<IAM User Guide>.



=head2 ExternalId => Str

A unique identifier that is used by third parties when assuming roles
in their customers' accounts. For each role that the third party can
assume, they should instruct their customers to ensure the role's trust
policy checks for the external ID that the third party generated. Each
time the third party assumes the role, they should pass the customer's
external ID. The external ID is useful in order to help third parties
bind a role to the customer who created it. For more information about
the external ID, see How to Use an External ID When Granting Access to
Your AWS Resources to a Third Party
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html)
in the I<IAM User Guide>.

The regex used to validated this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@:/-



=head2 Policy => Str

An IAM policy in JSON format.

This parameter is optional. If you pass a policy, the temporary
security credentials that are returned by the operation have the
permissions that are allowed by both (the intersection of) the access
policy of the role that is being assumed, I<and> the policy that you
pass. This gives you a way to further restrict the permissions for the
resulting temporary security credentials. You cannot use the passed
policy to grant permissions that are in excess of those allowed by the
access policy of the role that is being assumed. For more information,
see Permissions for AssumeRole, AssumeRoleWithSAML, and
AssumeRoleWithWebIdentity
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html)
in the I<IAM User Guide>.

The format for this parameter, as described by its regex pattern, is a
string of characters up to 2048 characters in length. The characters
can be any ASCII character from the space character to the end of the
valid character list (\u0020-\u00FF). It can also include the tab
(\u0009), linefeed (\u000A), and carriage return (\u000D) characters.

The policy plain text must be 2048 bytes or shorter. However, an
internal conversion compresses it into a packed binary format with a
separate limit. The PackedPolicySize response element indicates by
percentage how close to the upper size limit the policy is, with 100%
equaling the maximum allowed size.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the role to assume.



=head2 B<REQUIRED> RoleSessionName => Str

An identifier for the assumed role session.

Use the role session name to uniquely identify a session when the same
role is assumed by different principals or for different reasons. In
cross-account scenarios, the role session name is visible to, and can
be logged by the account that owns the role. The role session name is
also used in the ARN of the assumed role principal. This means that
subsequent cross-account API requests using the temporary security
credentials will expose the role session name to the external account
in their CloudTrail logs.

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-



=head2 SerialNumber => Str

The identification number of the MFA device that is associated with the
user who is making the C<AssumeRole> call. Specify this value if the
trust policy of the role being assumed includes a condition that
requires MFA authentication. The value is either the serial number for
a hardware device (such as C<GAHT12345678>) or an Amazon Resource Name
(ARN) for a virtual device (such as
C<arn:aws:iam::123456789012:mfa/user>).

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-



=head2 TokenCode => Str

The value provided by the MFA device, if the trust policy of the role
being assumed requires MFA (that is, if the policy includes a condition
that tests for MFA). If the role being assumed requires MFA and if the
C<TokenCode> value is missing or expired, the C<AssumeRole> call
returns an "access denied" error.

The format for this parameter, as described by its regex pattern, is a
sequence of six numeric digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssumeRole in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

