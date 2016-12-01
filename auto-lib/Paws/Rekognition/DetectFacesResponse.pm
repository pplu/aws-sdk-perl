
package Paws::Rekognition::DetectFacesResponse;
  use Moose;
  has FaceDetails => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::FaceDetail]');
  has OrientationCorrection => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectFacesResponse

=head1 ATTRIBUTES


=head2 FaceDetails => ArrayRef[L<Paws::Rekognition::FaceDetail>]

Details of each face found in the image.


=head2 OrientationCorrection => Str

The algorithm detects the image orientation. If it detects that the
image was rotated, it returns the degrees of rotation. If your
application is displaying the image, you can use this value to adjust
the orientation.

For example, if the service detects that the input image was rotated by
90 degrees, it corrects orientation, performs face detection, and then
returns the faces. That is, the bounding box coordinates in the
response are based on the corrected orientation.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 _request_id => Str


=cut

1;