
package Paws::DMS::DescribeReplicationInstancesResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationInstances => (is => 'ro', isa => 'ArrayRef[Paws::DMS::ReplicationInstance]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationInstancesResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationInstances => ArrayRef[L<Paws::DMS::ReplicationInstance>]

The replication instances described.


=head2 _request_id => Str


=cut

1;