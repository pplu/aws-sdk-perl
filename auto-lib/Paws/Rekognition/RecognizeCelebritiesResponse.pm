
package Paws::Rekognition::RecognizeCelebritiesResponse;
  use Moose;
  has CelebrityFaces => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Celebrity]');
  has OrientationCorrection => (is => 'ro', isa => 'Str');
  has UnrecognizedFaces => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ComparedFace]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::RecognizeCelebritiesResponse

=head1 ATTRIBUTES


=head2 CelebrityFaces => ArrayRef[L<Paws::Rekognition::Celebrity>]

Details about each celebrity found in the image. Amazon Rekognition can
detect a maximum of 15 celebrities in an image.


=head2 OrientationCorrection => Str

The orientation of the input image (counterclockwise direction). If
your application displays the image, you can use this value to correct
the orientation. The bounding box coordinates returned in
C<CelebrityFaces> and C<UnrecognizedFaces> represent face locations
before the image orientation is corrected.

If the input image is in .jpeg format, it might contain exchangeable
image (Exif) metadata that includes the image's orientation. If so, and
the Exif metadata for the input image populates the orientation field,
the value of C<OrientationCorrection> is null. The C<CelebrityFaces>
and C<UnrecognizedFaces> bounding box coordinates represent face
locations after Exif metadata is used to correct the image orientation.
Images in .png format don't contain Exif metadata.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 UnrecognizedFaces => ArrayRef[L<Paws::Rekognition::ComparedFace>]

Details about each unrecognized face in the image.


=head2 _request_id => Str


=cut

1;