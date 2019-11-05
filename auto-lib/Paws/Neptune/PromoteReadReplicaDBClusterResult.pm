
package Paws::Neptune::PromoteReadReplicaDBClusterResult;
  use Moose;
  has DBCluster => (is => 'ro', isa => 'Paws::Neptune::DBCluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::PromoteReadReplicaDBClusterResult

=head1 ATTRIBUTES


=head2 DBCluster => L<Paws::Neptune::DBCluster>




=head2 _request_id => Str


=cut

