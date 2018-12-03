
package Paws::Kafka::CreateClusterResponse;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterArn');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  has _request_id => (is => 'ro', isa => 'Str');
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

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut

