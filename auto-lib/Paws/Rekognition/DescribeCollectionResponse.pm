
package Paws::Rekognition::DescribeCollectionResponse;
  use Moose;
  has CollectionARN => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has FaceCount => (is => 'ro', isa => 'Int');
  has FaceModelVersion => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DescribeCollectionResponse

=head1 ATTRIBUTES


=head2 CollectionARN => Str

The Amazon Resource Name (ARN) of the collection.


=head2 CreationTimestamp => Str

The number of milliseconds since the Unix epoch time until the creation
of the collection. The Unix epoch time is 00:00:00 Coordinated
Universal Time (UTC), Thursday, 1 January 1970.


=head2 FaceCount => Int

The number of faces that are indexed into the collection. To index
faces into a collection, use IndexFaces.


=head2 FaceModelVersion => Str

The version of the face model that's used by the collection for face
detection.

For more information, see Model Versioning in the Amazon Rekognition
Developer Guide.


=head2 _request_id => Str


=cut

1;