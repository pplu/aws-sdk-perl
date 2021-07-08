
package Paws::Braket::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Braket::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Braket::TagsMap>

Displays the key, value pairs of tags associated with this resource.


=head2 _request_id => Str


=cut

