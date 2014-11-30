
package Paws::ElastiCache::DeleteReplicationGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ReplicationGroup => (is => 'ro', isa => 'Paws::ElastiCache::ReplicationGroup');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteReplicationGroupResult

=head1 ATTRIBUTES

=head2 ReplicationGroup => Paws::ElastiCache::ReplicationGroup

  


=cut

