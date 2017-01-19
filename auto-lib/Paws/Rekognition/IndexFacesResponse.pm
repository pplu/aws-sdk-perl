
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

The algorithm detects the image orientation. If it detects that the
image was rotated, it returns the degree of rotation. You can use this
value to correct the orientation and also appropriately analyze the
bounding box coordinates that are returned.

If the source image Exif metadata populates the orientation field,
Amazon Rekognition does not perform orientation correction and the
value of OrientationCorrection will be nil.

Valid values are: C<"ROTATE_0">, C<"ROTATE_90">, C<"ROTATE_180">, C<"ROTATE_270">
=head2 _request_id => Str


=cut

1;