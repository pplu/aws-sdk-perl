
package Paws::SecretsManager::GetSecretValueResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SecretBinary => (is => 'ro', isa => 'Str');
  has SecretString => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
  has VersionStages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetSecretValueResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret.


=head2 CreatedDate => Str

The date and time that this version of the secret was created.


=head2 Name => Str

The friendly name of the secret.


=head2 SecretBinary => Str

The decrypted part of the protected secret information that was
originally provided as binary data in the form of a byte array. The
response parameter represents the binary data as a base64-encoded
(https://tools.ietf.org/html/rfc4648#section-4) string.

This parameter is not used if the secret is created by the Secrets
Manager console.

If you store custom information in this field of the secret, then you
must code your Lambda rotation function to parse and interpret whatever
you store in the C<SecretString> or C<SecretBinary> fields.


=head2 SecretString => Str

The decrypted part of the protected secret information that was
originally provided as a string.

If you create this secret by using the Secrets Manager console then
only the C<SecretString> parameter contains data. Secrets Manager
stores the information as a JSON structure of key/value pairs that the
Lambda rotation function knows how to parse.

If you store custom information in the secret by using the
CreateSecret, UpdateSecret, or PutSecretValue API operations instead of
the Secrets Manager console, or by using the B<Other secret type> in
the console, then you must code your Lambda rotation function to parse
and interpret those values.


=head2 VersionId => Str

The unique identifier of this version of the secret.


=head2 VersionStages => ArrayRef[Str|Undef]

A list of all of the staging labels currently attached to this version
of the secret.


=head2 _request_id => Str


=cut

1;