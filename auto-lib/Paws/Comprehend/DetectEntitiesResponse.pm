
package Paws::Comprehend::DetectEntitiesResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Entity]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectEntitiesResponse

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[L<Paws::Comprehend::Entity>]

A collection of entities identified in the input text. For each entity,
the response provides the entity text, entity type, where the entity
text begins and ends, and the level of confidence that Amazon
Comprehend has in the detection. For a list of entity types, see
how-entities.


=head2 _request_id => Str


=cut

1;