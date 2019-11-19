# Generated from default/object.tt
package Paws::Rekognition::PersonDetail;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::Rekognition::Types qw/Rekognition_BoundingBox Rekognition_FaceDetail/;
  has BoundingBox => (is => 'ro', isa => Rekognition_BoundingBox);
  has Face => (is => 'ro', isa => Rekognition_FaceDetail);
  has Index => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BoundingBox' => {
                                  'class' => 'Paws::Rekognition::BoundingBox',
                                  'type' => 'Rekognition_BoundingBox'
                                },
               'Face' => {
                           'type' => 'Rekognition_FaceDetail',
                           'class' => 'Paws::Rekognition::FaceDetail'
                         },
               'Index' => {
                            'type' => 'Int'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::PersonDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::PersonDetail object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., Index => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::PersonDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

Details about a person detected in a video analysis request.

=head1 ATTRIBUTES


=head2 BoundingBox => Rekognition_BoundingBox

  Bounding box around the detected person.


=head2 Face => Rekognition_FaceDetail

  Face details for the detected person.


=head2 Index => Int

  Identifier for the person detected person within a video. Use to keep
track of the person throughout the video. The identifier is not stored
by Amazon Rekognition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

