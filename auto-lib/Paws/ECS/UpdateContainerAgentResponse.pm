
package Paws::ECS::UpdateContainerAgentResponse;
  use Moose;
  has ContainerInstance => (is => 'ro', isa => 'Paws::ECS::ContainerInstance', traits => ['NameInRequest'], request_name => 'containerInstance' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateContainerAgentResponse

=head1 ATTRIBUTES


=head2 ContainerInstance => L<Paws::ECS::ContainerInstance>

The container instance for which the container agent was updated.


=head2 _request_id => Str


=cut

1;