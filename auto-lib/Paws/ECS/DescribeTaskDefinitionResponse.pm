
package Paws::ECS::DescribeTaskDefinitionResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has taskDefinition => (is => 'ro', isa => 'Paws::ECS::TaskDefinition');

}

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTaskDefinitionResponse

=head1 ATTRIBUTES

=head2 taskDefinition => Paws::ECS::TaskDefinition

  

The full task definition description.











=cut

1;