
package Paws::Kafka::DescribeClusterResponse;
  use Moose;
  has ClusterInfo => (is => 'ro', isa => 'Paws::Kafka::ClusterInfo', traits => ['NameInRequest'], request_name => 'clusterInfo');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeClusterResponse

=head1 ATTRIBUTES


=head2 ClusterInfo => L<Paws::Kafka::ClusterInfo>

The cluster information.


=head2 _request_id => Str


=cut

