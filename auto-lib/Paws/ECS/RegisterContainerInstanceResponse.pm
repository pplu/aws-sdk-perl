
package Paws::ECS::RegisterContainerInstanceResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has containerInstance => (is => 'ro', isa => 'Paws::ECS::ContainerInstance');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterContainerInstanceResponse

=head1 ATTRIBUTES

=head2 containerInstance => Paws::ECS::ContainerInstance

  


=cut

