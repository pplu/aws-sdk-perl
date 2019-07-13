
package Paws::CodePipeline::ListTagsForResourceOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned and can be used in a subsequent API call to
return the next page of the list. However, the ListTagsforResource call
lists all available tags in one call and does not use pagination.


=head2 Tags => ArrayRef[L<Paws::CodePipeline::Tag>]

The tags for the resource.


=head2 _request_id => Str


=cut

1;