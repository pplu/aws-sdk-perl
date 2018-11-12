
package Paws::SecretsManager::CreateSecret;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SecretBinary => (is => 'ro', isa => 'Str');
  has SecretString => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::CreateSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::CreateSecret - Arguments for method CreateSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSecret on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method CreateSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSecret.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $CreateSecretResponse = $secretsmanager->CreateSecret(
      Name               => 'MyNameType',
      ClientRequestToken => 'MyClientRequestTokenType',    # OPTIONAL
      Description        => 'MyDescriptionType',           # OPTIONAL
      KmsKeyId           => 'MyKmsKeyIdType',              # OPTIONAL
      SecretBinary       => 'BlobSecretBinaryType',        # OPTIONAL
      SecretString       => 'MySecretStringType',          # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKeyType',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValueType',    # max: 256; OPTIONAL
        },
        ...
      ],                                # OPTIONAL
    );

    # Results:
    my $ARN       = $CreateSecretResponse->ARN;
    my $Name      = $CreateSecretResponse->Name;
    my $VersionId = $CreateSecretResponse->VersionId;

    # Returns a L<Paws::SecretsManager::CreateSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/CreateSecret>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

(Optional) If you include C<SecretString> or C<SecretBinary>, then an
initial version is created as part of the secret, and this parameter
specifies a unique identifier for the new version.

If you use the AWS CLI or one of the AWS SDK to call this operation,
then you can leave this parameter empty. The CLI or SDK generates a
random UUID for you and includes it as the value for this parameter in
the request. If you don't use the SDK and instead generate a raw HTTP
request to the Secrets Manager service endpoint, then you must generate
a C<ClientRequestToken> yourself for the new version and include that
value in the request.

This value helps ensure idempotency. Secrets Manager uses this value to
prevent the accidental creation of duplicate versions if there are
failures and retries during a rotation. We recommend that you generate
a UUID-type (https://wikipedia.org/wiki/Universally_unique_identifier)
value to ensure uniqueness of your versions within the specified
secret.

=over

=item *

If the C<ClientRequestToken> value isn't already associated with a
version of the secret then a new version of the secret is created.

=item *

If a version with this value already exists and that version's
C<SecretString> and C<SecretBinary> values are the same as those in the
request, then the request is ignored (the operation is idempotent).

=item *

If a version with this value already exists and that version's
C<SecretString> and C<SecretBinary> values are different from those in
the request then the request fails because you cannot modify an
existing version. Instead, use PutSecretValue to create a new version.

=back

This value becomes the C<VersionId> of the new version.



=head2 Description => Str

(Optional) Specifies a user-provided description of the secret.



=head2 KmsKeyId => Str

(Optional) Specifies the ARN, Key ID, or alias of the AWS KMS customer
master key (CMK) to be used to encrypt the C<SecretString> or
C<SecretBinary> values in the versions stored in this secret.

You can specify any of the supported ways to identify a AWS KMS key ID.
If you need to reference a CMK in a different account, you can use only
the key ARN or the alias ARN.

If you don't specify this value, then Secrets Manager defaults to using
the AWS account's default CMK (the one named C<aws/secretsmanager>). If
a AWS KMS CMK with that name doesn't yet exist, then Secrets Manager
creates it for you automatically the first time it needs to encrypt a
version's C<SecretString> or C<SecretBinary> fields.

You can use the account's default CMK to encrypt and decrypt only if
you call this operation using credentials from the same account that
owns the secret. If the secret is in a different account, then you must
create a custom CMK and specify the ARN in this field.



=head2 B<REQUIRED> Name => Str

Specifies the friendly name of the new secret.

The secret name must be ASCII letters, digits, or the following
characters : /_+=.@-

Don't end your secret name with a hyphen followed by six characters. If
you do so, you risk confusion and unexpected results when searching for
a secret by partial ARN. This is because Secrets Manager automatically
adds a hyphen and six random characters at the end of the ARN.



=head2 SecretBinary => Str

(Optional) Specifies binary data that you want to encrypt and store in
the new version of the secret. To use this parameter in the
command-line tools, we recommend that you store your binary data in a
file and then use the appropriate technique for your tool to pass the
contents of the file as a parameter.

Either C<SecretString> or C<SecretBinary> must have a value, but not
both. They cannot both be empty.

This parameter is not available using the Secrets Manager console. It
can be accessed only by using the AWS CLI or one of the AWS SDKs.



=head2 SecretString => Str

(Optional) Specifies text data that you want to encrypt and store in
this new version of the secret.

Either C<SecretString> or C<SecretBinary> must have a value, but not
both. They cannot both be empty.

If you create a secret by using the Secrets Manager console then
Secrets Manager puts the protected secret text in only the
C<SecretString> parameter. The Secrets Manager console stores the
information as a JSON structure of key/value pairs that the Lambda
rotation function knows how to parse.

For storing multiple values, we recommend that you use a JSON text
string argument and specify key/value pairs. For information on how to
format a JSON parameter for the various command line tool environments,
see Using JSON for Parameters
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json)
in the I<AWS CLI User Guide>. For example:

C<[{"username":"bob"},{"password":"abc123xyz456"}]>

If your command-line tool or SDK requires quotation marks around the
parameter, you should use single quotes to avoid confusion with the
double quotes required in the JSON text.



=head2 Tags => ArrayRef[L<Paws::SecretsManager::Tag>]

(Optional) Specifies a list of user-defined tags that are attached to
the secret. Each tag is a "Key" and "Value" pair of strings. This
operation only appends tags to the existing list of tags. To remove
tags, you must use UntagResource.

=over

=item *

Secrets Manager tag key names are case sensitive. A tag with the key
"ABC" is a different tag from one with key "abc".

=item *

If you check tags in IAM policy C<Condition> elements as part of your
security strategy, then adding or removing a tag can change
permissions. If the successful completion of this operation would
result in you losing your permissions for this secret, then this
operation is blocked and returns an C<Access Denied> error.

=back

This parameter requires a JSON text string argument. For information on
how to format a JSON parameter for the various command line tool
environments, see Using JSON for Parameters
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json)
in the I<AWS CLI User Guide>. For example:

C<[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]>

If your command-line tool or SDK requires quotation marks around the
parameter, you should use single quotes to avoid confusion with the
double quotes required in the JSON text.

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

