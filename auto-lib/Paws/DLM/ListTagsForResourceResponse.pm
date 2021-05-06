
package Paws::DLM::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::DLM::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::DLM::TagMap>

Information about the tags.


=head2 _request_id => Str


=cut

