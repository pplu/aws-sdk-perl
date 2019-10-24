# Generated from service_class.tt
package Paws::STS;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'sts' }
  sub signing_name { 'sts' }
  sub version { '2011-06-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'startsWith',
          'cn-'
        ]
      ],
      uri => '{scheme}://{service}.{region}.amazonaws.com.cn'
    },
    {
      constraints => [
        [
          'region',
          'startsWith',
          'us-gov'
        ]
      ],
      uri => 'https://{service}.{region}.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'equals',
          undef
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => 'https://sts.amazonaws.com'
    },
    {
      uri => 'https://{service}.{region}.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AssumeRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::AssumeRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeRoleWithSAML {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::AssumeRoleWithSAML', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssumeRoleWithWebIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::AssumeRoleWithWebIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DecodeAuthorizationMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::DecodeAuthorizationMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCallerIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::GetCallerIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFederationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::GetFederationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSessionToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::STS::GetSessionToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssumeRole AssumeRoleWithSAML AssumeRoleWithWebIdentity DecodeAuthorizationMessage GetCallerIdentity GetFederationToken GetSessionToken / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::STS - Perl Interface to AWS AWS Security Token Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('STS');
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

AWS Security Token Service

The AWS Security Token Service (STS) is a web service that enables you
to request temporary, limited-privilege credentials for AWS Identity
and Access Management (IAM) users or for users that you authenticate
(federated users). This guide provides descriptions of the STS API. For
more detailed information about using this service, go to Temporary
Security Credentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html).

For information about setting up signatures and authorization through
the API, go to Signing AWS API Requests
(https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
in the I<AWS General Reference>. For general information about the
Query API, go to Making Query Requests
(https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
in I<Using IAM>. For information about using security tokens with other
AWS products, go to AWS Services That Work with IAM
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html)
in the I<IAM User Guide>.

If you're new to AWS and need additional technical information about a
specific AWS product, you can find the product's technical
documentation at http://aws.amazon.com/documentation/
(http://aws.amazon.com/documentation/).

B<Endpoints>

By default, AWS Security Token Service (STS) is available as a global
service, and all AWS STS requests go to a single endpoint at
C<https://sts.amazonaws.com>. Global requests map to the US East (N.
Virginia) region. AWS recommends using Regional AWS STS endpoints
instead of the global endpoint to reduce latency, build in redundancy,
and increase session token validity. For more information, see Managing
AWS STS in an AWS Region
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the I<IAM User Guide>.

Most AWS Regions are enabled for operations in all AWS services by
default. Those Regions are automatically activated for use with AWS
STS. Some Regions, such as Asia Pacific (Hong Kong), must be manually
enabled. To learn more about enabling and disabling AWS Regions, see
Managing AWS Regions
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html) in
the I<AWS General Reference>. When you enable these AWS Regions, they
are automatically activated for use with AWS STS. You cannot activate
the STS endpoint for a Region that is disabled. Tokens that are valid
in all AWS Regions are longer than tokens that are valid in Regions
that are enabled by default. Changing this setting might affect
existing systems where you temporarily store tokens. For more
information, see Managing Global Endpoint Session Tokens
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html#sts-regions-manage-tokens)
in the I<IAM User Guide>.

After you activate a Region for use with AWS STS, you can direct AWS
STS API calls to that Region. AWS STS recommends that you provide both
the Region and endpoint when you make calls to a Regional endpoint. You
can provide the Region alone for manually enabled Regions, such as Asia
Pacific (Hong Kong). In this case, the calls are directed to the STS
Regional endpoint. However, if you provide the Region alone for Regions
enabled by default, the calls are directed to the global endpoint of
C<https://sts.amazonaws.com>.

To view the list of AWS STS endpoints and whether they are active by
default, see Writing Code to Use AWS STS Regions
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html#id_credentials_temp_enable-regions_writing_code)
in the I<IAM User Guide>.

B<Recording API requests>

STS supports AWS CloudTrail, which is a service that records AWS calls
for your AWS account and delivers log files to an Amazon S3 bucket. By
using information collected by CloudTrail, you can determine what
requests were successfully made to STS, who made the request, when it
was made, and so on.

If you activate AWS STS endpoints in Regions other than the default
global endpoint, then you must also turn on CloudTrail logging in those
Regions. This is necessary to record any AWS STS API calls that are
made in those Regions. For more information, see Turning On CloudTrail
in Additional Regions
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/aggregating_logs_regions_turn_on_ct.html)
in the I<AWS CloudTrail User Guide>.

