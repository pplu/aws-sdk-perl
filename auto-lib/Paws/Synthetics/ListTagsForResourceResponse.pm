
package Paws::Synthetics::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Synthetics::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Synthetics::TagMap>

The list of tag keys and values associated with the canary that you
specified.


=head2 _request_id => Str


=cut

