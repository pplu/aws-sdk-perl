
package Paws::ECS::RegisterTaskDefinitionResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskDefinition => (is => 'ro', isa => 'Paws::ECS::TaskDefinition', traits => ['NameInRequest'], request_name => 'taskDefinition' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The list of tags associated with the task definition.


=head2 TaskDefinition => L<Paws::ECS::TaskDefinition>

The full description of the registered task definition.


=head2 _request_id => Str


=cut

1;