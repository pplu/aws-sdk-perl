
package Paws::Rekognition::DetectLabelsResponse;
  use Moose;
  has LabelModelVersion => (is => 'ro', isa => 'Str');
  has Labels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Label]');
  has OrientationCorrection => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectLabelsResponse

=head1 ATTRIBUTES


=head2 LabelModelVersion => Str

Version number of the label detection model that was used to detect
labels.


=head2 Labels => ArrayRef[L<Paws::Rekognition::Label>]

An array of labels for the real-world objects detected.


=head2 OrientationCorrection => Str

The value of C<OrientationCorrection> is always null.

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
=head2 _request_id => Str


=cut

1;