
package Paws::Comprehend::DetectPiiEntitiesResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::PiiEntity]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectPiiEntitiesResponse

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[L<Paws::Comprehend::PiiEntity>]

A collection of PII entities identified in the input text. For each
entity, the response provides the entity type, where the entity text
begins and ends, and the level of confidence that Amazon Comprehend has
in the detection.


=head2 _request_id => Str


=cut

1;