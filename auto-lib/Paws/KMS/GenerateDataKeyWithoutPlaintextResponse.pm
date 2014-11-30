
package Paws::KMS::GenerateDataKeyWithoutPlaintextResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyWithoutPlaintextResponse

=head1 ATTRIBUTES

=head2 CiphertextBlob => Str

  

Ciphertext that contains the wrapped key. You must store the blob and
encryption context so that the key can be used in a future operation.









=head2 KeyId => Str

  

System generated unique identifier for the key.











=cut

1;