
package Paws::ECS::CreateClusterResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has cluster => (is => 'ro', isa => 'Paws::ECS::Cluster');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateClusterResponse

=head1 ATTRIBUTES

=head2 cluster => Paws::ECS::Cluster

  

The full description of your new cluster.











=cut

