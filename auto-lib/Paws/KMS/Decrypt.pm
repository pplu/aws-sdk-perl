
package Paws::KMS::Decrypt;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Decrypt');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::DecryptResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::Decrypt - Arguments for method Decrypt on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Decrypt on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method Decrypt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Decrypt.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
 # To decrypt data
 # The following example decrypts data that was encrypted with a customer master
 # key (CMK) in AWS KMS.
    my $DecryptResponse = $kms->Decrypt( 'CiphertextBlob' => '<binary data>' );

    # Results:
    my $KeyId     = $DecryptResponse->KeyId;
    my $Plaintext = $DecryptResponse->Plaintext;

    # Returns a L<Paws::KMS::DecryptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/Decrypt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CiphertextBlob => Str

Ciphertext to be decrypted. The blob includes metadata.



=head2 EncryptionAlgorithm => Str

Specifies the encryption algorithm that will be used to decrypt the
ciphertext. Specify the same algorithm that was used to encrypt the
data. If you specify a different algorithm, the C<Decrypt> operation
fails.

This parameter is required only when the ciphertext was encrypted under
an asymmetric CMK. The default value, C<SYMMETRIC_DEFAULT>, represents
the only supported algorithm that is valid for symmetric CMKs.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">

=head2 EncryptionContext => L<Paws::KMS::EncryptionContextType>

Specifies the encryption context to use when decrypting the data. An
encryption context is valid only for cryptographic operations with a
symmetric CMK. The standard asymmetric encryption algorithms that AWS
KMS uses do not support an encryption context.

An I<encryption context> is a collection of non-secret key-value pairs
that represents additional authenticated data. When you use an
encryption context to encrypt data, you must specify the same (an exact
case-sensitive match) encryption context to decrypt the data. An
encryption context is optional when encrypting with a symmetric CMK,
but it is highly recommended.

For more information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<AWS Key Management Service Developer Guide>.



=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

For more information, see Grant Tokens
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.



=head2 KeyId => Str

Specifies the customer master key (CMK) that AWS KMS will use to
decrypt the ciphertext. Enter a key ID of the CMK that was used to
encrypt the ciphertext.

If you specify a C<KeyId> value, the C<Decrypt> operation succeeds only
if the specified CMK was used to encrypt the ciphertext.

This parameter is required only when the ciphertext was encrypted under
an asymmetric CMK. Otherwise, AWS KMS uses the metadata that it adds to
the ciphertext blob to determine which CMK was used to encrypt the
ciphertext. However, you can use this parameter to ensure that a
particular CMK (of any kind) is used to decrypt the ciphertext.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
name, or alias ARN. When using an alias name, prefix it with
C<"alias/">.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias ARN: C<arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
To get the alias name and alias ARN, use ListAliases.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Decrypt in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

