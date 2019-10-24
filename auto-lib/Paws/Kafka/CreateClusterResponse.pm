
package Paws::Kafka::CreateClusterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kafka::Types qw//;
  has ClusterArn => (is => 'ro', isa => Str);
  has ClusterName => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterName' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'ClusterName' => 'clusterName',
                       'ClusterArn' => 'clusterArn',
                       'State' => 'state'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateClusterResponse

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster.


=head2 ClusterName => Str

The name of the MSK cluster.


=head2 State => Str

The state of the cluster. The possible states are CREATING, ACTIVE, and
FAILED.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut

