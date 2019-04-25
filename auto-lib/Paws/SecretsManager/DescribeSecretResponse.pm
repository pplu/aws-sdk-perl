
package Paws::SecretsManager::DescribeSecretResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has DeletedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LastAccessedDate => (is => 'ro', isa => 'Str');
  has LastChangedDate => (is => 'ro', isa => 'Str');
  has LastRotatedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RotationEnabled => (is => 'ro', isa => 'Bool');
  has RotationLambdaARN => (is => 'ro', isa => 'Str');
  has RotationRules => (is => 'ro', isa => 'Paws::SecretsManager::RotationRulesType');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::Tag]');
  has VersionIdsToStages => (is => 'ro', isa => 'Paws::SecretsManager::SecretVersionsToStagesMapType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::DescribeSecretResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret.


=head2 DeletedDate => Str

This value exists if the secret is scheduled for deletion. Some time
after the specified date and time, Secrets Manager deletes the secret
and all of its versions.

If a secret is scheduled for deletion, then its details, including the
encrypted secret information, is not accessible. To cancel a scheduled
deletion and restore access, use RestoreSecret.


=head2 Description => Str

The user-provided description of the secret.


=head2 KmsKeyId => Str

The ARN or alias of the AWS KMS customer master key (CMK) that's used
to encrypt the C<SecretString> or C<SecretBinary> fields in each
version of the secret. If you don't provide a key, then Secrets Manager
defaults to encrypting the secret fields with the default AWS KMS CMK
(the one named C<awssecretsmanager>) for this account.


=head2 LastAccessedDate => Str

The last date that this secret was accessed. This value is truncated to
midnight of the date and therefore shows only the date, not the time.


=head2 LastChangedDate => Str

The last date and time that this secret was modified in any way.


=head2 LastRotatedDate => Str

The most recent date and time that the Secrets Manager rotation process
was successfully completed. This value is null if the secret has never
rotated.


=head2 Name => Str

The user-provided friendly name of the secret.


=head2 RotationEnabled => Bool

Specifies whether automatic rotation is enabled for this secret.

To enable rotation, use RotateSecret with
C<AutomaticallyRotateAfterDays> set to a value greater than 0. To
disable rotation, use CancelRotateSecret.


=head2 RotationLambdaARN => Str

The ARN of a Lambda function that's invoked by Secrets Manager to
rotate the secret either automatically per the schedule or manually by
a call to C<RotateSecret>.


=head2 RotationRules => L<Paws::SecretsManager::RotationRulesType>

A structure that contains the rotation configuration for this secret.


=head2 Tags => ArrayRef[L<Paws::SecretsManager::Tag>]

The list of user-defined tags that are associated with the secret. To
add tags to a secret, use TagResource. To remove tags, use
UntagResource.


=head2 VersionIdsToStages => L<Paws::SecretsManager::SecretVersionsToStagesMapType>

A list of all of the currently assigned C<VersionStage> staging labels
and the C<VersionId> that each is attached to. Staging labels are used
to keep track of the different versions during the rotation process.

A version that does not have any staging labels attached is considered
deprecated and subject to deletion. Such versions are not included in
this list.


=head2 _request_id => Str


=cut

1;