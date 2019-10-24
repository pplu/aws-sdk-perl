# Generated from default/object.tt
package Paws::Rekognition::FaceDetection;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::Rekognition::Types qw/Rekognition_FaceDetail/;
  has Face => (is => 'ro', isa => Rekognition_FaceDetail);
  has Timestamp => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Timestamp' => {
                                'type' => 'Int'
                              },
               'Face' => {
                           'class' => 'Paws::Rekognition::FaceDetail',
                           'type' => 'Rekognition_FaceDetail'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::FaceDetection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::FaceDetection object:

  $service_obj->Method(Att1 => { Face => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::FaceDetection object:

  $result = $service_obj->Method(...);
  $result->Att1->Face

=head1 DESCRIPTION

Information about a face detected in a video analysis request and the
time the face was detected in the video.

=head1 ATTRIBUTES


=head2 Face => Rekognition_FaceDetail

  The face properties for the detected face.


=head2 Timestamp => Int

  Time, in milliseconds from the start of the video, that the face was
detected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

