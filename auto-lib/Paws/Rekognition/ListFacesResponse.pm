# Generated from json/callresult_class.tt

package Paws::Rekognition::ListFacesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_Face/;
  has FaceModelVersion => (is => 'ro', isa => Str);
  has Faces => (is => 'ro', isa => ArrayRef[Rekognition_Face]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Faces' => {
                            'class' => 'Paws::Rekognition::Face',
                            'type' => 'ArrayRef[Rekognition_Face]'
                          },
               'FaceModelVersion' => {
                                       'type' => 'Str'
                                     },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListFacesResponse

=head1 ATTRIBUTES


=head2 FaceModelVersion => Str

Version number of the face detection model associated with the input
collection (C<CollectionId>).


=head2 Faces => ArrayRef[Rekognition_Face]

An array of C<Face> objects.


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition returns this token
that you can use in the subsequent request to retrieve the next set of
faces.


=head2 _request_id => Str


=cut

1;