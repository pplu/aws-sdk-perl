
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

The orientation of the source image (counterclockwise direction). If
your application displays the source image, you can use this value to
correct image orientation. The bounding box coordinates returned in
C<SourceImageFace> represent the location of the face before the image
orientation is corrected.

If the source image is in .jpeg format, it might contain exchangeable
image (Exif) metadata that includes the image's orientation. If the
Exif metadata for the source image populates the orientation field, the
value of C<OrientationCorrection> is null and the C<SourceImageFace>
bounding box coordinates represent the location of the face after Exif
metadata is used to correct the orientation. Images in .png format
don't contain Exif metadata.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 TargetImageOrientationCorrection => Str

The orientation of the target image (in counterclockwise direction). If
your application displays the target image, you can use this value to
correct the orientation of the image. The bounding box coordinates
returned in C<FaceMatches> and C<UnmatchedFaces> represent face
locations before the image orientation is corrected.

If the target image is in .jpg format, it might contain Exif metadata
that includes the orientation of the image. If the Exif metadata for
the target image populates the orientation field, the value of
C<OrientationCorrection> is null and the bounding box coordinates in
C<FaceMatches> and C<UnmatchedFaces> represent the location of the face
after Exif metadata is used to correct the orientation. Images in .png
format don't contain Exif metadata.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 UnmatchedFaces => ArrayRef[L<Paws::Rekognition::ComparedFace>]

An array of faces in the target image that did not match the source
image face.


=head2 _request_id => Str


=cut

1;