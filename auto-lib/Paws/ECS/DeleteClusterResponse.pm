
package Paws::ECS::DeleteClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::ECS::Cluster', traits => ['NameInRequest'], request_name => 'cluster' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::ECS::Cluster>

The full description of the deleted cluster.


=head2 _request_id => Str


=cut

1;