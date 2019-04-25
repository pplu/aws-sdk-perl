
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

The encrypted data encryption key. When you use the HTTP API or the AWS
CLI, the value is Base64-encdoded. Otherwise, it is not encoded.


=head2 KeyId => Str

The identifier of the CMK under which the data encryption key was
generated and encrypted.


=head2 _request_id => Str


=cut

1;