
package Paws::Kafka::ListClustersResponse;
  use Moose;
  has ClusterInfoList => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::ClusterInfo]', traits => ['NameInRequest'], request_name => 'clusterInfoList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListClustersResponse

=head1 ATTRIBUTES


=head2 ClusterInfoList => ArrayRef[L<Paws::Kafka::ClusterInfo>]

Information on each of the MSK clusters in the response.


=head2 NextToken => Str

The paginated results marker. When the result of a ListClusters
operation is truncated, the call returns NextToken in the response. To
get another batch of clusters, provide this token in your next request.


=head2 _request_id => Str


=cut