AWS Security Token Service (STS) is a global service with a single
endpoint at C<https://sts.amazonaws.com>. Calls to this endpoint are
logged as calls to a global service. However, because this endpoint is
physically located in the US East (N. Virginia) Region, your logs list
C<us-east-1> as the event Region. CloudTrail does not write these logs
to the US East (Ohio) Region unless you choose to include global
service logs in that Region. CloudTrail writes calls to all Regional
endpoints to their respective Regions. For example, calls to
sts.us-east-2.amazonaws.com are published to the US East (Ohio) Region
and calls to sts.eu-central-1.amazonaws.com are published to the EU
(Frankfurt) Region.

To learn more about CloudTrail, including how to turn it on and find
your log files, see the AWS CloudTrail User Guide
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/iam/>


=head1 METHODS

=head2 AssumeRole

=over

=item RoleArn => Str

=item RoleSessionName => Str

=item [DurationSeconds => Int]

=item [ExternalId => Str]

=item [Policy => Str]

=item [PolicyArns => ArrayRef[STS_PolicyDescriptorType]]

=item [SerialNumber => Str]

=item [TokenCode => Str]


=back

Each argument is described in detail in: L<Paws::STS::AssumeRole>

Returns: a L<Paws::STS::AssumeRoleResponse> instance

Returns a set of temporary security credentials that you can use to
access AWS resources that you might not normally have access to. These
temporary credentials consist of an access key ID, a secret access key,
and a security token. Typically, you use C<AssumeRole> within your
account or for cross-account access. For a comparison of C<AssumeRole>
with other API operations that produce temporary credentials, see
Requesting Temporary Security Credentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS API operations
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

You cannot use AWS account root user credentials to call C<AssumeRole>.
You must use credentials for an IAM user or an IAM role to call
C<AssumeRole>.

For cross-account access, imagine that you own multiple accounts and
need to access resources in each account. You could create long-term
credentials in each account to access those resources. However,
managing all those credentials and remembering which one can access
which account can be time consuming. Instead, you can create one set of
long-term credentials in one account. Then use temporary security
credentials to access all the other accounts by assuming roles in those
accounts. For more information about roles, see IAM Roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the
I<IAM User Guide>.

By default, the temporary security credentials created by C<AssumeRole>
last for one hour. However, you can use the optional C<DurationSeconds>
parameter to specify the duration of your session. You can provide a
value from 900 seconds (15 minutes) up to the maximum session duration
setting for the role. This setting can have a value from 1 hour to 12
hours. To learn how to view the maximum value for your role, see View
the Maximum Session Duration Setting for a Role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
in the I<IAM User Guide>. The maximum session duration limit applies
when you use the C<AssumeRole*> API operations or the C<assume-role*>
CLI commands. However the limit does not apply when you use those
operations to create a console URL. For more information, see Using IAM
Roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in
the I<IAM User Guide>.

The temporary security credentials created by C<AssumeRole> can be used
to make API calls to any AWS service with the following exception: You
cannot call the AWS STS C<GetFederationToken> or C<GetSessionToken> API
operations.

(Optional) You can pass inline or managed session policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
to this operation. You can pass a single JSON policy document to use as
an inline session policy. You can also specify up to 10 managed
policies to use as managed session policies. The plain text that you
use for both inline and managed session policies shouldn't exceed 2048
characters. Passing policies to this operation returns new temporary
credentials. The resulting session's permissions are the intersection
of the role's identity-based policy and the session policies. You can
use the role's temporary credentials in subsequent AWS API calls to
access resources in the account that owns the role. You cannot use
session policies to grant more permissions than those allowed by the
identity-based policy of the role that is being assumed. For more
information, see Session Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>.

To assume a role from a different account, your AWS account must be
trusted by the role. The trust relationship is defined in the role's
trust policy when the role is created. That trust policy states which
accounts are allowed to delegate that access to users in the account.

A user who wants to access a role in a different account must also have
permissions that are delegated from the user account administrator. The
administrator must attach a policy that allows the user to call
C<AssumeRole> for the ARN of the role in the other account. If the user
is in the same account as the role, then you can do either of the
following:

=over

=item *

Attach a policy to the user (identical to the previous user in a
different account).

=item *

Add the user as a principal directly in the role's trust policy.

=back

