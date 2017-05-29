
package Paws::Rekognition::IndexFacesResponse;
  use Moose;
  has FaceRecords => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::FaceRecord]');
  has OrientationCorrection => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::IndexFacesResponse

=head1 ATTRIBUTES


=head2 FaceRecords => ArrayRef[L<Paws::Rekognition::FaceRecord>]

An array of faces detected and added to the collection. For more
information, see howitworks-index-faces.


=head2 OrientationCorrection => Str

The orientation of the input image (counterclockwise direction). If
your application displays the image, you can use this value to correct
image orientation. The bounding box coordinates returned in
C<FaceRecords> represent face locations before the image orientation is
corrected.

If the source image is in jpeg format, it might contain exchangeable
image (Exif) metadata. If so, and the Exif metadata populates the
orientation field, the value of C<OrientationCorrection> is nil and the
bounding box coordinates in C<FaceRecords> represent face locations
after Exif metadata is used to correct the image orientation. Images in
.png format don't contain Exif metadata.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 _request_id => Str


=cut

1;