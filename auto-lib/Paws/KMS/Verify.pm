
package Paws::KMS::Verify;
  use Moose;
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has MessageType => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str', required => 1);
  has SigningAlgorithm => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Verify');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::VerifyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::Verify - Arguments for method Verify on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Verify on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method Verify.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Verify.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    my $VerifyResponse = $kms->Verify(
      KeyId            => 'MyKeyIdType',
      Message          => 'BlobPlaintextType',
      Signature        => 'BlobCiphertextType',
      SigningAlgorithm => 'RSASSA_PSS_SHA_256',
      GrantTokens      => [
        'MyGrantTokenType', ...    # min: 1, max: 8192
      ],    # OPTIONAL
      MessageType => 'RAW',    # OPTIONAL
    );

    # Results:
    my $KeyId            = $VerifyResponse->KeyId;
    my $SignatureValid   = $VerifyResponse->SignatureValid;
    my $SigningAlgorithm = $VerifyResponse->SigningAlgorithm;

    # Returns a L<Paws::KMS::VerifyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/Verify>

=head1 ATTRIBUTES


=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

For more information, see Grant Tokens
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.



=head2 B<REQUIRED> KeyId => Str

Identifies the asymmetric CMK that will be used to verify the
signature. This must be the same CMK that was used to generate the
signature. If you specify a different CMK, the signature verification
fails.

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



=head2 B<REQUIRED> Message => Str

Specifies the message that was signed. You can submit a raw message of
up to 4096 bytes, or a hash digest of the message. If you submit a
digest, use the C<MessageType> parameter with a value of C<DIGEST>.

If the message specified here is different from the message that was
signed, the signature verification fails. A message and its hash digest
are considered to be the same message.



=head2 MessageType => Str

Tells AWS KMS whether the value of the C<Message> parameter is a
message or message digest. The default value, RAW, indicates a message.
To indicate a message digest, enter C<DIGEST>.

Use the C<DIGEST> value only when the value of the C<Message> parameter
is a message digest. If you use the C<DIGEST> value with a raw message,
the security of the verification operation can be compromised.

Valid values are: C<"RAW">, C<"DIGEST">

=head2 B<REQUIRED> Signature => Str

The signature that the C<Sign> operation generated.



=head2 B<REQUIRED> SigningAlgorithm => Str

The signing algorithm that was used to sign the message. If you submit
a different algorithm, the signature verification fails.

Valid values are: C<"RSASSA_PSS_SHA_256">, C<"RSASSA_PSS_SHA_384">, C<"RSASSA_PSS_SHA_512">, C<"RSASSA_PKCS1_V1_5_SHA_256">, C<"RSASSA_PKCS1_V1_5_SHA_384">, C<"RSASSA_PKCS1_V1_5_SHA_512">, C<"ECDSA_SHA_256">, C<"ECDSA_SHA_384">, C<"ECDSA_SHA_512">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Verify in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

