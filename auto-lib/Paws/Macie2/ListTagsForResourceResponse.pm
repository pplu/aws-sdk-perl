
package Paws::Macie2::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that identifies the tags (keys and values)
that are associated with the resource.


=head2 _request_id => Str


=cut

