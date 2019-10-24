
package Paws::Kafka::UpdateClusterConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kafka::Types qw//;
  has ClusterArn => (is => 'ro', isa => Str);
  has ClusterOperationArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'ClusterOperationArn' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'ClusterArn' => 'clusterArn',
                       'ClusterOperationArn' => 'clusterOperationArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateClusterConfigurationResponse

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster.


=head2 ClusterOperationArn => Str

The Amazon Resource Name (ARN) of the cluster operation.


=head2 _request_id => Str


=cut

