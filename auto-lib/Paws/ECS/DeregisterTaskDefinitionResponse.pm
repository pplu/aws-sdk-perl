
package Paws::ECS::DeregisterTaskDefinitionResponse;
  use Moose;
  has TaskDefinition => (is => 'ro', isa => 'Paws::ECS::TaskDefinition', traits => ['NameInRequest'], request_name => 'taskDefinition' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeregisterTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 TaskDefinition => L<Paws::ECS::TaskDefinition>

The full description of the deregistered task.


=head2 _request_id => Str


=cut

1;