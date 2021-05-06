
package Paws::Rekognition::ListFacesResponse;
  use Moose;
  has FaceModelVersion => (is => 'ro', isa => 'Str');
  has Faces => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Face]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListFacesResponse

=head1 ATTRIBUTES


=head2 FaceModelVersion => Str

Version number of the face detection model associated with the input
collection (C<CollectionId>).


=head2 Faces => ArrayRef[L<Paws::Rekognition::Face>]

An array of C<Face> objects.


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition returns this token
that you can use in the subsequent request to retrieve the next set of
faces.


=head2 _request_id => Str


=cut

1;