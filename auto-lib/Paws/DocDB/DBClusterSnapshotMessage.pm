
package Paws::DocDB::DBClusterSnapshotMessage;
  use Moose;
  has DBClusterSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::DBClusterSnapshot]', request_name => 'DBClusterSnapshot', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBClusterSnapshotMessage

=head1 ATTRIBUTES


=head2 DBClusterSnapshots => ArrayRef[L<Paws::DocDB::DBClusterSnapshot>]

Provides a list of DB cluster snapshots.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

