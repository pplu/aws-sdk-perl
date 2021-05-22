
package Paws::ElastiCache::DescribeGlobalReplicationGroupsResult;
  use Moose;
  has GlobalReplicationGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::GlobalReplicationGroup]', request_name => 'GlobalReplicationGroup', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeGlobalReplicationGroupsResult

=head1 ATTRIBUTES


=head2 GlobalReplicationGroups => ArrayRef[L<Paws::ElastiCache::GlobalReplicationGroup>]

Indicates the slot configuration and global identifier for each slice
group.


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords. E<gt>


=head2 _request_id => Str


=cut

