
package Paws::EBS::ListChangedBlocksResponse;
  use Moose;
  has BlockSize => (is => 'ro', isa => 'Int');
  has ChangedBlocks => (is => 'ro', isa => 'ArrayRef[Paws::EBS::ChangedBlock]');
  has ExpiryTime => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::ListChangedBlocksResponse

=head1 ATTRIBUTES


=head2 BlockSize => Int

The size of the block.


=head2 ChangedBlocks => ArrayRef[L<Paws::EBS::ChangedBlock>]

An array of objects containing information about the changed blocks.


=head2 ExpiryTime => Str

The time when the C<block token> expires.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 VolumeSize => Int

The size of the volume in GB.


=head2 _request_id => Str


=cut

