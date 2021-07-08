
package Paws::CodeGuruReviewer::ListRecommendationFeedbackResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RecommendationFeedbackSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruReviewer::RecommendationFeedbackSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListRecommendationFeedbackResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If nextToken is returned, there are more results available. The value
of nextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page. Keep all
other arguments unchanged.


=head2 RecommendationFeedbackSummaries => ArrayRef[L<Paws::CodeGuruReviewer::RecommendationFeedbackSummary>]

Recommendation feedback summaries corresponding to the code review ARN.


=head2 _request_id => Str


=cut

