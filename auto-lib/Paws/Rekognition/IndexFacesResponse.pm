
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

The orientation of the input image (counterclockwise direction). If
your application displays the image, you can use this value to correct
image orientation. The bounding box coordinates returned in
C<FaceRecords> represent face locations before the image orientation is
corrected.

If the input image is in jpeg format, it might contain exchangeable
image (Exif) metadata. If so, and the Exif metadata populates the
orientation field, the value of C<OrientationCorrection> is null. The
bounding box coordinates in C<FaceRecords> represent face locations
after Exif metadata is used to correct the image orientation. Images in
.png format don't contain Exif metadata.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 UnindexedFaces => ArrayRef[L<Paws::Rekognition::UnindexedFace>]

An array of faces that were detected in the image but weren't indexed.
They weren't indexed because the quality filter identified them as low
quality, or the C<MaxFaces> request parameter filtered them out. To use
the quality filter, you specify the C<QualityFilter> request parameter.


=head2 _request_id => Str


=cut

1;