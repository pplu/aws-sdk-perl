
package Paws::AccessAnalyzer::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::AccessAnalyzer::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::AccessAnalyzer::TagsMap>

The tags that are applied to the specified resource.


=head2 _request_id => Str


=cut

