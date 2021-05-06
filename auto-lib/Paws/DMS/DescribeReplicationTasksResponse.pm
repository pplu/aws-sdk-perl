
package Paws::DMS::DescribeReplicationTasksResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationTasks => (is => 'ro', isa => 'ArrayRef[Paws::DMS::ReplicationTask]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationTasksResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationTasks => ArrayRef[L<Paws::DMS::ReplicationTask>]

A description of the replication tasks.


=head2 _request_id => Str


=cut

1;