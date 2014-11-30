
package Paws::ElastiCache::DescribeSnapshotsListMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Snapshot]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeSnapshotsListMessage

=head1 ATTRIBUTES

=head2 Marker => Str

  

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by I<MaxRecords>.









=head2 Snapshots => ArrayRef[Paws::ElastiCache::Snapshot]

  

A list of snapshots. Each item in the list contains detailed
information about one snapshot.











=cut

