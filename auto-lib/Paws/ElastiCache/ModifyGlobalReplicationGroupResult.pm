
package Paws::ElastiCache::ModifyGlobalReplicationGroupResult;
  use Moose;
  has GlobalReplicationGroup => (is => 'ro', isa => 'Paws::ElastiCache::GlobalReplicationGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyGlobalReplicationGroupResult

=head1 ATTRIBUTES


=head2 GlobalReplicationGroup => L<Paws::ElastiCache::GlobalReplicationGroup>




=head2 _request_id => Str


=cut

