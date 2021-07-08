
package Paws::Kafka::DeleteClusterResponse;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterArn');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DeleteClusterResponse

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster.


=head2 State => Str

The state of the cluster. The possible states are ACTIVE, CREATING,
DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"DELETING">, C<"FAILED">, C<"HEALING">, C<"MAINTENANCE">, C<"REBOOTING_BROKER">, C<"UPDATING">
=head2 _request_id => Str


=cut

