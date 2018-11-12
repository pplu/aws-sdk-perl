
package Paws::SecretsManager::PutSecretValue;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has SecretBinary => (is => 'ro', isa => 'Str');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);
  has SecretString => (is => 'ro', isa => 'Str');
  has VersionStages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSecretValue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::PutSecretValueResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::PutSecretValue - Arguments for method PutSecretValue on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSecretValue on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method PutSecretValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSecretValue.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $PutSecretValueResponse = $secretsmanager->PutSecretValue(
      SecretId           => 'MySecretIdType',
      ClientRequestToken => 'MyClientRequestTokenType',    # OPTIONAL
      SecretBinary       => 'BlobSecretBinaryType',        # OPTIONAL
      SecretString       => 'MySecretStringType',          # OPTIONAL
      VersionStages      => [
        'MySecretVersionStageType', ...                    # min: 1, max: 256
      ],                                                   # OPTIONAL
    );

    # Results:
    my $ARN           = $PutSecretValueResponse->ARN;
    my $Name          = $PutSecretValueResponse->Name;
    my $VersionId     = $PutSecretValueResponse->VersionId;
    my $VersionStages = $PutSecretValueResponse->VersionStages;

    # Returns a L<Paws::SecretsManager::PutSecretValueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/PutSecretValue>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

(Optional) Specifies a unique identifier for the new version of the
secret.

If you use the AWS CLI or one of the AWS SDK to call this operation,
then you can leave this parameter empty. The CLI or SDK generates a
random UUID for you and includes that in the request. If you don't use
the SDK and instead generate a raw HTTP request to the Secrets Manager
service endpoint, then you must generate a C<ClientRequestToken>
yourself for new versions and include that value in the request.

This value helps ensure idempotency. Secrets Manager uses this value to
prevent the accidental creation of duplicate versions if there are
failures and retries during the Lambda rotation function's processing.
We recommend that you generate a UUID-type
(https://wikipedia.org/wiki/Universally_unique_identifier) value to
ensure uniqueness within the specified secret.

=over

=item *

If the C<ClientRequestToken> value isn't already associated with a
version of the secret then a new version of the secret is created.

=item *

If a version with this value already exists and that version's
C<SecretString> or C<SecretBinary> values are the same as those in the
request then the request is ignored (the operation is idempotent).

=item *

If a version with this value already exists and that version's
C<SecretString> and C<SecretBinary> values are different from those in
the request then the request fails because you cannot modify an
existing secret version. You can only create new versions to store new
secret values.

=back

This value becomes the C<VersionId> of the new version.



=head2 SecretBinary => Str

(Optional) Specifies binary data that you want to encrypt and store in
the new version of the secret. To use this parameter in the
command-line tools, we recommend that you store your binary data in a
file and then use the appropriate technique for your tool to pass the
contents of the file as a parameter. Either C<SecretBinary> or
C<SecretString> must have a value, but not both. They cannot both be
empty.

This parameter is not accessible if the secret using the Secrets
Manager console.



=head2 B<REQUIRED> SecretId => Str

Specifies the secret to which you want to add a new version. You can
specify either the Amazon Resource Name (ARN) or the friendly name of
the secret. The secret must already exist.

If you specify an ARN, we generally recommend that you specify a
complete ARN. You can specify a partial ARN tooE<mdash>for example, if
you donE<rsquo>t include the final hyphen and six random characters
that Secrets Manager adds at the end of the ARN when you created the
secret. A partial ARN match can work as long as it uniquely matches
only one secret. However, if your secret has a name that ends in a
hyphen followed by six characters (before Secrets Manager adds the
hyphen and six characters to the ARN) and you try to use that as a
partial ARN, then those characters cause Secrets Manager to assume that
youE<rsquo>re specifying a complete ARN. This confusion can cause
unexpected results. To avoid this situation, we recommend that you
donE<rsquo>t create secret names that end with a hyphen followed by six
characters.



=head2 SecretString => Str

(Optional) Specifies text data that you want to encrypt and store in
this new version of the secret. Either C<SecretString> or
C<SecretBinary> must have a value, but not both. They cannot both be
empty.

If you create this secret by using the Secrets Manager console then
Secrets Manager puts the protected secret text in only the
C<SecretString> parameter. The Secrets Manager console stores the
information as a JSON structure of key/value pairs that the default
Lambda rotation function knows how to parse.

For storing multiple values, we recommend that you use a JSON text
string argument and specify key/value pairs. For information on how to
format a JSON parameter for the various command line tool environments,
see Using JSON for Parameters
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json)
in the I<AWS CLI User Guide>.

For example:

C<[{"username":"bob"},{"password":"abc123xyz456"}]>

If your command-line tool or SDK requires quotation marks around the
parameter, you should use single quotes to avoid confusion with the
double quotes required in the JSON text.



=head2 VersionStages => ArrayRef[Str|Undef]

(Optional) Specifies a list of staging labels that are attached to this
version of the secret. These staging labels are used to track the
versions through the rotation process by the Lambda rotation function.

A staging label must be unique to a single version of the secret. If
you specify a staging label that's already associated with a different
version of the same secret then that staging label is automatically
removed from the other version and attached to this version.

If you do not specify a value for C<VersionStages> then Secrets Manager
automatically moves the staging label C<AWSCURRENT> to this new
version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSecretValue in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

