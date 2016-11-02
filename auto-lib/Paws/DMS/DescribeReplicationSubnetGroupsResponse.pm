
package Paws::DMS::DescribeReplicationSubnetGroupsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationSubnetGroups => (is => 'ro', isa => 'ArrayRef[Paws::DMS::ReplicationSubnetGroup]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationSubnetGroupsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationSubnetGroups => ArrayRef[L<Paws::DMS::ReplicationSubnetGroup>]

A description of the replication subnet groups.


=head2 _request_id => Str


=cut

1;