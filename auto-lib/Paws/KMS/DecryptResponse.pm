
package Paws::KMS::DecryptResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has KeyId => (is => 'ro', isa => 'Str');
  has Plaintext => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DecryptResponse

=head1 ATTRIBUTES

=head2 KeyId => Str

  

Unique identifier created by the system for the key. This value is
always returned as long as no errors are encountered during the
operation.









=head2 Plaintext => Str

  

Decrypted plaintext data. This value may not be returned if the
customer master key is not available or if you didn't have permission
to use it.











=cut

1;