
package Paws::ECS::RegisterContainerInstanceResponse;
  use Moose;
  has ContainerInstance => (is => 'ro', isa => 'Paws::ECS::ContainerInstance', traits => ['NameInRequest'], request_name => 'containerInstance' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterContainerInstanceResponse

=head1 ATTRIBUTES


=head2 ContainerInstance => L<Paws::ECS::ContainerInstance>

The container instance that was registered.


=head2 _request_id => Str


=cut

1;