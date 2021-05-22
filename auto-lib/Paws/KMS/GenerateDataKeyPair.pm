
package Paws::KMS::GenerateDataKeyPair;
  use Moose;
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeyPairSpec => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateDataKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GenerateDataKeyPairResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyPair - Arguments for method GenerateDataKeyPair on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateDataKeyPair on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GenerateDataKeyPair.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateDataKeyPair.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    my $GenerateDataKeyPairResponse = $kms->GenerateDataKeyPair(
      KeyId       => 'MyKeyIdType',
      KeyPairSpec => 'RSA_2048',
      EncryptionContext =>
        { 'MyEncryptionContextKey' => 'MyEncryptionContextValue', },  # OPTIONAL
      GrantTokens => [
        'MyGrantTokenType', ...    # min: 1, max: 8192
      ],                           # OPTIONAL
    );

    # Results:
    my $KeyId       = $GenerateDataKeyPairResponse->KeyId;
    my $KeyPairSpec = $GenerateDataKeyPairResponse->KeyPairSpec;
    my $PrivateKeyCiphertextBlob =
      $GenerateDataKeyPairResponse->PrivateKeyCiphertextBlob;
    my $PrivateKeyPlaintext = $GenerateDataKeyPairResponse->PrivateKeyPlaintext;
    my $PublicKey           = $GenerateDataKeyPairResponse->PublicKey;

    # Returns a L<Paws::KMS::GenerateDataKeyPairResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GenerateDataKeyPair>

=head1 ATTRIBUTES


=head2 EncryptionContext => L<Paws::KMS::EncryptionContextType>

Specifies the encryption context that will be used when encrypting the
private key in the data key pair.

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



=head2 B<REQUIRED> KeyId => Str

Specifies the symmetric CMK that encrypts the private key in the data
key pair. You cannot specify an asymmetric CMK or a CMK in a custom key
store. To get the type and origin of your CMK, use the DescribeKey
operation.

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



=head2 B<REQUIRED> KeyPairSpec => Str

Determines the type of data key pair that is generated.

The AWS KMS rule that restricts the use of asymmetric RSA CMKs to
encrypt and decrypt or to sign and verify (but not both), and the rule
that permits you to use ECC CMKs only to sign and verify, are not
effective outside of AWS KMS.

Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateDataKeyPair in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

