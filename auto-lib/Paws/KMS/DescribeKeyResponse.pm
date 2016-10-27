
package Paws::KMS::DescribeKeyResponse;
  use Moose;
  has KeyMetadata => (is => 'ro', isa => 'Paws::KMS::KeyMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DescribeKeyResponse

=head1 ATTRIBUTES


=head2 KeyMetadata => L<Paws::KMS::KeyMetadata>

Metadata associated with the key.




=cut

1;