
package Paws::DocDB::RestoreDBClusterFromSnapshotResult;
  use Moose;
  has DBCluster => (is => 'ro', isa => 'Paws::DocDB::DBCluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::RestoreDBClusterFromSnapshotResult

=head1 ATTRIBUTES


=head2 DBCluster => L<Paws::DocDB::DBCluster>




=head2 _request_id => Str


=cut

