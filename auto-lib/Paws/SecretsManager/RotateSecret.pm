
package Paws::SecretsManager::RotateSecret;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has RotationLambdaARN => (is => 'ro', isa => 'Str');
  has RotationRules => (is => 'ro', isa => 'Paws::SecretsManager::RotationRulesType');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RotateSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::RotateSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::RotateSecret - Arguments for method RotateSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RotateSecret on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method RotateSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RotateSecret.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $RotateSecretResponse = $secretsmanager->RotateSecret(
      SecretId           => 'MySecretIdType',
      ClientRequestToken => 'MyClientRequestTokenType',    # OPTIONAL
      RotationLambdaARN  => 'MyRotationLambdaARNType',     # OPTIONAL
      RotationRules      => {
        AutomaticallyAfterDays => 1,    # min: 1, max: 1000; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ARN       = $RotateSecretResponse->ARN;
    my $Name      = $RotateSecretResponse->Name;
    my $VersionId = $RotateSecretResponse->VersionId;

    # Returns a L<Paws::SecretsManager::RotateSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/RotateSecret>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

(Optional) Specifies a unique identifier for the new version of the
secret that helps ensure idempotency.

If you use the AWS CLI or one of the AWS SDK to call this operation,
then you can leave this parameter empty. The CLI or SDK generates a
random UUID for you and includes that in the request for this
parameter. If you don't use the SDK and instead generate a raw HTTP
request to the Secrets Manager service endpoint, then you must generate
a C<ClientRequestToken> yourself for new versions and include that
value in the request.

You only need to specify your own value if you are implementing your
own retry logic and want to ensure that a given secret is not created
twice. We recommend that you generate a UUID-type
(https://wikipedia.org/wiki/Universally_unique_identifier) value to
ensure uniqueness within the specified secret.

Secrets Manager uses this value to prevent the accidental creation of
duplicate versions if there are failures and retries during the
function's processing.

=over

=item *

If the C<ClientRequestToken> value isn't already associated with a
version of the secret then a new version of the secret is created.

=item *

If a version with this value already exists and that version's
C<SecretString> and C<SecretBinary> values are the same as the request,
then the request is ignored (the operation is idempotent).

=item *

If a version with this value already exists and that version's
C<SecretString> and C<SecretBinary> values are different from the
request then an error occurs because you cannot modify an existing
secret value.

=back

This value becomes the C<SecretVersionId> of the new version.



=head2 RotationLambdaARN => Str

(Optional) Specifies the ARN of the Lambda function that can rotate the
secret.



=head2 RotationRules => L<Paws::SecretsManager::RotationRulesType>

A structure that defines the rotation configuration for this secret.



=head2 B<REQUIRED> SecretId => Str

Specifies the secret that you want to rotate. You can specify either
the Amazon Resource Name (ARN) or the friendly name of the secret.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RotateSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

