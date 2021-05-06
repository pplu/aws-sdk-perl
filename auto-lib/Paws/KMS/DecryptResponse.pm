
package Paws::KMS::DecryptResponse;
  use Moose;
  has EncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has Plaintext => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DecryptResponse

=head1 ATTRIBUTES


=head2 EncryptionAlgorithm => Str

The encryption algorithm that was used to decrypt the ciphertext.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">
=head2 KeyId => Str

The ARN of the customer master key that was used to perform the
decryption.


=head2 Plaintext => Str

Decrypted plaintext data. When you use the HTTP API or the AWS CLI, the
value is Base64-encoded. Otherwise, it is not Base64-encoded.


=head2 _request_id => Str


=cut

1;