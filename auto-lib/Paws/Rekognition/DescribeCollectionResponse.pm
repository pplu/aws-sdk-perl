
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




=head2 CreationTimestamp => Str




=head2 FaceCount => Int




=head2 FaceModelVersion => Str




=head2 _request_id => Str


=cut

1;