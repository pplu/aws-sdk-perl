package Paws::Rekognition::ComparedFace;
  use Moose;
  has BoundingBox => (is => 'ro', isa => 'Paws::Rekognition::BoundingBox');
  has Confidence => (is => 'ro', isa => 'Num');
  has Landmarks => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Landmark]');
  has Pose => (is => 'ro', isa => 'Paws::Rekognition::Pose');
  has Quality => (is => 'ro', isa => 'Paws::Rekognition::ImageQuality');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ComparedFace

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::ComparedFace object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., Quality => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::ComparedFace object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

Provides face metadata for target image faces that are analyzed by
C<CompareFaces> and C<RecognizeCelebrities>.

=head1 ATTRIBUTES


=head2 BoundingBox => L<Paws::Rekognition::BoundingBox>

  Bounding box of the face.


=head2 Confidence => Num

  Level of confidence that what the bounding box contains is a face.


=head2 Landmarks => ArrayRef[L<Paws::Rekognition::Landmark>]

  An array of facial landmarks.


=head2 Pose => L<Paws::Rekognition::Pose>

  Indicates the pose of the face as determined by its pitch, roll, and
yaw.


=head2 Quality => L<Paws::Rekognition::ImageQuality>

  Identifies face image brightness and sharpness.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

