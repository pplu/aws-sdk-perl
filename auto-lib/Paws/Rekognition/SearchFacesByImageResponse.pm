
package Paws::Rekognition::SearchFacesByImageResponse;
  use Moose;
  has FaceMatches => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::FaceMatch]');
  has FaceModelVersion => (is => 'ro', isa => 'Str');
  has SearchedFaceBoundingBox => (is => 'ro', isa => 'Paws::Rekognition::BoundingBox');
  has SearchedFaceConfidence => (is => 'ro', isa => 'Num');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchFacesByImageResponse

=head1 ATTRIBUTES


=head2 FaceMatches => ArrayRef[L<Paws::Rekognition::FaceMatch>]

An array of faces that match the input face, along with the confidence
in the match.


=head2 FaceModelVersion => Str

Version number of the face detection model associated with the input
collection (C<CollectionId>).


=head2 SearchedFaceBoundingBox => L<Paws::Rekognition::BoundingBox>

The bounding box around the face in the input image that Amazon
Rekognition used for the search.


=head2 SearchedFaceConfidence => Num

The level of confidence that the C<searchedFaceBoundingBox>, contains a
face.


=head2 _request_id => Str


=cut

1;