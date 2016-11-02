
package Paws::RedShift::RestoreTableFromClusterSnapshotResult;
  use Moose;
  has TableRestoreStatus => (is => 'ro', isa => 'Paws::RedShift::TableRestoreStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RestoreTableFromClusterSnapshotResult

=head1 ATTRIBUTES


=head2 TableRestoreStatus => L<Paws::RedShift::TableRestoreStatus>




=head2 _request_id => Str


=cut

