
package Paws::Connect::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Connect::TagMap>

Information about the tags.


=head2 _request_id => Str


=cut

