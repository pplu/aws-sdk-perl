# Generated from callargs_class.tt

package Paws::STS::AssumeRole;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::STS::Types qw/STS_PolicyDescriptorType/;
  has DurationSeconds => (is => 'ro', isa => Int, predicate => 1);
  has ExternalId => (is => 'ro', isa => Str, predicate => 1);
  has Policy => (is => 'ro', isa => Str, predicate => 1);
  has PolicyArns => (is => 'ro', isa => ArrayRef[STS_PolicyDescriptorType], predicate => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RoleSessionName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SerialNumber => (is => 'ro', isa => Str, predicate => 1);
  has TokenCode => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssumeRole');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::STS::AssumeRoleResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'AssumeRoleResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SerialNumber' => {
                                   'type' => 'Str'
                                 },
               'TokenCode' => {
                                'type' => 'Str'
                              },
               'PolicyArns' => {
                                 'class' => 'Paws::STS::PolicyDescriptorType',
                                 'type' => 'ArrayRef[STS_PolicyDescriptorType]'
                               },
               'ExternalId' => {
                                 'type' => 'Str'
                               },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'DurationSeconds' => {
                                      'type' => 'Int'
                                    },
               'RoleSessionName' => {
                                      'type' => 'Str'
                                    },
               'Policy' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'RoleSessionName' => 1
                  }
}
;
    return $Params_map;
  }

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
      'DurationSeconds' => 3600,
      'ExternalId'      => '123ABC',
      'Policy' =>
'{"Version":"2012-10-17","Statement":[{"Sid":"Stmt1","Effect":"Allow","Action":"s3:*","Resource":"*"}]}',
      'RoleArn'         => 'arn:aws:iam::123456789012:role/demo',
      'RoleSessionName' => 'Bob'
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
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
in the I<IAM User Guide>.

By default, the value is set to C<3600> seconds.

The C<DurationSeconds> parameter is separate from the duration of a
console session that you might request using the returned credentials.
The request to the federation endpoint for a console sign-in token
takes a C<SessionDuration> parameter that specifies the maximum length
of the console session. For more information, see Creating a URL that
Enables Federated Users to Access the AWS Management Console
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html)
in the I<IAM User Guide>.



=head2 ExternalId => Str

A unique identifier that might be required when you assume a role in
another account. If the administrator of the account to which the role
belongs provided you with an external ID, then provide that value in
the C<ExternalId> parameter. This value can be any string, such as a
passphrase or account number. A cross-account role is usually set up to
trust everyone in an account. Therefore, the administrator of the
trusting account might send an external ID to the administrator of the
trusted account. That way, only someone with the ID can assume the
role, rather than everyone in the account. For more information about
the external ID, see How to Use an External ID When Granting Access to
Your AWS Resources to a Third Party
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html)
in the I<IAM User Guide>.

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@:/-



=head2 Policy => Str

An IAM policy in JSON format that you want to use as an inline session
policy.

This parameter is optional. Passing policies to this operation returns
new temporary credentials. The resulting session's permissions are the
intersection of the role's identity-based policy and the session
policies. You can use the role's temporary credentials in subsequent
AWS API calls to access resources in the account that owns the role.
You cannot use session policies to grant more permissions than those
allowed by the identity-based policy of the role that is being assumed.
For more information, see Session Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>.

The plain text that you use for both inline and managed session
policies shouldn't exceed 2048 characters. The JSON policy characters
can be any ASCII character from the space character to the end of the
valid character list (\u0020 through \u00FF). It can also include the
tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
characters.

The characters in this parameter count towards the 2048 character
session policy guideline. However, an AWS conversion compresses the
session policies into a packed binary format that has a separate limit.
This is the enforced limit. The C<PackedPolicySize> response element
indicates by percentage how close the policy is to the upper size
limit.



=head2 PolicyArns => ArrayRef[STS_PolicyDescriptorType]

The Amazon Resource Names (ARNs) of the IAM managed policies that you
want to use as managed session policies. The policies must exist in the
same account as the role.

This parameter is optional. You can provide up to 10 managed policy
ARNs. However, the plain text that you use for both inline and managed
session policies shouldn't exceed 2048 characters. For more information
about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the AWS General Reference.

The characters in this parameter count towards the 2048 character
session policy guideline. However, an AWS conversion compresses the
session policies into a packed binary format that has a separate limit.
This is the enforced limit. The C<PackedPolicySize> response element
indicates by percentage how close the policy is to the upper size
limit.

Passing policies to this operation returns new temporary credentials.
The resulting session's permissions are the intersection of the role's
identity-based policy and the session policies. You can use the role's
temporary credentials in subsequent AWS API calls to access resources
in the account that owns the role. You cannot use session policies to
grant more permissions than those allowed by the identity-based policy
of the role that is being assumed. For more information, see Session
Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the role to assume.



=head2 B<REQUIRED> RoleSessionName => Str

An identifier for the assumed role session.

Use the role session name to uniquely identify a session when the same
role is assumed by different principals or for different reasons. In
cross-account scenarios, the role session name is visible to, and can
be logged by the account that owns the role. The role session name is
also used in the ARN of the assumed role principal. This means that
subsequent cross-account API requests that use the temporary security
credentials will expose the role session name to the external account
in their AWS CloudTrail logs.

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

