
package Paws::Rekognition::DetectLabelsResponse;
  use Moose;
  has Labels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Label]');
  has OrientationCorrection => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectLabelsResponse

=head1 ATTRIBUTES


=head2 Labels => ArrayRef[L<Paws::Rekognition::Label>]

An array of labels for the real-world objects detected.


=head2 OrientationCorrection => Str

Amazon Rekognition returns the orientation of the input image that was
detected (clockwise direction). If your application displays the image,
you can use this value to correct the orientation. If Amazon
Rekognition detects that the input image was rotated (for example, by
90 degrees), it first corrects the orientation before detecting the
labels.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 _request_id => Str


=cut

1;