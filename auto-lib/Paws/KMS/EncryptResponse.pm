
package Paws::KMS::EncryptResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::KMS::EncryptResponse

=head1 ATTRIBUTES

=head2 CiphertextBlob => Str

  

The encrypted plaintext.









=head2 KeyId => Str

  

The ID of the key used during encryption.











=cut

1;