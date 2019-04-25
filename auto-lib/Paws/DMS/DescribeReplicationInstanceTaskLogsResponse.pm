
package Paws::DMS::DescribeReplicationInstanceTaskLogsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str');
  has ReplicationInstanceTaskLogs => (is => 'ro', isa => 'ArrayRef[Paws::DMS::ReplicationInstanceTaskLog]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationInstanceTaskLogsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationInstanceArn => Str

The Amazon Resource Name (ARN) of the replication instance.


=head2 ReplicationInstanceTaskLogs => ArrayRef[L<Paws::DMS::ReplicationInstanceTaskLog>]

An array of replication task log metadata. Each member of the array
contains the replication task name, ARN, and task log size (in bytes).


=head2 _request_id => Str


=cut

1;