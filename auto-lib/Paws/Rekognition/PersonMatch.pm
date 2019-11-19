# Generated from default/object.tt
package Paws::Rekognition::PersonMatch;
  use Moo;
  use Types::Standard qw/ArrayRef Int/;
  use Paws::Rekognition::Types qw/Rekognition_PersonDetail Rekognition_FaceMatch/;
  has FaceMatches => (is => 'ro', isa => ArrayRef[Rekognition_FaceMatch]);
  has Person => (is => 'ro', isa => Rekognition_PersonDetail);
  has Timestamp => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FaceMatches' => {
                                  'type' => 'ArrayRef[Rekognition_FaceMatch]',
                                  'class' => 'Paws::Rekognition::FaceMatch'
                                },
               'Timestamp' => {
                                'type' => 'Int'
                              },
               'Person' => {
                             'type' => 'Rekognition_PersonDetail',
                             'class' => 'Paws::Rekognition::PersonDetail'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::PersonMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::PersonMatch object:

  $service_obj->Method(Att1 => { FaceMatches => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::PersonMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->FaceMatches

=head1 DESCRIPTION

Information about a person whose face matches a face(s) in an Amazon
Rekognition collection. Includes information about the faces in the
Amazon Rekognition collection (FaceMatch), information about the person
(PersonDetail), and the time stamp for when the person was detected in
a video. An array of C<PersonMatch> objects is returned by
GetFaceSearch.

=head1 ATTRIBUTES


=head2 FaceMatches => ArrayRef[Rekognition_FaceMatch]

  Information about the faces in the input collection that match the face
of a person in the video.


=head2 Person => Rekognition_PersonDetail

  Information about the matched person.


=head2 Timestamp => Int

  The time, in milliseconds from the beginning of the video, that the
person was matched in the video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

