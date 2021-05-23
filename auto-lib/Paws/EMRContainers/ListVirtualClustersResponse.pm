
package Paws::EMRContainers::ListVirtualClustersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has VirtualClusters => (is => 'ro', isa => 'ArrayRef[Paws::EMRContainers::VirtualCluster]', traits => ['NameInRequest'], request_name => 'virtualClusters');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListVirtualClustersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

This output displays the token for the next set of virtual clusters.


=head2 VirtualClusters => ArrayRef[L<Paws::EMRContainers::VirtualCluster>]

This output lists the specified virtual clusters.


=head2 _request_id => Str


=cut

