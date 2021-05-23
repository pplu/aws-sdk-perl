
package Paws::EMRContainers::DescribeVirtualClusterResponse;
  use Moose;
  has VirtualCluster => (is => 'ro', isa => 'Paws::EMRContainers::VirtualCluster', traits => ['NameInRequest'], request_name => 'virtualCluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DescribeVirtualClusterResponse

=head1 ATTRIBUTES


=head2 VirtualCluster => L<Paws::EMRContainers::VirtualCluster>

This output displays information about the specified virtual cluster.


=head2 _request_id => Str


=cut

