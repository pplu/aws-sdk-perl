
package Paws::ECS::DescribeTaskDefinitionResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskDefinition => (is => 'ro', isa => 'Paws::ECS::TaskDefinition', traits => ['NameInRequest'], request_name => 'taskDefinition' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that is applied to the task definition to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.


=head2 TaskDefinition => L<Paws::ECS::TaskDefinition>

The full task definition description.


=head2 _request_id => Str


=cut

1;