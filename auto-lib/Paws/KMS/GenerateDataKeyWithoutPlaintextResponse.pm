
package Paws::KMS::GenerateDataKeyWithoutPlaintextResponse;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyWithoutPlaintextResponse

=head1 ATTRIBUTES


=head2 CiphertextBlob => Str

The encrypted data key. When you use the HTTP API or the AWS CLI, the
value is Base64-encoded. Otherwise, it is not Base64-encoded.


=head2 KeyId => Str

The identifier of the CMK that encrypted the data key.


=head2 _request_id => Str


=cut

1;