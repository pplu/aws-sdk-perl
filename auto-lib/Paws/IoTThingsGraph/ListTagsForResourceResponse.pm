
package Paws::IoTThingsGraph::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTThingsGraph::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that specifies the next page of results to return.


=head2 Tags => ArrayRef[L<Paws::IoTThingsGraph::Tag>]

List of tags returned by the C<ListTagsForResource> operation.


=head2 _request_id => Str


=cut

1;