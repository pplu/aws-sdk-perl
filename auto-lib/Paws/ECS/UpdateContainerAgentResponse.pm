
package Paws::ECS::UpdateContainerAgentResponse;
  use Moose;
  has ContainerInstance => (is => 'ro', isa => 'Paws::ECS::ContainerInstance', traits => ['Unwrapped'], xmlname => 'containerInstance' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateContainerAgentResponse

=head1 ATTRIBUTES

=head2 ContainerInstance => L<Paws::ECS::ContainerInstance>

  


=cut

1;