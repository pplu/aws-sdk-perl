
package Paws::ECS::DeregisterTaskDefinitionResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has taskDefinition => (is => 'ro', isa => 'Paws::ECS::TaskDefinition');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeregisterTaskDefinitionResponse

=head1 ATTRIBUTES

=head2 taskDefinition => Paws::ECS::TaskDefinition

  

The full description of the deregistered task.











=cut

