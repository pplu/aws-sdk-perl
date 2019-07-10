
package Paws::Kafka::DescribeClusterOperationResponse;
  use Moose;
  has ClusterOperationInfo => (is => 'ro', isa => 'Paws::Kafka::ClusterOperationInfo', traits => ['NameInRequest'], request_name => 'clusterOperationInfo');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeClusterOperationResponse

=head1 ATTRIBUTES


=head2 ClusterOperationInfo => L<Paws::Kafka::ClusterOperationInfo>

Cluster operation information


=head2 _request_id => Str


=cut

