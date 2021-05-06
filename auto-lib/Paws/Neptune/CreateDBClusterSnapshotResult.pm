
package Paws::Neptune::CreateDBClusterSnapshotResult;
  use Moose;
  has DBClusterSnapshot => (is => 'ro', isa => 'Paws::Neptune::DBClusterSnapshot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateDBClusterSnapshotResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshot => L<Paws::Neptune::DBClusterSnapshot>




=head2 _request_id => Str


=cut