In this case, the trust policy acts as an IAM resource-based policy.
Users in the same account as the role do not need explicit permission
to assume the role. For more information about trust policies and
resource-based policies, see IAM Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
in the I<IAM User Guide>.

B<Using MFA with AssumeRole>

(Optional) You can include multi-factor authentication (MFA)
information when you call C<AssumeRole>. This is useful for
cross-account scenarios to ensure that the user that assumes the role
has been authenticated with an AWS MFA device. In that scenario, the
trust policy of the role being assumed includes a condition that tests
for MFA authentication. If the caller does not include valid MFA
information, the request to assume the role is denied. The condition in
a trust policy that tests for MFA authentication might look like the
following example.

C<"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}>

For more information, see Configuring MFA-Protected API Access
(https://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html)
in the I<IAM User Guide> guide.

To use MFA with C<AssumeRole>, you pass values for the C<SerialNumber>
and C<TokenCode> parameters. The C<SerialNumber> value identifies the
user's hardware or virtual MFA device. The C<TokenCode> is the
time-based one-time password (TOTP) that the MFA device produces.


=head2 AssumeRoleWithSAML

=over

=item PrincipalArn => Str

=item RoleArn => Str

=item SAMLAssertion => Str

=item [DurationSeconds => Int]

=item [Policy => Str]

=item [PolicyArns => ArrayRef[STS_PolicyDescriptorType]]


=back

Each argument is described in detail in: L<Paws::STS::AssumeRoleWithSAML>

Returns: a L<Paws::STS::AssumeRoleWithSAMLResponse> instance

Returns a set of temporary security credentials for users who have been
authenticated via a SAML authentication response. This operation
provides a mechanism for tying an enterprise identity store or
directory to role-based AWS access without user-specific credentials or
configuration. For a comparison of C<AssumeRoleWithSAML> with the other
API operations that produce temporary credentials, see Requesting
Temporary Security Credentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS API operations
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

The temporary security credentials returned by this operation consist
of an access key ID, a secret access key, and a security token.
Applications can use these temporary security credentials to sign calls
to AWS services.

By default, the temporary security credentials created by
C<AssumeRoleWithSAML> last for one hour. However, you can use the
optional C<DurationSeconds> parameter to specify the duration of your
session. Your role session lasts for the duration that you specify, or
until the time specified in the SAML authentication response's
C<SessionNotOnOrAfter> value, whichever is shorter. You can provide a
C<DurationSeconds> value from 900 seconds (15 minutes) up to the
maximum session duration setting for the role. This setting can have a
value from 1 hour to 12 hours. To learn how to view the maximum value
for your role, see View the Maximum Session Duration Setting for a Role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
in the I<IAM User Guide>. The maximum session duration limit applies
when you use the C<AssumeRole*> API operations or the C<assume-role*>
CLI commands. However the limit does not apply when you use those
operations to create a console URL. For more information, see Using IAM
Roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in
the I<IAM User Guide>.

The temporary security credentials created by C<AssumeRoleWithSAML> can
be used to make API calls to any AWS service with the following
exception: you cannot call the STS C<GetFederationToken> or
C<GetSessionToken> API operations.

(Optional) You can pass inline or managed session policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
to this operation. You can pass a single JSON policy document to use as
an inline session policy. You can also specify up to 10 managed
policies to use as managed session policies. The plain text that you
use for both inline and managed session policies shouldn't exceed 2048
characters. Passing policies to this operation returns new temporary
credentials. The resulting session's permissions are the intersection
of the role's identity-based policy and the session policies. You can
use the role's temporary credentials in subsequent AWS API calls to
access resources in the account that owns the role. You cannot use
session policies to grant more permissions than those allowed by the
identity-based policy of the role that is being assumed. For more
information, see Session Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>.

Before your application can call C<AssumeRoleWithSAML>, you must
configure your SAML identity provider (IdP) to issue the claims
required by AWS. Additionally, you must use AWS Identity and Access
Management (IAM) to create a SAML provider entity in your AWS account
that represents your identity provider. You must also create an IAM
role that specifies this SAML provider in its trust policy.

Calling C<AssumeRoleWithSAML> does not require the use of AWS security
credentials. The identity of the caller is validated by using keys in
the metadata document that is uploaded for the SAML provider entity for
your identity provider.

Calling C<AssumeRoleWithSAML> can result in an entry in your AWS
CloudTrail logs. The entry includes the value in the C<NameID> element
of the SAML assertion. We recommend that you use a C<NameIDType> that
is not associated with any personally identifiable information (PII).
For example, you could instead use the Persistent Identifier
(C<urn:oasis:names:tc:SAML:2.0:nameid-format:persistent>).

For more information, see the following resources:

=over

=item *

About SAML 2.0-based Federation
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html)
in the I<IAM User Guide>.

