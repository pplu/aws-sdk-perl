
package Paws::DocDB::GlobalClustersMessage;
  use Moose;
  has GlobalClusters => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::GlobalCluster]', request_name => 'GlobalClusterMember', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::GlobalClustersMessage

=head1 ATTRIBUTES


=head2 GlobalClusters => ArrayRef[L<Paws::DocDB::GlobalCluster>]




=head2 Marker => Str




=head2 _request_id => Str


=cut

