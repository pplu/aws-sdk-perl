
package Paws::DocDB::CopyDBClusterSnapshotResult;
  use Moose;
  has DBClusterSnapshot => (is => 'ro', isa => 'Paws::DocDB::DBClusterSnapshot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CopyDBClusterSnapshotResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshot => L<Paws::DocDB::DBClusterSnapshot>




=head2 _request_id => Str


=cut

