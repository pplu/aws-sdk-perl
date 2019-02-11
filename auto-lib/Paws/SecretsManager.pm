package Paws::SecretsManager;
  use Moose;
  sub service { 'secretsmanager' }
  sub signing_name { 'secretsmanager' }
  sub version { '2017-10-17' }
  sub target_prefix { 'secretsmanager' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CancelRotateSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::CancelRotateSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::CreateSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::DeleteSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::DescribeSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRandomPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::GetRandomPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecretValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::GetSecretValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecrets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::ListSecrets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecretVersionIds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::ListSecretVersionIds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSecretValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::PutSecretValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::RestoreSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RotateSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::RotateSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::UpdateSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecretVersionStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::UpdateSecretVersionStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllSecrets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecrets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecrets(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecretList }, @{ $next_result->SecretList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecretList') foreach (@{ $result->SecretList });
        $result = $self->ListSecrets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecretList') foreach (@{ $result->SecretList });
    }

    return undef
  }


  sub operations { qw/CancelRotateSecret CreateSecret DeleteResourcePolicy DeleteSecret DescribeSecret GetRandomPassword GetResourcePolicy GetSecretValue ListSecrets ListSecretVersionIds PutResourcePolicy PutSecretValue RestoreSecret RotateSecret TagResource UntagResource UpdateSecret UpdateSecretVersionStage / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager - Perl Interface to AWS AWS Secrets Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SecretsManager');
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

AWS Secrets Manager API Reference

AWS Secrets Manager is a web service that enables you to store, manage,
and retrieve, secrets.

This guide provides descriptions of the Secrets Manager API. For more
information about using this service, see the AWS Secrets Manager User
Guide
(http://docs.aws.amazon.com/secretsmanager/latest/userguide/introduction.html).

B<API Version>

This version of the Secrets Manager API Reference documents the Secrets
Manager API version 2017-10-17.

As an alternative to using the API directly, you can use one of the AWS
SDKs, which consist of libraries and sample code for various
programming languages and platforms (such as Java, Ruby, .NET, iOS, and
Android). The SDKs provide a convenient way to create programmatic
access to AWS Secrets Manager. For example, the SDKs take care of
cryptographically signing requests, managing errors, and retrying
requests automatically. For more information about the AWS SDKs,
including how to download and install them, see Tools for Amazon Web
Services (http://aws.amazon.com/tools/).

We recommend that you use the AWS SDKs to make programmatic API calls
to Secrets Manager. However, you also can use the Secrets Manager HTTP
Query API to make direct calls to the Secrets Manager web service. To
learn more about the Secrets Manager HTTP Query API, see Making Query
Requests
(http://docs.aws.amazon.com/secretsmanager/latest/userguide/query-requests.html)
in the I<AWS Secrets Manager User Guide>.

Secrets Manager supports GET and POST requests for all actions. That
is, the API doesn't require you to use GET for some actions and POST
for others. However, GET requests are subject to the limitation size of
a URL. Therefore, for operations that require larger sizes, use a POST
request.

B<Support and Feedback for AWS Secrets Manager>

We welcome your feedback. Send your comments to
awssecretsmanager-feedback@amazon.com
(mailto:awssecretsmanager-feedback@amazon.com), or post your feedback
and questions in the AWS Secrets Manager Discussion Forum
(http://forums.aws.amazon.com/forum.jspa?forumID=296). For more
information about the AWS Discussion Forums, see Forums Help
(http://forums.aws.amazon.com/help.jspa).

B<How examples are presented>

The JSON that AWS Secrets Manager expects as your request parameters
and that the service returns as a response to HTTP query requests are
single, long strings without line breaks or white space formatting. The
JSON shown in the examples is formatted with both line breaks and white
space to improve readability. When example input parameters would also
result in long strings that extend beyond the screen, we insert line
breaks to enhance readability. You should always submit the input as a
single JSON text string.

B<Logging API Requests>

AWS Secrets Manager supports AWS CloudTrail, a service that records AWS
API calls for your AWS account and delivers log files to an Amazon S3
bucket. By using information that's collected by AWS CloudTrail, you
can determine which requests were successfully made to Secrets Manager,
who made the request, when it was made, and so on. For more about AWS
Secrets Manager and its support for AWS CloudTrail, see Logging AWS
Secrets Manager Events with AWS CloudTrail
(http://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail)
in the I<AWS Secrets Manager User Guide>. To learn more about
CloudTrail, including how to turn it on and find your log files, see
the AWS CloudTrail User Guide
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17>


=head1 METHODS

=head2 CancelRotateSecret

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::CancelRotateSecret>

Returns: a L<Paws::SecretsManager::CancelRotateSecretResponse> instance

Disables automatic scheduled rotation and cancels the rotation of a
secret if one is currently in progress.

To re-enable scheduled rotation, call RotateSecret with
C<AutomaticallyRotateAfterDays> set to a value greater than 0. This
will immediately rotate your secret and then enable the automatic
schedule.

If you cancel a rotation that is in progress, it can leave the
C<VersionStage> labels in an unexpected state. Depending on what step
of the rotation was in progress, you might need to remove the staging
label C<AWSPENDING> from the partially created version, specified by
the C<VersionId> response value. You should also evaluate the partially
rotated new version to see if it should be deleted, which you can do by
removing all staging labels from the new version's C<VersionStage>
field.

To successfully start a rotation, the staging label C<AWSPENDING> must
be in one of the following states:

=over

=item *

Not be attached to any version at all

=item *

Attached to the same version as the staging label C<AWSCURRENT>

=back

If the staging label C<AWSPENDING> is attached to a different version
than the version with C<AWSCURRENT> then the attempt to rotate fails.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:CancelRotateSecret

=back

B<Related operations>

=over

=item *

To configure rotation for a secret or to manually trigger a rotation,
use RotateSecret.

=item *

To get the rotation configuration details for a secret, use
DescribeSecret.

=item *

To list all of the currently available secrets, use ListSecrets.

=item *

To list all of the versions currently associated with a secret, use
ListSecretVersionIds.

=back



=head2 CreateSecret

=over

=item Name => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [SecretBinary => Str]

=item [SecretString => Str]

=item [Tags => ArrayRef[L<Paws::SecretsManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::SecretsManager::CreateSecret>

Returns: a L<Paws::SecretsManager::CreateSecretResponse> instance

Creates a new secret. A secret in Secrets Manager consists of both the
protected secret data and the important information needed to manage
the secret.

Secrets Manager stores the encrypted secret data in one of a collection
of "versions" associated with the secret. Each version contains a copy
of the encrypted secret data. Each version is associated with one or
more "staging labels" that identify where the version is in the
rotation cycle. The C<SecretVersionsToStages> field of the secret
contains the mapping of staging labels to the active versions of the
secret. Versions without a staging label are considered deprecated and
are not included in the list.

You provide the secret data to be encrypted by putting text in either
the C<SecretString> parameter or binary data in the C<SecretBinary>
parameter, but not both. If you include C<SecretString> or
C<SecretBinary> then Secrets Manager also creates an initial secret
version and automatically attaches the staging label C<AWSCURRENT> to
the new version.

=over

=item *

If you call an operation that needs to encrypt or decrypt the
C<SecretString> or C<SecretBinary> for a secret in the same account as
the calling user and that secret doesn't specify a AWS KMS encryption
key, Secrets Manager uses the account's default AWS managed customer
master key (CMK) with the alias C<aws/secretsmanager>. If this key
doesn't already exist in your account then Secrets Manager creates it
for you automatically. All users and roles in the same AWS account
automatically have access to use the default CMK. Note that if an
Secrets Manager API call results in AWS having to create the account's
AWS-managed CMK, it can result in a one-time significant delay in
returning the result.

=item *

If the secret is in a different AWS account from the credentials
calling an API that requires encryption or decryption of the secret
value then you must create and use a custom AWS KMS CMK because you
can't access the default CMK for the account using credentials from a
different AWS account. Store the ARN of the CMK in the secret when you
create the secret or when you update it by including it in the
C<KMSKeyId>. If you call an API that must encrypt or decrypt
C<SecretString> or C<SecretBinary> using credentials from a different
account then the AWS KMS key policy must grant cross-account access to
that other account's user or role for both the kms:GenerateDataKey and
kms:Decrypt operations.

=back

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:CreateSecret

=item *

kms:GenerateDataKey - needed only if you use a customer-managed AWS KMS
key to encrypt the secret. You do not need this permission to use the
account's default AWS managed CMK for Secrets Manager.

=item *

kms:Decrypt - needed only if you use a customer-managed AWS KMS key to
encrypt the secret. You do not need this permission to use the
account's default AWS managed CMK for Secrets Manager.

=item *

secretsmanager:TagResource - needed only if you include the C<Tags>
parameter.

=back

B<Related operations>

=over

=item *

To delete a secret, use DeleteSecret.

=item *

To modify an existing secret, use UpdateSecret.

=item *

To create a new version of a secret, use PutSecretValue.

=item *

To retrieve the encrypted secure string and secure binary values, use
GetSecretValue.

=item *

To retrieve all other details for a secret, use DescribeSecret. This
does not include the encrypted secure string and secure binary values.

=item *

To retrieve the list of secret versions associated with the current
secret, use DescribeSecret and examine the C<SecretVersionsToStages>
response value.

=back



=head2 DeleteResourcePolicy

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::DeleteResourcePolicy>

Returns: a L<Paws::SecretsManager::DeleteResourcePolicyResponse> instance

Deletes the resource-based permission policy that's attached to the
secret.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:DeleteResourcePolicy

=back

B<Related operations>

=over

=item *

To attach a resource policy to a secret, use PutResourcePolicy.

=item *

To retrieve the current resource-based policy that's attached to a
secret, use GetResourcePolicy.

=item *

To list all of the currently available secrets, use ListSecrets.

=back



=head2 DeleteSecret

=over

=item SecretId => Str

=item [ForceDeleteWithoutRecovery => Bool]

=item [RecoveryWindowInDays => Int]


=back

Each argument is described in detail in: L<Paws::SecretsManager::DeleteSecret>

Returns: a L<Paws::SecretsManager::DeleteSecretResponse> instance

Deletes an entire secret and all of its versions. You can optionally
include a recovery window during which you can restore the secret. If
you don't specify a recovery window value, the operation defaults to 30
days. Secrets Manager attaches a C<DeletionDate> stamp to the secret
that specifies the end of the recovery window. At the end of the
recovery window, Secrets Manager deletes the secret permanently.

At any time before recovery window ends, you can use RestoreSecret to
remove the C<DeletionDate> and cancel the deletion of the secret.

You cannot access the encrypted secret information in any secret that
is scheduled for deletion. If you need to access that information, you
must cancel the deletion with RestoreSecret and then retrieve the
information.

=over

=item *

There is no explicit operation to delete a version of a secret.
Instead, remove all staging labels from the C<VersionStage> field of a
version. That marks the version as deprecated and allows Secrets
Manager to delete it as needed. Versions that do not have any staging
labels do not show up in ListSecretVersionIds unless you specify
C<IncludeDeprecated>.

=item *

The permanent secret deletion at the end of the waiting period is
performed as a background task with low priority. There is no guarantee
of a specific time after the recovery window for the actual delete
operation to occur.

=back

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:DeleteSecret

=back

B<Related operations>

=over

=item *

To create a secret, use CreateSecret.

=item *

To cancel deletion of a version of a secret before the recovery window
has expired, use RestoreSecret.

=back



=head2 DescribeSecret

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::DescribeSecret>

Returns: a L<Paws::SecretsManager::DescribeSecretResponse> instance

Retrieves the details of a secret. It does not include the encrypted
fields. Only those fields that are populated with a value are returned
in the response.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:DescribeSecret

=back

B<Related operations>

=over

=item *

To create a secret, use CreateSecret.

=item *

To modify a secret, use UpdateSecret.

=item *

To retrieve the encrypted secret information in a version of the
secret, use GetSecretValue.

=item *

To list all of the secrets in the AWS account, use ListSecrets.

=back



=head2 GetRandomPassword

=over

=item [ExcludeCharacters => Str]

=item [ExcludeLowercase => Bool]

=item [ExcludeNumbers => Bool]

=item [ExcludePunctuation => Bool]

=item [ExcludeUppercase => Bool]

=item [IncludeSpace => Bool]

=item [PasswordLength => Int]

=item [RequireEachIncludedType => Bool]


=back

Each argument is described in detail in: L<Paws::SecretsManager::GetRandomPassword>

Returns: a L<Paws::SecretsManager::GetRandomPasswordResponse> instance

Generates a random password of the specified complexity. This operation
is intended for use in the Lambda rotation function. Per best practice,
we recommend that you specify the maximum length and include every
character type that the system you are generating a password for can
support.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:GetRandomPassword

=back



=head2 GetResourcePolicy

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::GetResourcePolicy>

Returns: a L<Paws::SecretsManager::GetResourcePolicyResponse> instance

Retrieves the JSON text of the resource-based policy document that's
attached to the specified secret. The JSON request string input and
response output are shown formatted with white space and line breaks
for better readability. Submit your input as a single line JSON string.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:GetResourcePolicy

=back

B<Related operations>

=over

=item *

To attach a resource policy to a secret, use PutResourcePolicy.

=item *

To delete the resource-based policy that's attached to a secret, use
DeleteResourcePolicy.

=item *

To list all of the currently available secrets, use ListSecrets.

=back



=head2 GetSecretValue

=over

=item SecretId => Str

=item [VersionId => Str]

=item [VersionStage => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::GetSecretValue>

Returns: a L<Paws::SecretsManager::GetSecretValueResponse> instance

Retrieves the contents of the encrypted fields C<SecretString> or
C<SecretBinary> from the specified version of a secret, whichever
contains content.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:GetSecretValue

=item *

kms:Decrypt - required only if you use a customer-managed AWS KMS key
to encrypt the secret. You do not need this permission to use the
account's default AWS managed CMK for Secrets Manager.

=back

B<Related operations>

=over

=item *

To create a new version of the secret with different encrypted
information, use PutSecretValue.

=item *

To retrieve the non-encrypted details for the secret, use
DescribeSecret.

=back



=head2 ListSecrets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::ListSecrets>

Returns: a L<Paws::SecretsManager::ListSecretsResponse> instance

Lists all of the secrets that are stored by Secrets Manager in the AWS
account. To list the versions currently stored for a specific secret,
use ListSecretVersionIds. The encrypted fields C<SecretString> and
C<SecretBinary> are not included in the output. To get that
information, call the GetSecretValue operation.

Always check the C<NextToken> response parameter when calling any of
the C<List*> operations. These operations can occasionally return an
empty or shorter than expected list of results even when there are more
results available. When this happens, the C<NextToken> response
parameter contains a value to pass to the next call to the same API to
request the next part of the list.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:ListSecrets

=back

B<Related operations>

=over

=item *

To list the versions attached to a secret, use ListSecretVersionIds.

=back



=head2 ListSecretVersionIds

=over

=item SecretId => Str

=item [IncludeDeprecated => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::ListSecretVersionIds>

Returns: a L<Paws::SecretsManager::ListSecretVersionIdsResponse> instance

Lists all of the versions attached to the specified secret. The output
does not include the C<SecretString> or C<SecretBinary> fields. By
default, the list includes only versions that have at least one staging
label in C<VersionStage> attached.

Always check the C<NextToken> response parameter when calling any of
the C<List*> operations. These operations can occasionally return an
empty or shorter than expected list of results even when there are more
results available. When this happens, the C<NextToken> response
parameter contains a value to pass to the next call to the same API to
request the next part of the list.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:ListSecretVersionIds

=back

B<Related operations>

=over

=item *

To list the secrets in an account, use ListSecrets.

=back



=head2 PutResourcePolicy

=over

=item ResourcePolicy => Str

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::PutResourcePolicy>

Returns: a L<Paws::SecretsManager::PutResourcePolicyResponse> instance

Attaches the contents of the specified resource-based permission policy
to a secret. A resource-based policy is optional. Alternatively, you
can use IAM identity-based policies that specify the secret's Amazon
Resource Name (ARN) in the policy statement's C<Resources> element. You
can also use a combination of both identity-based and resource-based
policies. The affected users and roles receive the permissions that are
permitted by all of the relevant policies. For more information, see
Using Resource-Based Policies for AWS Secrets Manager
(http://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html).
For the complete description of the AWS policy syntax and grammar, see
IAM JSON Policy Reference
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html)
in the I<IAM User Guide>.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:PutResourcePolicy

=back

B<Related operations>

=over

=item *

To retrieve the resource policy that's attached to a secret, use
GetResourcePolicy.

=item *

To delete the resource-based policy that's attached to a secret, use
DeleteResourcePolicy.

=item *

To list all of the currently available secrets, use ListSecrets.

=back



=head2 PutSecretValue

=over

=item SecretId => Str

=item [ClientRequestToken => Str]

=item [SecretBinary => Str]

=item [SecretString => Str]

=item [VersionStages => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecretsManager::PutSecretValue>

Returns: a L<Paws::SecretsManager::PutSecretValueResponse> instance

Stores a new encrypted secret value in the specified secret. To do
this, the operation creates a new version and attaches it to the
secret. The version can contain a new C<SecretString> value or a new
C<SecretBinary> value. You can also specify the staging labels that are
initially attached to the new version.

The Secrets Manager console uses only the C<SecretString> field. To add
binary data to a secret with the C<SecretBinary> field you must use the
AWS CLI or one of the AWS SDKs.

=over

=item *

If this operation creates the first version for the secret then Secrets
Manager automatically attaches the staging label C<AWSCURRENT> to the
new version.

=item *

If another version of this secret already exists, then this operation
does not automatically move any staging labels other than those that
you explicitly specify in the C<VersionStages> parameter.

=item *

If this operation moves the staging label C<AWSCURRENT> from another
version to this version (because you included it in the
C<StagingLabels> parameter) then Secrets Manager also automatically
moves the staging label C<AWSPREVIOUS> to the version that
C<AWSCURRENT> was removed from.

=item *

This operation is idempotent. If a version with a C<VersionId> with the
same value as the C<ClientRequestToken> parameter already exists and
you specify the same secret data, the operation succeeds but does
nothing. However, if the secret data is different, then the operation
fails because you cannot modify an existing version; you can only
create new ones.

=back

=over

=item *

If you call an operation that needs to encrypt or decrypt the
C<SecretString> or C<SecretBinary> for a secret in the same account as
the calling user and that secret doesn't specify a AWS KMS encryption
key, Secrets Manager uses the account's default AWS managed customer
master key (CMK) with the alias C<aws/secretsmanager>. If this key
doesn't already exist in your account then Secrets Manager creates it
for you automatically. All users and roles in the same AWS account
automatically have access to use the default CMK. Note that if an
Secrets Manager API call results in AWS having to create the account's
AWS-managed CMK, it can result in a one-time significant delay in
returning the result.

=item *

If the secret is in a different AWS account from the credentials
calling an API that requires encryption or decryption of the secret
value then you must create and use a custom AWS KMS CMK because you
can't access the default CMK for the account using credentials from a
different AWS account. Store the ARN of the CMK in the secret when you
create the secret or when you update it by including it in the
C<KMSKeyId>. If you call an API that must encrypt or decrypt
C<SecretString> or C<SecretBinary> using credentials from a different
account then the AWS KMS key policy must grant cross-account access to
that other account's user or role for both the kms:GenerateDataKey and
kms:Decrypt operations.

=back

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:PutSecretValue

=item *

kms:GenerateDataKey - needed only if you use a customer-managed AWS KMS
key to encrypt the secret. You do not need this permission to use the
account's default AWS managed CMK for Secrets Manager.

=back

B<Related operations>

=over

=item *

To retrieve the encrypted value you store in the version of a secret,
use GetSecretValue.

=item *

To create a secret, use CreateSecret.

=item *

To get the details for a secret, use DescribeSecret.

=item *

To list the versions attached to a secret, use ListSecretVersionIds.

=back



=head2 RestoreSecret

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::RestoreSecret>

Returns: a L<Paws::SecretsManager::RestoreSecretResponse> instance

Cancels the scheduled deletion of a secret by removing the
C<DeletedDate> time stamp. This makes the secret accessible to query
once again.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:RestoreSecret

=back

B<Related operations>

=over

=item *

To delete a secret, use DeleteSecret.

=back



=head2 RotateSecret

=over

=item SecretId => Str

=item [ClientRequestToken => Str]

=item [RotationLambdaARN => Str]

=item [RotationRules => L<Paws::SecretsManager::RotationRulesType>]


=back

Each argument is described in detail in: L<Paws::SecretsManager::RotateSecret>

Returns: a L<Paws::SecretsManager::RotateSecretResponse> instance

Configures and starts the asynchronous process of rotating this secret.
If you include the configuration parameters, the operation sets those
values for the secret and then immediately starts a rotation. If you do
not include the configuration parameters, the operation starts a
rotation with the values already stored in the secret. After the
rotation completes, the protected service and its clients all use the
new version of the secret.

This required configuration information includes the ARN of an AWS
Lambda function and the time between scheduled rotations. The Lambda
rotation function creates a new version of the secret and creates or
updates the credentials on the protected service to match. After
testing the new credentials, the function marks the new secret with the
staging label C<AWSCURRENT> so that your clients all immediately begin
to use the new version. For more information about rotating secrets and
how to configure a Lambda function to rotate the secrets for your
protected service, see Rotating Secrets in AWS Secrets Manager
(http://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html)
in the I<AWS Secrets Manager User Guide>.

Secrets Manager schedules the next rotation when the previous one is
complete. Secrets Manager schedules the date by adding the rotation
interval (number of days) to the actual date of the last rotation. The
service chooses the hour within that 24-hour date window randomly. The
minute is also chosen somewhat randomly, but weighted towards the top
of the hour and influenced by a variety of factors that help distribute
load.

The rotation function must end with the versions of the secret in one
of two states:

=over

=item *

The C<AWSPENDING> and C<AWSCURRENT> staging labels are attached to the
same version of the secret, or

=item *

The C<AWSPENDING> staging label is not attached to any version of the
secret.

=back

If instead the C<AWSPENDING> staging label is present but is not
attached to the same version as C<AWSCURRENT> then any later invocation
of C<RotateSecret> assumes that a previous rotation request is still in
progress and returns an error.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:RotateSecret

=item *

lambda:InvokeFunction (on the function specified in the secret's
metadata)

=back

B<Related operations>

=over

=item *

To list the secrets in your account, use ListSecrets.

=item *

To get the details for a version of a secret, use DescribeSecret.

=item *

To create a new version of a secret, use CreateSecret.

=item *

To attach staging labels to or remove staging labels from a version of
a secret, use UpdateSecretVersionStage.

=back



=head2 TagResource

=over

=item SecretId => Str

=item Tags => ArrayRef[L<Paws::SecretsManager::Tag>]


=back

Each argument is described in detail in: L<Paws::SecretsManager::TagResource>

Returns: nothing

Attaches one or more tags, each consisting of a key name and a value,
to the specified secret. Tags are part of the secret's overall
metadata, and are not associated with any specific version of the
secret. This operation only appends tags to the existing list of tags.
To remove tags, you must use UntagResource.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per secretE<mdash>50

=item *

Maximum key lengthE<mdash>127 Unicode characters in UTF-8

=item *

Maximum value lengthE<mdash>255 Unicode characters in UTF-8

=item *

Tag keys and values are case sensitive.

=item *

Do not use the C<aws:> prefix in your tag names or values because it is
reserved for AWS use. You can't edit or delete tag names or values with
this prefix. Tags with this prefix do not count against your tags per
secret limit.

=item *

If your tagging schema will be used across multiple services and
resources, remember that other services might have restrictions on
allowed characters. Generally allowed characters are: letters, spaces,
and numbers representable in UTF-8, plus the following special
characters: + - = . _ : / @.

=back

If you use tags as part of your security strategy, then adding or
removing a tag can change permissions. If successfully completing this
operation would result in you losing your permissions for this secret,
then the operation is blocked and returns an Access Denied error.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:TagResource

=back

B<Related operations>

=over

=item *

To remove one or more tags from the collection attached to a secret,
use UntagResource.

=item *

To view the list of tags attached to a secret, use DescribeSecret.

=back



=head2 UntagResource

=over

=item SecretId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecretsManager::UntagResource>

Returns: nothing

Removes one or more tags from the specified secret.

This operation is idempotent. If a requested tag is not attached to the
secret, no error is returned and the secret metadata is unchanged.

If you use tags as part of your security strategy, then removing a tag
can change permissions. If successfully completing this operation would
result in you losing your permissions for this secret, then the
operation is blocked and returns an Access Denied error.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:UntagResource

=back

B<Related operations>

=over

=item *

To add one or more tags to the collection attached to a secret, use
TagResource.

=item *

To view the list of tags attached to a secret, use DescribeSecret.

=back



=head2 UpdateSecret

=over

=item SecretId => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [SecretBinary => Str]

=item [SecretString => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::UpdateSecret>

Returns: a L<Paws::SecretsManager::UpdateSecretResponse> instance

Modifies many of the details of the specified secret. If you include a
C<ClientRequestToken> and I<either> C<SecretString> or C<SecretBinary>
then it also creates a new version attached to the secret.

To modify the rotation configuration of a secret, use RotateSecret
instead.

The Secrets Manager console uses only the C<SecretString> parameter and
therefore limits you to encrypting and storing only a text string. To
encrypt and store binary data as part of the version of a secret, you
must use either the AWS CLI or one of the AWS SDKs.

=over

=item *

If a version with a C<VersionId> with the same value as the
C<ClientRequestToken> parameter already exists, the operation results
in an error. You cannot modify an existing version, you can only create
a new version.

=item *

If you include C<SecretString> or C<SecretBinary> to create a new
secret version, Secrets Manager automatically attaches the staging
label C<AWSCURRENT> to the new version.

=back

=over

=item *

If you call an operation that needs to encrypt or decrypt the
C<SecretString> or C<SecretBinary> for a secret in the same account as
the calling user and that secret doesn't specify a AWS KMS encryption
key, Secrets Manager uses the account's default AWS managed customer
master key (CMK) with the alias C<aws/secretsmanager>. If this key
doesn't already exist in your account then Secrets Manager creates it
for you automatically. All users and roles in the same AWS account
automatically have access to use the default CMK. Note that if an
Secrets Manager API call results in AWS having to create the account's
AWS-managed CMK, it can result in a one-time significant delay in
returning the result.

=item *

If the secret is in a different AWS account from the credentials
calling an API that requires encryption or decryption of the secret
value then you must create and use a custom AWS KMS CMK because you
can't access the default CMK for the account using credentials from a
different AWS account. Store the ARN of the CMK in the secret when you
create the secret or when you update it by including it in the
C<KMSKeyId>. If you call an API that must encrypt or decrypt
C<SecretString> or C<SecretBinary> using credentials from a different
account then the AWS KMS key policy must grant cross-account access to
that other account's user or role for both the kms:GenerateDataKey and
kms:Decrypt operations.

=back

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:UpdateSecret

=item *

kms:GenerateDataKey - needed only if you use a custom AWS KMS key to
encrypt the secret. You do not need this permission to use the
account's AWS managed CMK for Secrets Manager.

=item *

kms:Decrypt - needed only if you use a custom AWS KMS key to encrypt
the secret. You do not need this permission to use the account's AWS
managed CMK for Secrets Manager.

=back

B<Related operations>

=over

=item *

To create a new secret, use CreateSecret.

=item *

To add only a new version to an existing secret, use PutSecretValue.

=item *

To get the details for a secret, use DescribeSecret.

=item *

To list the versions contained in a secret, use ListSecretVersionIds.

=back



=head2 UpdateSecretVersionStage

=over

=item SecretId => Str

=item VersionStage => Str

=item [MoveToVersionId => Str]

=item [RemoveFromVersionId => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::UpdateSecretVersionStage>

Returns: a L<Paws::SecretsManager::UpdateSecretVersionStageResponse> instance

Modifies the staging labels attached to a version of a secret. Staging
labels are used to track a version as it progresses through the secret
rotation process. You can attach a staging label to only one version of
a secret at a time. If a staging label to be added is already attached
to another version, then it is moved--removed from the other version
first and then attached to this one. For more information about staging
labels, see Staging Labels
(http://docs.aws.amazon.com/secretsmanager/latest/userguide/terms-concepts.html#term_staging-label)
in the I<AWS Secrets Manager User Guide>.

The staging labels that you specify in the C<VersionStage> parameter
are added to the existing list of staging labels--they don't replace
it.

You can move the C<AWSCURRENT> staging label to this version by
including it in this call.

Whenever you move C<AWSCURRENT>, Secrets Manager automatically moves
the label C<AWSPREVIOUS> to the version that C<AWSCURRENT> was removed
from.

If this action results in the last label being removed from a version,
then the version is considered to be 'deprecated' and can be deleted by
Secrets Manager.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

secretsmanager:UpdateSecretVersionStage

=back

B<Related operations>

=over

=item *

To get the list of staging labels that are currently associated with a
version of a secret, use C< DescribeSecret > and examine the
C<SecretVersionsToStages> response value.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllSecrets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSecrets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecretList, passing the object as the first parameter, and the string 'SecretList' as the second parameter 

If not, it will return a a L<Paws::SecretsManager::ListSecretsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

