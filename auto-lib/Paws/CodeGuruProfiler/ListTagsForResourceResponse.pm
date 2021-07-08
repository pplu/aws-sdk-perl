
package Paws::CodeGuruProfiler::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CodeGuruProfiler::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CodeGuruProfiler::TagsMap>

The list of tags assigned to the specified resource. This is the list
of tags returned in the response.


=head2 _request_id => Str


=cut

