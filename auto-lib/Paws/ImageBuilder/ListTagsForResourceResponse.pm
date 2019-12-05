
package Paws::ImageBuilder::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ImageBuilder::TagMap>

The tags for the specified resource.


=head2 _request_id => Str


=cut

