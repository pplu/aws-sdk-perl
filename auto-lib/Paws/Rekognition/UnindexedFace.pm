package Paws::Rekognition::UnindexedFace;
  use Moose;
  has FaceDetail => (is => 'ro', isa => 'Paws::Rekognition::FaceDetail');
  has Reasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::UnindexedFace

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::UnindexedFace object:

  $service_obj->Method(Att1 => { FaceDetail => $value, ..., Reasons => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::UnindexedFace object:

  $result = $service_obj->Method(...);
  $result->Att1->FaceDetail

=head1 DESCRIPTION

A face that IndexFaces detected, but didn't index. Use the C<Reasons>
response attribute to determine why a face wasn't indexed.

=head1 ATTRIBUTES


=head2 FaceDetail => L<Paws::Rekognition::FaceDetail>

  The structure that contains attributes of a face that
C<IndexFaces>detected, but didn't index.


=head2 Reasons => ArrayRef[Str|Undef]

  An array of reasons that specify why a face wasn't indexed.

=over

=item *

EXTREME_POSE - The face is at a pose that can't be detected. For
example, the head is turned too far away from the camera.

=item *

EXCEEDS_MAX_FACES - The number of faces detected is already higher than
that specified by the C<MaxFaces> input parameter for C<IndexFaces>.

=item *

LOW_BRIGHTNESS - The image is too dark.

=item *

LOW_SHARPNESS - The image is too blurry.

=item *

LOW_CONFIDENCE - The face was detected with a low confidence.

=item *

SMALL_BOUNDING_BOX - The bounding box around the face is too small.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

