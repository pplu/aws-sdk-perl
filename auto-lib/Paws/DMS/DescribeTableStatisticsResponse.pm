
package Paws::DMS::DescribeTableStatisticsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str');
  has TableStatistics => (is => 'ro', isa => 'ArrayRef[Paws::DMS::TableStatistics]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeTableStatisticsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationTaskArn => Str

The Amazon Resource Name (ARN) of the replication task.


=head2 TableStatistics => ArrayRef[L<Paws::DMS::TableStatistics>]

The table statistics.


=head2 _request_id => Str


=cut

1;