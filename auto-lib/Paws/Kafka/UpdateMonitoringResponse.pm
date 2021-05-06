
package Paws::Kafka::UpdateMonitoringResponse;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterArn');
  has ClusterOperationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterOperationArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateMonitoringResponse

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster.


=head2 ClusterOperationArn => Str

The Amazon Resource Name (ARN) of the cluster operation.


=head2 _request_id => Str


=cut

