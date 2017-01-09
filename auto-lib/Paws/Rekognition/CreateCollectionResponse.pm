
package Paws::Rekognition::CreateCollectionResponse;
  use Moose;
  has CollectionArn => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateCollectionResponse

=head1 ATTRIBUTES


=head2 CollectionArn => Str

Amazon Resource Name (ARN) of the collection. You can use this to
manage permissions on your resources.


=head2 StatusCode => Int

HTTP status code indicating the result of the operation.


=head2 _request_id => Str


=cut

1;