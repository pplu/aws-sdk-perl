
package Paws::KMS::ReEncryptResponse;
  use Moose;
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has SourceKeyId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ReEncryptResponse

=head1 ATTRIBUTES


=head2 CiphertextBlob => Str

The reencrypted data. When you use the HTTP API or the AWS CLI, the
value is Base64-encdoded. Otherwise, it is not encoded.


=head2 KeyId => Str

Unique identifier of the CMK used to reencrypt the data.


=head2 SourceKeyId => Str

Unique identifier of the CMK used to originally encrypt the data.


=head2 _request_id => Str


=cut

1;