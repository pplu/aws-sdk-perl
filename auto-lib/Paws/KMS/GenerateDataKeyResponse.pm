
package Paws::KMS::GenerateDataKeyResponse;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has Plaintext => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyResponse

=head1 ATTRIBUTES


=head2 CiphertextBlob => Str

The encrypted data encryption key. When you use the HTTP API or the AWS
CLI, the value is Base64-encdoded. Otherwise, it is not encoded.


=head2 KeyId => Str

The identifier of the CMK under which the data encryption key was
generated and encrypted.


=head2 Plaintext => Str

The data encryption key. When you use the HTTP API or the AWS CLI, the
value is Base64-encdoded. Otherwise, it is not encoded. Use this data
key for local encryption and decryption, then remove it from memory as
soon as possible.


=head2 _request_id => Str


=cut

1;