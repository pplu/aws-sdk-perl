
package Paws::KMS::DecryptResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has Plaintext => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DecryptResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

ARN of the key used to perform the decryption. This value is returned
if no errors are encountered during the operation.


=head2 Plaintext => Str

Decrypted plaintext data. When you use the HTTP API or the AWS CLI, the
value is Base64-encdoded. Otherwise, it is not encoded.


=head2 _request_id => Str


=cut

1;