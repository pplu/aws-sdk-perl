# Generated from json/callresult_class.tt

package Paws::Rekognition::SearchFacesByImageResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Num/;
  use Paws::Rekognition::Types qw/Rekognition_BoundingBox Rekognition_FaceMatch/;
  has FaceMatches => (is => 'ro', isa => ArrayRef[Rekognition_FaceMatch]);
  has FaceModelVersion => (is => 'ro', isa => Str);
  has SearchedFaceBoundingBox => (is => 'ro', isa => Rekognition_BoundingBox);
  has SearchedFaceConfidence => (is => 'ro', isa => Num);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FaceModelVersion' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SearchedFaceConfidence' => {
                                             'type' => 'Num'
                                           },
               'SearchedFaceBoundingBox' => {
                                              'class' => 'Paws::Rekognition::BoundingBox',
                                              'type' => 'Rekognition_BoundingBox'
                                            },
               'FaceMatches' => {
                                  'class' => 'Paws::Rekognition::FaceMatch',
                                  'type' => 'ArrayRef[Rekognition_FaceMatch]'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchFacesByImageResponse

=head1 ATTRIBUTES


=head2 FaceMatches => ArrayRef[Rekognition_FaceMatch]

An array of faces that match the input face, along with the confidence
in the match.


=head2 FaceModelVersion => Str

Version number of the face detection model associated with the input
collection (C<CollectionId>).


=head2 SearchedFaceBoundingBox => Rekognition_BoundingBox

The bounding box around the face in the input image that Amazon
Rekognition used for the search.


=head2 SearchedFaceConfidence => Num

The level of confidence that the C<searchedFaceBoundingBox>, contains a
face.


=head2 _request_id => Str


=cut

1;