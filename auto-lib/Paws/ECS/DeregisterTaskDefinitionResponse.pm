
package Paws::ECS::DeregisterTaskDefinitionResponse;
  use Moose;
  has TaskDefinition => (is => 'ro', isa => 'Paws::ECS::TaskDefinition', traits => ['Unwrapped'], xmlname => 'taskDefinition' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeregisterTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 TaskDefinition => L<Paws::ECS::TaskDefinition>

  The full description of the deregistered task.


=cut

1;