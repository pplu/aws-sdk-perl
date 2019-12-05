
package Paws::ComputeOptimizer::GetRecommendationSummariesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RecommendationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::RecommendationSummary]', traits => ['NameInRequest'], request_name => 'recommendationSummaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetRecommendationSummariesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to advance to the next page of recommendation
summaries.

This value is null when there are no more pages of recommendation
summaries to return.


=head2 RecommendationSummaries => ArrayRef[L<Paws::ComputeOptimizer::RecommendationSummary>]

An array of objects that summarize a recommendation.


=head2 _request_id => Str


=cut

1;