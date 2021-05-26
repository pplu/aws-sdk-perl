
package Paws::KMS::ReEncrypt;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str', required => 1);
  has DestinationEncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has DestinationEncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has DestinationKeyId => (is => 'ro', isa => 'Str', required => 1);
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceEncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has SourceEncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has SourceKeyId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReEncrypt');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ReEncryptResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ReEncrypt - Arguments for method ReEncrypt on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReEncrypt on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ReEncrypt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReEncrypt.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To reencrypt data
    # The following example reencrypts data with the specified CMK.
    my $ReEncryptResponse = $kms->ReEncrypt(
      'CiphertextBlob'   => '<binary data>',
      'DestinationKeyId' => '0987dcba-09fe-87dc-65ba-ab0987654321'
    );

    # Results:
    my $CiphertextBlob = $ReEncryptResponse->CiphertextBlob;
    my $KeyId          = $ReEncryptResponse->KeyId;
    my $SourceKeyId    = $ReEncryptResponse->SourceKeyId;

    # Returns a L<Paws::KMS::ReEncryptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ReEncrypt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CiphertextBlob => Str

Ciphertext of the data to reencrypt.



=head2 DestinationEncryptionAlgorithm => Str

Specifies the encryption algorithm that AWS KMS will use to reecrypt
the data after it has decrypted it. The default value,
C<SYMMETRIC_DEFAULT>, represents the encryption algorithm used for
symmetric CMKs.

This parameter is required only when the destination CMK is an
asymmetric CMK.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">

=head2 DestinationEncryptionContext => L<Paws::KMS::EncryptionContextType>

Specifies that encryption context to use when the reencrypting the
data.

A destination encryption context is valid only when the destination CMK
is a symmetric CMK. The standard ciphertext format for asymmetric CMKs
does not include fields for metadata.

An I<encryption context> is a collection of non-secret key-value pairs
that represents additional authenticated data. When you use an
encryption context to encrypt data, you must specify the same (an exact
case-sensitive match) encryption context to decrypt the data. An
encryption context is optional when encrypting with a symmetric CMK,
but it is highly recommended.

For more information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<AWS Key Management Service Developer Guide>.



=head2 B<REQUIRED> DestinationKeyId => Str

A unique identifier for the CMK that is used to reencrypt the data.
Specify a symmetric or asymmetric CMK with a C<KeyUsage> value of
C<ENCRYPT_DECRYPT>. To find the C<KeyUsage> value of a CMK, use the
DescribeKey operation.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
name, or alias ARN. When using an alias name, prefix it with
C<"alias/">. To specify a CMK in a different AWS account, you must use
the key ARN or alias ARN.

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



=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

For more information, see Grant Tokens
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.



=head2 SourceEncryptionAlgorithm => Str

Specifies the encryption algorithm that AWS KMS will use to decrypt the
ciphertext before it is reencrypted. The default value,
C<SYMMETRIC_DEFAULT>, represents the algorithm used for symmetric CMKs.

Specify the same algorithm that was used to encrypt the ciphertext. If
you specify a different algorithm, the decrypt attempt fails.

This parameter is required only when the ciphertext was encrypted under
an asymmetric CMK.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">

=head2 SourceEncryptionContext => L<Paws::KMS::EncryptionContextType>

Specifies the encryption context to use to decrypt the ciphertext.
Enter the same encryption context that was used to encrypt the
ciphertext.

An I<encryption context> is a collection of non-secret key-value pairs
that represents additional authenticated data. When you use an
encryption context to encrypt data, you must specify the same (an exact
case-sensitive match) encryption context to decrypt the data. An
encryption context is optional when encrypting with a symmetric CMK,
but it is highly recommended.

For more information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<AWS Key Management Service Developer Guide>.



=head2 SourceKeyId => Str

A unique identifier for the CMK that is used to decrypt the ciphertext
before it reencrypts it using the destination CMK.

This parameter is required only when the ciphertext was encrypted under
an asymmetric CMK. Otherwise, AWS KMS uses the metadata that it adds to
the ciphertext blob to determine which CMK was used to encrypt the
ciphertext. However, you can use this parameter to ensure that a
particular CMK (of any kind) is used to decrypt the ciphertext before
it is reencrypted.

If you specify a C<KeyId> value, the decrypt part of the C<ReEncrypt>
operation succeeds only if the specified CMK was used to encrypt the
ciphertext.

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

This class forms part of L<Paws>, documenting arguments for method ReEncrypt in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

