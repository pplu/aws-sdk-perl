
package Paws::Rekognition::SearchFacesResponse;
  use Moose;
  has FaceMatches => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::FaceMatch]');
  has FaceModelVersion => (is => 'ro', isa => 'Str');
  has SearchedFaceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchFacesResponse

=head1 ATTRIBUTES


=head2 FaceMatches => ArrayRef[L<Paws::Rekognition::FaceMatch>]

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