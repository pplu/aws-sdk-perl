
package Paws::DocDB::DeleteGlobalClusterResult;
  use Moose;
  has GlobalCluster => (is => 'ro', isa => 'Paws::DocDB::GlobalCluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DeleteGlobalClusterResult

=head1 ATTRIBUTES


=head2 GlobalCluster => L<Paws::DocDB::GlobalCluster>




=head2 _request_id => Str


=cut

