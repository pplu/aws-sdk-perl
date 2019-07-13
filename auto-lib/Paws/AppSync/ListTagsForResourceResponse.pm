
package Paws::AppSync::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::AppSync::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::AppSync::TagMap>

A C<TagMap> object.


=head2 _request_id => Str


=cut

