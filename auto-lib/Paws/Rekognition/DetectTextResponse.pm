
package Paws::Rekognition::DetectTextResponse;
  use Moose;
  has TextDetections => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::TextDetection]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectTextResponse

=head1 ATTRIBUTES


=head2 TextDetections => ArrayRef[L<Paws::Rekognition::TextDetection>]

An array of text that was detected in the input image.


=head2 _request_id => Str


=cut

1;