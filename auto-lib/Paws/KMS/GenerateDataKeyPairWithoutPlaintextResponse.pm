
package Paws::KMS::GenerateDataKeyPairWithoutPlaintextResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has KeyPairSpec => (is => 'ro', isa => 'Str');
  has PrivateKeyCiphertextBlob => (is => 'ro', isa => 'Str');
  has PublicKey => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyPairWithoutPlaintextResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

Specifies the CMK that encrypted the private key in the data key pair.
You must specify a symmetric CMK. You cannot use an asymmetric CMK.

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


=head2 KeyPairSpec => Str

The type of data key pair that was generated.

Valid values are: C<"RSA_2048">, C<"RSA_3072">, C<"RSA_4096">, C<"ECC_NIST_P256">, C<"ECC_NIST_P384">, C<"ECC_NIST_P521">, C<"ECC_SECG_P256K1">
=head2 PrivateKeyCiphertextBlob => Str

The encrypted copy of the private key. When you use the HTTP API or the
AWS CLI, the value is Base64-encoded. Otherwise, it is not
Base64-encoded.


=head2 PublicKey => Str

The public key (in plaintext).


=head2 _request_id => Str


=cut

1;