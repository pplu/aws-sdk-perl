
package Paws::Kafka::DescribeClusterOperationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kafka::Types qw/Kafka_ClusterOperationInfo/;
  has ClusterOperationInfo => (is => 'ro', isa => Kafka_ClusterOperationInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterOperationInfo' => {
                                           'class' => 'Paws::Kafka::ClusterOperationInfo',
                                           'type' => 'Kafka_ClusterOperationInfo'
                                         }
             },
  'NameInRequest' => {
                       'ClusterOperationInfo' => 'clusterOperationInfo'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeClusterOperationResponse

=head1 ATTRIBUTES


=head2 ClusterOperationInfo => Kafka_ClusterOperationInfo

Cluster operation information


=head2 _request_id => Str


=cut

