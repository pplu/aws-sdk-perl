
package Paws::KMS::ReEncryptResponse;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has DestinationEncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has SourceEncryptionAlgorithm => (is => 'ro', isa => 'Str');
  has SourceKeyId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ReEncryptResponse

=head1 ATTRIBUTES


=head2 CiphertextBlob => Str

The reencrypted data. When you use the HTTP API or the AWS CLI, the
value is Base64-encoded. Otherwise, it is not Base64-encoded.


=head2 DestinationEncryptionAlgorithm => Str

The encryption algorithm that was used to reencrypt the data.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">
=head2 KeyId => Str

The Amazon Resource Name (key ARN
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN))
of the CMK that was used to reencrypt the data.


=head2 SourceEncryptionAlgorithm => Str

The encryption algorithm that was used to decrypt the ciphertext before
it was reencrypted.

Valid values are: C<"SYMMETRIC_DEFAULT">, C<"RSAES_OAEP_SHA_1">, C<"RSAES_OAEP_SHA_256">
=head2 SourceKeyId => Str

Unique identifier of the CMK used to originally encrypt the data.


=head2 _request_id => Str


=cut

1;