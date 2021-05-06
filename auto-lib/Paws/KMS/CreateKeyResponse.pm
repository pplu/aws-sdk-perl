
package Paws::KMS::CreateKeyResponse;
  use Moose;
  has KeyMetadata => (is => 'ro', isa => 'Paws::KMS::KeyMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateKeyResponse

=head1 ATTRIBUTES


=head2 KeyMetadata => L<Paws::KMS::KeyMetadata>

Metadata associated with the CMK.


=head2 _request_id => Str


=cut

1;