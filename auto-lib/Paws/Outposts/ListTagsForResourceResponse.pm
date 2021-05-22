
package Paws::Outposts::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Outposts::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Outposts::TagMap>

The resource tags.


=head2 _request_id => Str


=cut

