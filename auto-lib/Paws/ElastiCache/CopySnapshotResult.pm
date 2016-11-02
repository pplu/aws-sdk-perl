
package Paws::ElastiCache::CopySnapshotResult;
  use Moose;
  has Snapshot => (is => 'ro', isa => 'Paws::ElastiCache::Snapshot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CopySnapshotResult

=head1 ATTRIBUTES


=head2 Snapshot => L<Paws::ElastiCache::Snapshot>




=head2 _request_id => Str


=cut

