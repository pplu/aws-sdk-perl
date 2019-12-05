
package Paws::KMS::Sign;
  use Moose;
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has MessageType => (is => 'ro', isa => 'Str');
  has SigningAlgorithm => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Sign');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::SignResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::Sign - Arguments for method Sign on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Sign on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method Sign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Sign.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    my $SignResponse = $kms->Sign(
      KeyId            => 'MyKeyIdType',
      Message          => 'BlobPlaintextType',
      SigningAlgorithm => 'RSASSA_PSS_SHA_256',
      GrantTokens      => [
        'MyGrantTokenType', ...    # min: 1, max: 8192
      ],                           # OPTIONAL
      MessageType => 'RAW',        # OPTIONAL
    );

    # Results:
    my $KeyId            = $SignResponse->KeyId;
    my $Signature        = $SignResponse->Signature;
    my $SigningAlgorithm = $SignResponse->SigningAlgorithm;

    # Returns a L<Paws::KMS::SignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/Sign>

=head1 ATTRIBUTES


=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

For more information, see Grant Tokens
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.



=head2 B<REQUIRED> KeyId => Str

Identifies an asymmetric CMK. AWS KMS uses the private key in the
asymmetric CMK to sign the message. The C<KeyUsage> type of the CMK
must be C<SIGN_VERIFY>. To find the C<KeyUsage> of a CMK, use the
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



=head2 B<REQUIRED> Message => Str

Specifies the message or message digest to sign. Messages can be 0-4096
bytes. To sign a larger message, provide the message digest.

If you provide a message, AWS KMS generates a hash digest of the
message and then signs it.



=head2 MessageType => Str

Tells AWS KMS whether the value of the C<Message> parameter is a
message or message digest. To indicate a message, enter C<RAW>. To
indicate a message digest, enter C<DIGEST>.

Valid values are: C<"RAW">, C<"DIGEST">

=head2 B<REQUIRED> SigningAlgorithm => Str

Specifies the signing algorithm to use when signing the message.

Choose an algorithm that is compatible with the type and size of the
specified asymmetric CMK.

Valid values are: C<"RSASSA_PSS_SHA_256">, C<"RSASSA_PSS_SHA_384">, C<"RSASSA_PSS_SHA_512">, C<"RSASSA_PKCS1_V1_5_SHA_256">, C<"RSASSA_PKCS1_V1_5_SHA_384">, C<"RSASSA_PKCS1_V1_5_SHA_512">, C<"ECDSA_SHA_256">, C<"ECDSA_SHA_384">, C<"ECDSA_SHA_512">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Sign in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

