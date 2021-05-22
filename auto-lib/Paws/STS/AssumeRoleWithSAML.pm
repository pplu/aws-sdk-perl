
package Paws::STS::AssumeRoleWithSAML;
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Policy => (is => 'ro', isa => 'Str');
  has PolicyArns => (is => 'ro', isa => 'ArrayRef[Paws::STS::PolicyDescriptorType]');
  has PrincipalArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SAMLAssertion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAML');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::AssumeRoleWithSAMLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAMLResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRoleWithSAML - Arguments for method AssumeRoleWithSAML on L<Paws::STS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssumeRoleWithSAML on the
L<AWS Security Token Service|Paws::STS> service. Use the attributes of this class
as arguments to method AssumeRoleWithSAML.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssumeRoleWithSAML.

=head1 SYNOPSIS

    my $sts = Paws->service('STS');
    my $AssumeRoleWithSAMLResponse = $sts->AssumeRoleWithSAML(
      PrincipalArn    => 'MyarnType',
      RoleArn         => 'MyarnType',
      SAMLAssertion   => 'MySAMLAssertionType',
      DurationSeconds => 1,                                # OPTIONAL
      Policy          => 'MysessionPolicyDocumentType',    # OPTIONAL
      PolicyArns      => [
        {
          Arn => 'MyarnType',                              # min: 20, max: 2048
        },
        ...
      ],                                                   # OPTIONAL
    );

    # Results:
    my $AssumedRoleUser  = $AssumeRoleWithSAMLResponse->AssumedRoleUser;
    my $Audience         = $AssumeRoleWithSAMLResponse->Audience;
    my $Credentials      = $AssumeRoleWithSAMLResponse->Credentials;
    my $Issuer           = $AssumeRoleWithSAMLResponse->Issuer;
    my $NameQualifier    = $AssumeRoleWithSAMLResponse->NameQualifier;
    my $PackedPolicySize = $AssumeRoleWithSAMLResponse->PackedPolicySize;
    my $SourceIdentity   = $AssumeRoleWithSAMLResponse->SourceIdentity;
    my $Subject          = $AssumeRoleWithSAMLResponse->Subject;
    my $SubjectType      = $AssumeRoleWithSAMLResponse->SubjectType;

    # Returns a L<Paws::STS::AssumeRoleWithSAMLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sts/AssumeRoleWithSAML>

=head1 ATTRIBUTES


=head2 DurationSeconds => Int

The duration, in seconds, of the role session. Your role session lasts
for the duration that you specify for the C<DurationSeconds> parameter,
or until the time specified in the SAML authentication response's
C<SessionNotOnOrAfter> value, whichever is shorter. You can provide a
C<DurationSeconds> value from 900 seconds (15 minutes) up to the
maximum session duration setting for the role. This setting can have a
value from 1 hour to 12 hours. If you specify a value higher than this
setting, the operation fails. For example, if you specify a session
duration of 12 hours, but your administrator set the maximum session
duration to 6 hours, your operation fails. To learn how to view the
maximum value for your role, see View the Maximum Session Duration
Setting for a Role
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

The plaintext that you use for both inline and managed session policies
can't exceed 2,048 characters. The JSON policy characters can be any
ASCII character from the space character to the end of the valid
character list (\u0020 through \u00FF). It can also include the tab
(\u0009), linefeed (\u000A), and carriage return (\u000D) characters.

An AWS conversion compresses the passed session policies and session
tags into a packed binary format that has a separate limit. Your
request can fail for this limit even if your plaintext meets the other
requirements. The C<PackedPolicySize> response element indicates by
percentage how close the policies and tags for your request are to the
upper size limit.



=head2 PolicyArns => ArrayRef[L<Paws::STS::PolicyDescriptorType>]

The Amazon Resource Names (ARNs) of the IAM managed policies that you
want to use as managed session policies. The policies must exist in the
same account as the role.

This parameter is optional. You can provide up to 10 managed policy
ARNs. However, the plaintext that you use for both inline and managed
session policies can't exceed 2,048 characters. For more information
about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the AWS General Reference.

An AWS conversion compresses the passed session policies and session
tags into a packed binary format that has a separate limit. Your
request can fail for this limit even if your plaintext meets the other
requirements. The C<PackedPolicySize> response element indicates by
percentage how close the policies and tags for your request are to the
upper size limit.

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



=head2 B<REQUIRED> PrincipalArn => Str

The Amazon Resource Name (ARN) of the SAML provider in IAM that
describes the IdP.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the role that the caller is assuming.



=head2 B<REQUIRED> SAMLAssertion => Str

The base64 encoded SAML authentication response provided by the IdP.

For more information, see Configuring a Relying Party and Adding Claims
(https://docs.aws.amazon.com/IAM/latest/UserGuide/create-role-saml-IdP-tasks.html)
in the I<IAM User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssumeRoleWithSAML in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

