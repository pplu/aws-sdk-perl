
package Paws::ECS::UpdateClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::ECS::Cluster', traits => ['NameInRequest'], request_name => 'cluster' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::ECS::Cluster>

Details about the cluster.


=head2 _request_id => Str


=cut

1;