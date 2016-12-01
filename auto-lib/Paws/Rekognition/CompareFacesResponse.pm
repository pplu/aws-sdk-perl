
package Paws::Rekognition::CompareFacesResponse;
  use Moose;
  has FaceMatches => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::CompareFacesMatch]');
  has SourceImageFace => (is => 'ro', isa => 'Paws::Rekognition::ComparedSourceImageFace');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CompareFacesResponse

=head1 ATTRIBUTES


=head2 FaceMatches => ArrayRef[L<Paws::Rekognition::CompareFacesMatch>]

Provides an array of C<CompareFacesMatch > objects. Each object
provides the bounding box, confidence that the bounding box contains a
face, and the similarity between the face in the bounding box and the
face in the source image.


=head2 SourceImageFace => L<Paws::Rekognition::ComparedSourceImageFace>

The face from the source image that was used for comparison.


=head2 _request_id => Str


=cut

1;