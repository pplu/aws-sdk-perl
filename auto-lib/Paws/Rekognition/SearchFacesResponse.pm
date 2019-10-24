# Generated from json/callresult_class.tt

package Paws::Rekognition::SearchFacesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_FaceMatch/;
  has FaceMatches => (is => 'ro', isa => ArrayRef[Rekognition_FaceMatch]);
  has FaceModelVersion => (is => 'ro', isa => Str);
  has SearchedFaceId => (is => 'ro', isa => Str);

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
               'SearchedFaceId' => {
                                     'type' => 'Str'
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

Paws::Rekognition::SearchFacesResponse

=head1 ATTRIBUTES


=head2 FaceMatches => ArrayRef[Rekognition_FaceMatch]

An array of faces that matched the input face, along with the
confidence in the match.


=head2 FaceModelVersion => Str

Version number of the face detection model associated with the input
collection (C<CollectionId>).


=head2 SearchedFaceId => Str

ID of the face that was searched for matches in a collection.


=head2 _request_id => Str


=cut

1;