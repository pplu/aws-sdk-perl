
package Paws::WorkLink::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::WorkLink::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::WorkLink::TagMap>

The tags attached to the resource. A tag is a key-value pair.


=head2 _request_id => Str


=cut

