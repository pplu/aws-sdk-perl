
package Paws::Rekognition::DetectModerationLabelsResponse;
  use Moose;
  has HumanLoopActivationOutput => (is => 'ro', isa => 'Paws::Rekognition::HumanLoopActivationOutput');
  has ModerationLabels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ModerationLabel]');
  has ModerationModelVersion => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectModerationLabelsResponse

=head1 ATTRIBUTES


=head2 HumanLoopActivationOutput => L<Paws::Rekognition::HumanLoopActivationOutput>

Shows the results of the human in the loop evaluation.


=head2 ModerationLabels => ArrayRef[L<Paws::Rekognition::ModerationLabel>]

Array of detected Moderation labels and the time, in milliseconds from
the start of the video, they were detected.


=head2 ModerationModelVersion => Str

Version number of the moderation detection model that was used to
detect unsafe content.


=head2 _request_id => Str


=cut

1;