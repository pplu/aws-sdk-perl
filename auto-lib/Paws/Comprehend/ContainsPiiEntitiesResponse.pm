
package Paws::Comprehend::ContainsPiiEntitiesResponse;
  use Moose;
  has Labels => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::EntityLabel]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ContainsPiiEntitiesResponse

=head1 ATTRIBUTES


=head2 Labels => ArrayRef[L<Paws::Comprehend::EntityLabel>]

The labels used in the document being analyzed. Individual labels
represent personally identifiable information (PII) entity types.


=head2 _request_id => Str


=cut

1;