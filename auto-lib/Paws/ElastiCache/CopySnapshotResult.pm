
package Paws::ElastiCache::CopySnapshotResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Paws::ElastiCache::Snapshot');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CopySnapshotResult

=head1 ATTRIBUTES

=head2 Snapshot => Paws::ElastiCache::Snapshot

  


=cut

