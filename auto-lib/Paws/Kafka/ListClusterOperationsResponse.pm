
package Paws::Kafka::ListClusterOperationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Kafka::Types qw/Kafka_ClusterOperationInfo/;
  has ClusterOperationInfoList => (is => 'ro', isa => ArrayRef[Kafka_ClusterOperationInfo]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterOperationInfoList' => {
                                               'class' => 'Paws::Kafka::ClusterOperationInfo',
                                               'type' => 'ArrayRef[Kafka_ClusterOperationInfo]'
                                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ClusterOperationInfoList' => 'clusterOperationInfoList',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListClusterOperationsResponse

=head1 ATTRIBUTES


=head2 ClusterOperationInfoList => ArrayRef[Kafka_ClusterOperationInfo]

An array of cluster operation information objects.


=head2 NextToken => Str

If the response of ListClusterOperations is truncated, it returns a
NextToken in the response. This Nexttoken should be sent in the
subsequent request to ListClusterOperations.


=head2 _request_id => Str


=cut

