
package Paws::SecurityHub::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::SecurityHub::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::SecurityHub::TagMap>

The tags associated with a resource.


=head2 _request_id => Str


=cut

