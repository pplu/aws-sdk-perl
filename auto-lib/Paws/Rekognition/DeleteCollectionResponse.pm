
package Paws::Rekognition::DeleteCollectionResponse;
  use Moose;
  has StatusCode => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DeleteCollectionResponse

=head1 ATTRIBUTES


=head2 StatusCode => Int

HTTP status code that indicates the result of the operation.


=head2 _request_id => Str


=cut

1;