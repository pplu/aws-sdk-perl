# Generated from default/object.tt
package Paws::Rekognition::FaceDetail;
  use Moo;
  use Types::Standard qw/Num ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_Emotion Rekognition_AgeRange Rekognition_Sunglasses Rekognition_EyeOpen Rekognition_Pose Rekognition_Beard Rekognition_Gender Rekognition_BoundingBox Rekognition_Eyeglasses Rekognition_Landmark Rekognition_ImageQuality Rekognition_Mustache Rekognition_Smile Rekognition_MouthOpen/;
  has AgeRange => (is => 'ro', isa => Rekognition_AgeRange);
  has Beard => (is => 'ro', isa => Rekognition_Beard);
  has BoundingBox => (is => 'ro', isa => Rekognition_BoundingBox);
  has Confidence => (is => 'ro', isa => Num);
  has Emotions => (is => 'ro', isa => ArrayRef[Rekognition_Emotion]);
  has Eyeglasses => (is => 'ro', isa => Rekognition_Eyeglasses);
  has EyesOpen => (is => 'ro', isa => Rekognition_EyeOpen);
  has Gender => (is => 'ro', isa => Rekognition_Gender);
  has Landmarks => (is => 'ro', isa => ArrayRef[Rekognition_Landmark]);
  has MouthOpen => (is => 'ro', isa => Rekognition_MouthOpen);
  has Mustache => (is => 'ro', isa => Rekognition_Mustache);
  has Pose => (is => 'ro', isa => Rekognition_Pose);
  has Quality => (is => 'ro', isa => Rekognition_ImageQuality);
  has Smile => (is => 'ro', isa => Rekognition_Smile);
  has Sunglasses => (is => 'ro', isa => Rekognition_Sunglasses);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AgeRange' => {
                               'class' => 'Paws::Rekognition::AgeRange',
                               'type' => 'Rekognition_AgeRange'
                             },
               'Pose' => {
                           'class' => 'Paws::Rekognition::Pose',
                           'type' => 'Rekognition_Pose'
                         },
               'Landmarks' => {
                                'class' => 'Paws::Rekognition::Landmark',
                                'type' => 'ArrayRef[Rekognition_Landmark]'
                              },
               'Gender' => {
                             'class' => 'Paws::Rekognition::Gender',
                             'type' => 'Rekognition_Gender'
                           },
               'Emotions' => {
                               'class' => 'Paws::Rekognition::Emotion',
                               'type' => 'ArrayRef[Rekognition_Emotion]'
                             },
               'BoundingBox' => {
                                  'class' => 'Paws::Rekognition::BoundingBox',
                                  'type' => 'Rekognition_BoundingBox'
                                },
               'Mustache' => {
                               'class' => 'Paws::Rekognition::Mustache',
                               'type' => 'Rekognition_Mustache'
                             },
               'Smile' => {
                            'class' => 'Paws::Rekognition::Smile',
                            'type' => 'Rekognition_Smile'
                          },
               'EyesOpen' => {
                               'class' => 'Paws::Rekognition::EyeOpen',
                               'type' => 'Rekognition_EyeOpen'
                             },
               'Eyeglasses' => {
                                 'class' => 'Paws::Rekognition::Eyeglasses',
                                 'type' => 'Rekognition_Eyeglasses'
                               },
               'Quality' => {
                              'class' => 'Paws::Rekognition::ImageQuality',
                              'type' => 'Rekognition_ImageQuality'
                            },
               'MouthOpen' => {
                                'class' => 'Paws::Rekognition::MouthOpen',
                                'type' => 'Rekognition_MouthOpen'
                              },
               'Beard' => {
                            'class' => 'Paws::Rekognition::Beard',
                            'type' => 'Rekognition_Beard'
                          },
               'Confidence' => {
                                 'type' => 'Num'
                               },
               'Sunglasses' => {
                                 'class' => 'Paws::Rekognition::Sunglasses',
                                 'type' => 'Rekognition_Sunglasses'
                               }
             }
}
;
    return $Params_map;
  }


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


=head2 AgeRange => Rekognition_AgeRange

  The estimated age range, in years, for the face. Low represents the
lowest estimated age and High represents the highest estimated age.


=head2 Beard => Rekognition_Beard

  Indicates whether or not the face has a beard, and the confidence level
in the determination.


=head2 BoundingBox => Rekognition_BoundingBox

  Bounding box of the face. Default attribute.


=head2 Confidence => Num

  Confidence level that the bounding box contains a face (and not a
different object such as a tree). Default attribute.


=head2 Emotions => ArrayRef[Rekognition_Emotion]

  The emotions detected on the face, and the confidence level in the
determination. For example, HAPPY, SAD, and ANGRY.


=head2 Eyeglasses => Rekognition_Eyeglasses

  Indicates whether or not the face is wearing eye glasses, and the
confidence level in the determination.


=head2 EyesOpen => Rekognition_EyeOpen

  Indicates whether or not the eyes on the face are open, and the
confidence level in the determination.


=head2 Gender => Rekognition_Gender

  Gender of the face and the confidence level in the determination.


=head2 Landmarks => ArrayRef[Rekognition_Landmark]

  Indicates the location of landmarks on the face. Default attribute.


=head2 MouthOpen => Rekognition_MouthOpen

  Indicates whether or not the mouth on the face is open, and the
confidence level in the determination.


=head2 Mustache => Rekognition_Mustache

  Indicates whether or not the face has a mustache, and the confidence
level in the determination.


=head2 Pose => Rekognition_Pose

  Indicates the pose of the face as determined by its pitch, roll, and
yaw. Default attribute.


=head2 Quality => Rekognition_ImageQuality

  Identifies image brightness and sharpness. Default attribute.


=head2 Smile => Rekognition_Smile

  Indicates whether or not the face is smiling, and the confidence level
in the determination.


=head2 Sunglasses => Rekognition_Sunglasses

  Indicates whether or not the face is wearing sunglasses, and the
confidence level in the determination.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

