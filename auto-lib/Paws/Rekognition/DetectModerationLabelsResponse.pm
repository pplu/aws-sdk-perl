
package Paws::Rekognition::DetectModerationLabelsResponse;
  use Moose;
  has ModerationLabels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ModerationLabel]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectModerationLabelsResponse

=head1 ATTRIBUTES


=head2 ModerationLabels => ArrayRef[L<Paws::Rekognition::ModerationLabel>]

An array of labels for explicit or suggestive adult content found in
the image. The list includes the top-level label and each child label
detected in the image. This is useful for filtering specific categories
of content.


=head2 _request_id => Str


=cut

1;