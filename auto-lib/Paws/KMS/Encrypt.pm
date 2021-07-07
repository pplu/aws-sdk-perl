
package Paws::KMS::Encrypt;
  use Moose;
  has EncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Plaintext => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Encrypt');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::EncryptResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::Encrypt - Arguments for method Encrypt on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Encrypt on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method Encrypt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Encrypt.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To encrypt data
    # The following example encrypts data with the specified customer master key
    # (CMK).
    my $EncryptResponse = $kms->Encrypt(
      'KeyId'     => '1234abcd-12ab-34cd-56ef-1234567890ab',
      'Plaintext' => '<binary data>'
    );

    # Results:
    my $CiphertextBlob = $EncryptResponse->CiphertextBlob;
    my $KeyId          = $EncryptResponse->KeyId;

    # Returns a L<Paws::KMS::EncryptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/Encrypt>

=head1 ATTRIBUTES


=head2 EncryptionAlgorithm => Str

Specifies the encryption algorithm that AWS KMS will use to encrypt the
plaintext message. The algorithm must be compatible with the CMK that
you specify.

This parameter is required only for asymmetric CMKs. The default value,
C<SYMMETRIC_DEFAULT>, is the algorithm used for symmetric CMKs. If you
are using an asymmetric CMK, we recommend RSAES_OAEP_SHA_256.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">

=head2 EncryptionContext => L<Paws::KMS::EncryptionContextType>

Specifies the encryption context that will be used to encrypt the data.
An encryption context is valid only for cryptographic operations
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations)
with a symmetric CMK. The standard asymmetric encryption algorithms
that AWS KMS uses do not support an encryption context.

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

Use a grant token when your permission to call this operation comes
from a new grant that has not yet achieved I<eventual consistency>. For
more information, see Grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.



=head2 B<REQUIRED> KeyId => Str

Identifies the customer master key (CMK) to use in the encryption
operation.

To specify a CMK, use its key ID, key ARN, alias name, or alias ARN.
When using an alias name, prefix it with C<"alias/">. To specify a CMK
in a different AWS account, you must use the key ARN or alias ARN.

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



=head2 B<REQUIRED> Plaintext => Str

Data to be encrypted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Encrypt in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

