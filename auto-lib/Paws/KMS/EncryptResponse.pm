
package Paws::KMS::EncryptResponse;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::EncryptResponse

=head1 ATTRIBUTES


=head2 CiphertextBlob => Str

The encrypted plaintext. When you use the HTTP API or the AWS CLI, the
value is Base64-encdoded. Otherwise, it is not encoded.


=head2 KeyId => Str

The ID of the key used during encryption.


=head2 _request_id => Str


=cut

1;