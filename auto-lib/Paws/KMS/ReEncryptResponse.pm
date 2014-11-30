
package Paws::KMS::ReEncryptResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has SourceKeyId => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ReEncryptResponse

=head1 ATTRIBUTES

=head2 CiphertextBlob => Str

  

The re-encrypted data.









=head2 KeyId => Str

  

Unique identifier of the key used to re-encrypt the data.









=head2 SourceKeyId => Str

  

Unique identifier of the key used to originally encrypt the data.











=cut

1;