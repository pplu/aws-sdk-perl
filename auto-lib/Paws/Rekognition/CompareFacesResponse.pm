
package Paws::Rekognition::CompareFacesResponse;
  use Moose;
  has FaceMatches => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::CompareFacesMatch]');
  has SourceImageFace => (is => 'ro', isa => 'Paws::Rekognition::ComparedSourceImageFace');
  has SourceImageOrientationCorrection => (is => 'ro', isa => 'Str');
  has TargetImageOrientationCorrection => (is => 'ro', isa => 'Str');
  has UnmatchedFaces => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ComparedFace]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CompareFacesResponse

=head1 ATTRIBUTES


=head2 FaceMatches => ArrayRef[L<Paws::Rekognition::CompareFacesMatch>]

An array of faces in the target image that match the source image face.
Each C<CompareFacesMatch> object provides the bounding box, the
confidence level that the bounding box contains a face, and the
similarity score for the face in the bounding box and the face in the
source image.


=head2 SourceImageFace => L<Paws::Rekognition::ComparedSourceImageFace>

The face in the source image that was used for comparison.


=head2 SourceImageOrientationCorrection => Str

The value of C<SourceImageOrientationCorrection> is always null.

If the input image is in .jpeg format, it might contain exchangeable
image file format (Exif) metadata that includes the image's
orientation. Amazon Rekognition uses this orientation information to
perform image correction. The bounding box coordinates are translated
to represent object locations after the orientation information in the
Exif metadata is used to correct the image orientation. Images in .png
format don't contain Exif metadata.

Amazon Rekognition doesnE<rsquo>t perform image correction for images
in .png format and .jpeg images without orientation information in the
image Exif metadata. The bounding box coordinates aren't translated and
represent the object locations before the image is rotated.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 TargetImageOrientationCorrection => Str

The value of C<TargetImageOrientationCorrection> is always null.

If the input image is in .jpeg format, it might contain exchangeable
image file format (Exif) metadata that includes the image's
orientation. Amazon Rekognition uses this orientation information to
perform image correction. The bounding box coordinates are translated
to represent object locations after the orientation information in the
Exif metadata is used to correct the image orientation. Images in .png
format don't contain Exif metadata.

Amazon Rekognition doesnE<rsquo>t perform image correction for images
in .png format and .jpeg images without orientation information in the
image Exif metadata. The bounding box coordinates aren't translated and
represent the object locations before the image is rotated.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 UnmatchedFaces => ArrayRef[L<Paws::Rekognition::ComparedFace>]

An array of faces in the target image that did not match the source
image face.


=head2 _request_id => Str


=cut

1;