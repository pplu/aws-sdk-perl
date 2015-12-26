
package Paws::RDS::DBClusterSnapshotMessage;
  use Moose;
  has DBClusterSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBClusterSnapshot]', xmlname => 'DBClusterSnapshot', traits => ['Unwrapped',]);
  has Marker => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterSnapshotMessage

=head1 ATTRIBUTES


=head2 DBClusterSnapshots => ArrayRef[L<Paws::RDS::DBClusterSnapshot>]

Provides a list of DB cluster snapshots for the user.



=head2 Marker => Str

An optional pagination token provided by a previous
DescribeDBClusterSnapshots request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.




=cut

