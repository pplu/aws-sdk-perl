
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

The orientation of the input image (counter-clockwise direction). If
your application displays the image, you can use this value to correct
image orientation. The bounding box coordinates returned in
C<FaceDetails> represent face locations before the image orientation is
corrected.

If the input image is in .jpeg format, it might contain exchangeable
image (Exif) metadata that includes the image's orientation. If so, and
the Exif metadata for the input image populates the orientation field,
the value of C<OrientationCorrection> is null. The C<FaceDetails>
bounding box coordinates represent face locations after Exif metadata
is used to correct the image orientation. Images in .png format don't
contain Exif metadata.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 _request_id => Str


=cut

1;