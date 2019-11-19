
package Paws::Kafka::ListClustersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Kafka::Types qw/Kafka_ClusterInfo/;
  has ClusterInfoList => (is => 'ro', isa => ArrayRef[Kafka_ClusterInfo]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClusterInfoList' => 'clusterInfoList',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterInfoList' => {
                                      'class' => 'Paws::Kafka::ClusterInfo',
                                      'type' => 'ArrayRef[Kafka_ClusterInfo]'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListClustersResponse

=head1 ATTRIBUTES


=head2 ClusterInfoList => ArrayRef[Kafka_ClusterInfo]

Information on each of the MSK clusters in the response.


=head2 NextToken => Str

The paginated results marker. When the result of a ListClusters
operation is truncated, the call returns NextToken in the response. To
get another batch of clusters, provide this token in your next request.


=head2 _request_id => Str


=cut

