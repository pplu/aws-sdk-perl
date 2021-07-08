
package Paws::CodeGuruReviewer::ListRecommendationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RecommendationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruReviewer::RecommendationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListRecommendationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token.


=head2 RecommendationSummaries => ArrayRef[L<Paws::CodeGuruReviewer::RecommendationSummary>]

List of recommendations for the requested code review.


=head2 _request_id => Str


=cut

