
package Paws::Robomaker::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Robomaker::TagMap>

The list of all tags added to the specified resource.


=head2 _request_id => Str


=cut

