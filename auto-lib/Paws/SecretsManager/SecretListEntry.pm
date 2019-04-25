package Paws::SecretsManager::SecretListEntry;
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
  has SecretVersionsToStages => (is => 'ro', isa => 'Paws::SecretsManager::SecretVersionsToStagesMapType');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::SecretListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecretsManager::SecretListEntry object:

  $service_obj->Method(Att1 => { ARN => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecretsManager::SecretListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

A structure that contains the details about a secret. It does not
include the encrypted C<SecretString> and C<SecretBinary> values. To
get those values, use the GetSecretValue operation.

=head1 ATTRIBUTES


=head2 ARN => Str

  The Amazon Resource Name (ARN) of the secret.

For more information about ARNs in Secrets Manager, see Policy
Resources
(http://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#iam-resources)
in the I<AWS Secrets Manager User Guide>.


=head2 DeletedDate => Str

  The date and time on which this secret was deleted. Not present on
active secrets. The secret can be recovered until the number of days in
the recovery window has passed, as specified in the
C<RecoveryWindowInDays> parameter of the DeleteSecret operation.


=head2 Description => Str

  The user-provided description of the secret.


=head2 KmsKeyId => Str

  The ARN or alias of the AWS KMS customer master key (CMK) that's used
to encrypt the C<SecretString> and C<SecretBinary> fields in each
version of the secret. If you don't provide a key, then Secrets Manager
defaults to encrypting the secret fields with the default KMS CMK (the
one named C<awssecretsmanager>) for this account.


=head2 LastAccessedDate => Str

  The last date that this secret was accessed. This value is truncated to
midnight of the date and therefore shows only the date, not the time.


=head2 LastChangedDate => Str

  The last date and time that this secret was modified in any way.


=head2 LastRotatedDate => Str

  The last date and time that the rotation process for this secret was
invoked.


=head2 Name => Str

  The friendly name of the secret. You can use forward slashes in the
name to represent a path hierarchy. For example,
C</prod/databases/dbserver1> could represent the secret for a server
named C<dbserver1> in the folder C<databases> in the folder C<prod>.


=head2 RotationEnabled => Bool

  Indicated whether automatic, scheduled rotation is enabled for this
secret.


=head2 RotationLambdaARN => Str

  The ARN of an AWS Lambda function that's invoked by Secrets Manager to
rotate and expire the secret either automatically per the schedule or
manually by a call to RotateSecret.


=head2 RotationRules => L<Paws::SecretsManager::RotationRulesType>

  A structure that defines the rotation configuration for the secret.


=head2 SecretVersionsToStages => L<Paws::SecretsManager::SecretVersionsToStagesMapType>

  A list of all of the currently assigned C<SecretVersionStage> staging
labels and the C<SecretVersionId> that each is attached to. Staging
labels are used to keep track of the different versions during the
rotation process.

A version that does not have any C<SecretVersionStage> is considered
deprecated and subject to deletion. Such versions are not included in
this list.


=head2 Tags => ArrayRef[L<Paws::SecretsManager::Tag>]

  The list of user-defined tags that are associated with the secret. To
add tags to a secret, use TagResource. To remove tags, use
UntagResource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

