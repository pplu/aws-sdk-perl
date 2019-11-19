
package Paws::Kafka::DescribeClusterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kafka::Types qw/Kafka_ClusterInfo/;
  has ClusterInfo => (is => 'ro', isa => Kafka_ClusterInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterInfo' => {
                                  'type' => 'Kafka_ClusterInfo',
                                  'class' => 'Paws::Kafka::ClusterInfo'
                                }
             },
  'NameInRequest' => {
                       'ClusterInfo' => 'clusterInfo'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeClusterResponse

=head1 ATTRIBUTES


=head2 ClusterInfo => Kafka_ClusterInfo

The cluster information.


=head2 _request_id => Str


=cut