=item *

Creating SAML Identity Providers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html)
in the I<IAM User Guide>.

=item *

Configuring a Relying Party and Claims
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html)
in the I<IAM User Guide>.

=item *

Creating a Role for SAML 2.0 Federation
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html)
in the I<IAM User Guide>.

=back



=head2 AssumeRoleWithWebIdentity

=over

=item RoleArn => Str

=item RoleSessionName => Str

=item WebIdentityToken => Str

=item [DurationSeconds => Int]

=item [Policy => Str]

=item [PolicyArns => ArrayRef[STS_PolicyDescriptorType]]

=item [ProviderId => Str]


=back

Each argument is described in detail in: L<Paws::STS::AssumeRoleWithWebIdentity>

Returns: a L<Paws::STS::AssumeRoleWithWebIdentityResponse> instance

Returns a set of temporary security credentials for users who have been
authenticated in a mobile or web application with a web identity
provider. Example providers include Amazon Cognito, Login with Amazon,
Facebook, Google, or any OpenID Connect-compatible identity provider.

For mobile applications, we recommend that you use Amazon Cognito. You
can use Amazon Cognito with the AWS SDK for iOS Developer Guide
(http://aws.amazon.com/sdkforios/) and the AWS SDK for Android
Developer Guide (http://aws.amazon.com/sdkforandroid/) to uniquely
identify a user. You can also supply the user with a consistent
identity throughout the lifetime of an application.

To learn more about Amazon Cognito, see Amazon Cognito Overview
(https://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-auth.html#d0e840)
in I<AWS SDK for Android Developer Guide> and Amazon Cognito Overview
(https://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-auth.html#d0e664)
in the I<AWS SDK for iOS Developer Guide>.

Calling C<AssumeRoleWithWebIdentity> does not require the use of AWS
security credentials. Therefore, you can distribute an application (for
example, on mobile devices) that requests temporary security
credentials without including long-term AWS credentials in the
application. You also don't need to deploy server-based proxy services
that use long-term AWS credentials. Instead, the identity of the caller
is validated by using a token from the web identity provider. For a
comparison of C<AssumeRoleWithWebIdentity> with the other API
operations that produce temporary credentials, see Requesting Temporary
Security Credentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS API operations
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

The temporary security credentials returned by this API consist of an
access key ID, a secret access key, and a security token. Applications
can use these temporary security credentials to sign calls to AWS
service API operations.

By default, the temporary security credentials created by
C<AssumeRoleWithWebIdentity> last for one hour. However, you can use
the optional C<DurationSeconds> parameter to specify the duration of
your session. You can provide a value from 900 seconds (15 minutes) up
to the maximum session duration setting for the role. This setting can
have a value from 1 hour to 12 hours. To learn how to view the maximum
value for your role, see View the Maximum Session Duration Setting for
a Role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
in the I<IAM User Guide>. The maximum session duration limit applies
when you use the C<AssumeRole*> API operations or the C<assume-role*>
CLI commands. However the limit does not apply when you use those
operations to create a console URL. For more information, see Using IAM
Roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in
the I<IAM User Guide>.

The temporary security credentials created by
C<AssumeRoleWithWebIdentity> can be used to make API calls to any AWS
service with the following exception: you cannot call the STS
C<GetFederationToken> or C<GetSessionToken> API operations.

(Optional) You can pass inline or managed session policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
to this operation. You can pass a single JSON policy document to use as
an inline session policy. You can also specify up to 10 managed
policies to use as managed session policies. The plain text that you
use for both inline and managed session policies shouldn't exceed 2048
characters. Passing policies to this operation returns new temporary
credentials. The resulting session's permissions are the intersection
of the role's identity-based policy and the session policies. You can
use the role's temporary credentials in subsequent AWS API calls to
access resources in the account that owns the role. You cannot use
session policies to grant more permissions than those allowed by the
identity-based policy of the role that is being assumed. For more
information, see Session Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>.

Before your application can call C<AssumeRoleWithWebIdentity>, you must
have an identity token from a supported identity provider and create a
role that the application can assume. The role that your application
assumes must trust the identity provider that is associated with the
identity token. In other words, the identity provider must be specified
in the role's trust policy.

Calling C<AssumeRoleWithWebIdentity> can result in an entry in your AWS
CloudTrail logs. The entry includes the Subject
(http://openid.net/specs/openid-connect-core-1_0.html#Claims) of the
provided Web Identity Token. We recommend that you avoid using any
personally identifiable information (PII) in this field. For example,
you could instead use a GUID or a pairwise identifier, as suggested in
the OIDC specification
(http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes).

For more information about how to use web identity federation and the
C<AssumeRoleWithWebIdentity> API, see the following resources:

=over

=item *

Using Web Identity Federation API Operations for Mobile Apps
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html)
and Federation Through a Web-based Identity Provider
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity).

=item *

Web Identity Federation Playground
(https://web-identity-federation-playground.s3.amazonaws.com/index.html).
Walk through the process of authenticating through Login with Amazon,
Facebook, or Google, getting temporary security credentials, and then
using those credentials to make a request to AWS.

=item *

AWS SDK for iOS Developer Guide (http://aws.amazon.com/sdkforios/) and
AWS SDK for Android Developer Guide
(http://aws.amazon.com/sdkforandroid/). These toolkits contain sample
apps that show how to invoke the identity providers, and then how to
use the information from these providers to get and use temporary
security credentials.

=item *

Web Identity Federation with Mobile Applications
(http://aws.amazon.com/articles/web-identity-federation-with-mobile-applications).
This article discusses web identity federation and shows an example of
how to use web identity federation to get access to content in Amazon
S3.

=back



=head2 DecodeAuthorizationMessage

=over

=item EncodedMessage => Str


=back

Each argument is described in detail in: L<Paws::STS::DecodeAuthorizationMessage>

Returns: a L<Paws::STS::DecodeAuthorizationMessageResponse> instance

Decodes additional information about the authorization status of a
request from an encoded message returned in response to an AWS request.

For example, if a user is not authorized to perform an operation that
he or she has requested, the request returns a
C<Client.UnauthorizedOperation> response (an HTTP 403 response). Some
AWS operations additionally return an encoded message that can provide
details about this authorization failure.

Only certain AWS operations return an encoded authorization message.
The documentation for an individual operation indicates whether that
operation returns an encoded message in addition to returning an HTTP
code.

The message is encoded because the details of the authorization status
can constitute privileged information that the user who requested the
operation should not see. To decode an authorization status message, a
user must be granted permissions via an IAM policy to request the
C<DecodeAuthorizationMessage> (C<sts:DecodeAuthorizationMessage>)
action.

The decoded message includes the following type of information:

=over

=item *

Whether the request was denied due to an explicit deny or due to the
absence of an explicit allow. For more information, see Determining
Whether a Request is Allowed or Denied
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow)
in the I<IAM User Guide>.

=item *

The principal who made the request.

=item *

The requested action.

=item *

The requested resource.

=item *

The values of condition keys in the context of the user's request.

=back



=head2 GetCallerIdentity






Each argument is described in detail in: L<Paws::STS::GetCallerIdentity>

Returns: a L<Paws::STS::GetCallerIdentityResponse> instance

Returns details about the IAM identity whose credentials are used to
call the API.


=head2 GetFederationToken

=over

=item Name => Str

=item [DurationSeconds => Int]

=item [Policy => Str]

=item [PolicyArns => ArrayRef[STS_PolicyDescriptorType]]


=back

Each argument is described in detail in: L<Paws::STS::GetFederationToken>

Returns: a L<Paws::STS::GetFederationTokenResponse> instance

Returns a set of temporary security credentials (consisting of an
access key ID, a secret access key, and a security token) for a
federated user. A typical use is in a proxy application that gets
temporary security credentials on behalf of distributed applications
inside a corporate network. You must call the C<GetFederationToken>
operation using the long-term security credentials of an IAM user. As a
result, this call is appropriate in contexts where those credentials
can be safely stored, usually in a server-based application. For a
comparison of C<GetFederationToken> with the other API operations that
produce temporary credentials, see Requesting Temporary Security
Credentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS API operations
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

You can create a mobile-based or browser-based app that can
authenticate users using a web identity provider like Login with
Amazon, Facebook, Google, or an OpenID Connect-compatible identity
provider. In this case, we recommend that you use Amazon Cognito
(http://aws.amazon.com/cognito/) or C<AssumeRoleWithWebIdentity>. For
more information, see Federation Through a Web-based Identity Provider
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity).

You can also call C<GetFederationToken> using the security credentials
of an AWS account root user, but we do not recommend it. Instead, we
recommend that you create an IAM user for the purpose of the proxy
application. Then attach a policy to the IAM user that limits federated
users to only the actions and resources that they need to access. For
more information, see IAM Best Practices
(https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
in the I<IAM User Guide>.

The temporary credentials are valid for the specified duration, from
900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours).
The default is 43,200 seconds (12 hours). Temporary credentials that
are obtained by using AWS account root user credentials have a maximum
duration of 3,600 seconds (1 hour).

The temporary security credentials created by C<GetFederationToken> can
be used to make API calls to any AWS service with the following
exceptions:

=over

=item *

You cannot use these credentials to call any IAM API operations.

=item *

You cannot call any STS API operations except C<GetCallerIdentity>.

=back

B<Permissions>

You must pass an inline or managed session policy
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
to this operation. You can pass a single JSON policy document to use as
an inline session policy. You can also specify up to 10 managed
policies to use as managed session policies. The plain text that you
use for both inline and managed session policies shouldn't exceed 2048
characters.

Though the session policy parameters are optional, if you do not pass a
policy, then the resulting federated user session has no permissions.
The only exception is when the credentials are used to access a
resource that has a resource-based policy that specifically references
the federated user session in the C<Principal> element of the policy.
When you pass session policies, the session permissions are the
intersection of the IAM user policies and the session policies that you
pass. This gives you a way to further restrict the permissions for a
federated user. You cannot use session policies to grant more
permissions than those that are defined in the permissions policy of
the IAM user. For more information, see Session Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
in the I<IAM User Guide>. For information about using
C<GetFederationToken> to create temporary security credentials, see
GetFederationTokenE<mdash>Federation Through a Custom Identity Broker
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken).


=head2 GetSessionToken

=over

=item [DurationSeconds => Int]

=item [SerialNumber => Str]

=item [TokenCode => Str]


=back

Each argument is described in detail in: L<Paws::STS::GetSessionToken>

Returns: a L<Paws::STS::GetSessionTokenResponse> instance

Returns a set of temporary credentials for an AWS account or IAM user.
The credentials consist of an access key ID, a secret access key, and a
security token. Typically, you use C<GetSessionToken> if you want to
use MFA to protect programmatic calls to specific AWS API operations
like Amazon EC2 C<StopInstances>. MFA-enabled IAM users would need to
call C<GetSessionToken> and submit an MFA code that is associated with
their MFA device. Using the temporary security credentials that are
returned from the call, IAM users can then make programmatic calls to
API operations that require MFA authentication. If you do not supply a
correct MFA code, then the API returns an access denied error. For a
comparison of C<GetSessionToken> with the other API operations that
produce temporary credentials, see Requesting Temporary Security
Credentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
and Comparing the AWS STS API operations
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
in the I<IAM User Guide>.

The C<GetSessionToken> operation must be called by using the long-term
AWS security credentials of the AWS account root user or an IAM user.
Credentials that are created by IAM users are valid for the duration
that you specify. This duration can range from 900 seconds (15 minutes)
up to a maximum of 129,600 seconds (36 hours), with a default of 43,200
seconds (12 hours). Credentials based on account credentials can range
from 900 seconds (15 minutes) up to 3,600 seconds (1 hour), with a
default of 1 hour.

The temporary security credentials created by C<GetSessionToken> can be
used to make API calls to any AWS service with the following
exceptions:

=over

=item *

You cannot call any IAM API operations unless MFA authentication
information is included in the request.

=item *

You cannot call any STS API I<except> C<AssumeRole> or
C<GetCallerIdentity>.

=back

We recommend that you do not call C<GetSessionToken> with AWS account
root user credentials. Instead, follow our best practices
(https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#create-iam-users)
by creating one or more IAM users, giving them the necessary
permissions, and using IAM users for everyday interaction with AWS.

The credentials that are returned by C<GetSessionToken> are based on
permissions associated with the user whose credentials were used to
call the operation. If C<GetSessionToken> is called using AWS account
root user credentials, the temporary credentials have root user
permissions. Similarly, if C<GetSessionToken> is called using the
credentials of an IAM user, the temporary credentials have the same
permissions as the IAM user.

For more information about using C<GetSessionToken> to create temporary
credentials, go to Temporary Credentials for Users in Untrusted
Environments
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken)
in the I<IAM User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

