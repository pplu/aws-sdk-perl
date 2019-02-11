
package Paws::SageMaker::SearchResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::SearchRecord]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SearchResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of the previous C<Search> request was truncated, the
response includes a NextToken. To retrieve the next set of results, use
the token in the next request.


=head2 Results => ArrayRef[L<Paws::SageMaker::SearchRecord>]

A list of C<SearchResult> objects.


=head2 _request_id => Str


=cut

1;