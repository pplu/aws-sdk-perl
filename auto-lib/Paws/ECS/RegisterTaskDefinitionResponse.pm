
package Paws::ECS::RegisterTaskDefinitionResponse;
  use Moose;
  has TaskDefinition => (is => 'ro', isa => 'Paws::ECS::TaskDefinition', traits => ['Unwrapped'], xmlname => 'taskDefinition' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 TaskDefinition => L<Paws::ECS::TaskDefinition>

  The full description of the registered task definition.


=cut

1;