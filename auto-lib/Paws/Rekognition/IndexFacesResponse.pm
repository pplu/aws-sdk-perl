
package Paws::Rekognition::IndexFacesResponse;
  use Moose;
  has FaceModelVersion => (is => 'ro', isa => 'Str');
  has FaceRecords => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::FaceRecord]');
  has OrientationCorrection => (is => 'ro', isa => 'Str');
  has UnindexedFaces => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::UnindexedFace]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::IndexFacesResponse

=head1 ATTRIBUTES


=head2 FaceModelVersion => Str

The version number of the face detection model that's associated with
the input collection (C<CollectionId>).


=head2 FaceRecords => ArrayRef[L<Paws::Rekognition::FaceRecord>]

An array of faces detected and added to the collection. For more
information, see Searching Faces in a Collection in the Amazon
Rekognition Developer Guide.


=head2 OrientationCorrection => Str

If your collection is associated with a face detection model that's
later than version 3.0, the value of C<OrientationCorrection> is always
null and no orientation information is returned.

If your collection is associated with a face detection model that's
version 3.0 or earlier, the following applies:

=over

=item *

If the input image is in .jpeg format, it might contain exchangeable
image file format (Exif) metadata that includes the image's
orientation. Amazon Rekognition uses this orientation information to
perform image correction - the bounding box coordinates are translated
to represent object locations after the orientation information in the
Exif metadata is used to correct the image orientation. Images in .png
format don't contain Exif metadata. The value of
C<OrientationCorrection> is null.

=item *

If the image doesn't contain orientation information in its Exif
metadata, Amazon Rekognition returns an estimated orientation
(ROTATE_0, ROTATE_90, ROTATE_180, ROTATE_270). Amazon Rekognition
doesnE<rsquo>t perform image correction for images. The bounding box
coordinates aren't translated and represent the object locations before
the image is rotated.

=back

Bounding box information is returned in the C<FaceRecords> array. You
can get the version of the face detection model by calling
DescribeCollection.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 UnindexedFaces => ArrayRef[L<Paws::Rekognition::UnindexedFace>]

An array of faces that were detected in the image but weren't indexed.
They weren't indexed because the quality filter identified them as low
quality, or the C<MaxFaces> request parameter filtered them out. To use
the quality filter, you specify the C<QualityFilter> request parameter.


=head2 _request_id => Str


=cut

1;