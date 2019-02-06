package Paws::Rekognition::FaceDetail;
  use Moose;
  has AgeRange => (is => 'ro', isa => 'Paws::Rekognition::AgeRange');
  has Beard => (is => 'ro', isa => 'Paws::Rekognition::Beard');
  has BoundingBox => (is => 'ro', isa => 'Paws::Rekognition::BoundingBox');
  has Confidence => (is => 'ro', isa => 'Num');
  has Emotions => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Emotion]');
  has Eyeglasses => (is => 'ro', isa => 'Paws::Rekognition::Eyeglasses');
  has EyesOpen => (is => 'ro', isa => 'Paws::Rekognition::EyeOpen');
  has Gender => (is => 'ro', isa => 'Paws::Rekognition::Gender');
  has Landmarks => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Landmark]');
  has MouthOpen => (is => 'ro', isa => 'Paws::Rekognition::MouthOpen');
  has Mustache => (is => 'ro', isa => 'Paws::Rekognition::Mustache');
  has Pose => (is => 'ro', isa => 'Paws::Rekognition::Pose');
  has Quality => (is => 'ro', isa => 'Paws::Rekognition::ImageQuality');
  has Smile => (is => 'ro', isa => 'Paws::Rekognition::Smile');
  has Sunglasses => (is => 'ro', isa => 'Paws::Rekognition::Sunglasses');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::FaceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::FaceDetail object:

  $service_obj->Method(Att1 => { AgeRange => $value, ..., Sunglasses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::FaceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AgeRange

=head1 DESCRIPTION

Structure containing attributes of the face that the algorithm
detected.

A C<FaceDetail> object contains either the default facial attributes or
all facial attributes. The default attributes are C<BoundingBox>,
C<Confidence>, C<Landmarks>, C<Pose>, and C<Quality>.

GetFaceDetection is the only Amazon Rekognition Video stored video
operation that can return a C<FaceDetail> object with all attributes.
To specify which attributes to return, use the C<FaceAttributes> input
parameter for StartFaceDetection. The following Amazon Rekognition
Video operations return only the default attributes. The corresponding
Start operations don't have a C<FaceAttributes> input parameter.

=over

=item *

GetCelebrityRecognition

=item *

GetPersonTracking

=item *

GetFaceSearch

=back

The Amazon Rekognition Image DetectFaces and IndexFaces operations can
return all facial attributes. To specify which attributes to return,
use the C<Attributes> input parameter for C<DetectFaces>. For
C<IndexFaces>, use the C<DetectAttributes> input parameter.

=head1 ATTRIBUTES


=head2 AgeRange => L<Paws::Rekognition::AgeRange>

  The estimated age range, in years, for the face. Low represents the
lowest estimated age and High represents the highest estimated age.


=head2 Beard => L<Paws::Rekognition::Beard>

  Indicates whether or not the face has a beard, and the confidence level
in the determination.


=head2 BoundingBox => L<Paws::Rekognition::BoundingBox>

  Bounding box of the face. Default attribute.


=head2 Confidence => Num

  Confidence level that the bounding box contains a face (and not a
different object such as a tree). Default attribute.


=head2 Emotions => ArrayRef[L<Paws::Rekognition::Emotion>]

  The emotions detected on the face, and the confidence level in the
determination. For example, HAPPY, SAD, and ANGRY.


=head2 Eyeglasses => L<Paws::Rekognition::Eyeglasses>

  Indicates whether or not the face is wearing eye glasses, and the
confidence level in the determination.


=head2 EyesOpen => L<Paws::Rekognition::EyeOpen>

  Indicates whether or not the eyes on the face are open, and the
confidence level in the determination.


=head2 Gender => L<Paws::Rekognition::Gender>

  Gender of the face and the confidence level in the determination.


=head2 Landmarks => ArrayRef[L<Paws::Rekognition::Landmark>]

  Indicates the location of landmarks on the face. Default attribute.


=head2 MouthOpen => L<Paws::Rekognition::MouthOpen>

  Indicates whether or not the mouth on the face is open, and the
confidence level in the determination.


=head2 Mustache => L<Paws::Rekognition::Mustache>

  Indicates whether or not the face has a mustache, and the confidence
level in the determination.


=head2 Pose => L<Paws::Rekognition::Pose>

  Indicates the pose of the face as determined by its pitch, roll, and
yaw. Default attribute.


=head2 Quality => L<Paws::Rekognition::ImageQuality>

  Identifies image brightness and sharpness. Default attribute.


=head2 Smile => L<Paws::Rekognition::Smile>

  Indicates whether or not the face is smiling, and the confidence level
in the determination.


=head2 Sunglasses => L<Paws::Rekognition::Sunglasses>

  Indicates whether or not the face is wearing sunglasses, and the
confidence level in the determination.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

