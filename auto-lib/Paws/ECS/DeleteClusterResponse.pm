
package Paws::ECS::DeleteClusterResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has cluster => (is => 'ro', isa => 'Paws::ECS::Cluster');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteClusterResponse

=head1 ATTRIBUTES

=head2 cluster => Paws::ECS::Cluster

  

The full description of the deleted cluster.











=cut

