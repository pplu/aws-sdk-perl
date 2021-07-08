
package Paws::Rekognition::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Rekognition::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Rekognition::TagMap>

A list of key-value tags assigned to the resource.


=head2 _request_id => Str


=cut

1;