
package Paws::Detective::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Detective::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Detective::TagMap>

The tag values that are assigned to the behavior graph. The request
returns up to 50 tag values.


=head2 _request_id => Str


=cut

