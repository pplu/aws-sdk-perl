
package Paws::EBS::ListSnapshotBlocksResponse;
  use Moose;
  has Blocks => (is => 'ro', isa => 'ArrayRef[Paws::EBS::Block]');
  has BlockSize => (is => 'ro', isa => 'Int');
  has ExpiryTime => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::ListSnapshotBlocksResponse

=head1 ATTRIBUTES


=head2 Blocks => ArrayRef[L<Paws::EBS::Block>]

An array of objects containing information about the blocks.


=head2 BlockSize => Int

The size of the block.


=head2 ExpiryTime => Str

The time when the C<block token> expires.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 VolumeSize => Int

The size of the volume in GB.


=head2 _request_id => Str


=cut

