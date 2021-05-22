
package Paws::PersonalizeRuntime::GetPersonalizedRankingResponse;
  use Moose;
  has PersonalizedRanking => (is => 'ro', isa => 'ArrayRef[Paws::PersonalizeRuntime::PredictedItem]', traits => ['NameInRequest'], request_name => 'personalizedRanking');
  has RecommendationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommendationId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetPersonalizedRankingResponse

=head1 ATTRIBUTES


=head2 PersonalizedRanking => ArrayRef[L<Paws::PersonalizeRuntime::PredictedItem>]

A list of items in order of most likely interest to the user. The
maximum is 500.


=head2 RecommendationId => Str

The ID of the recommendation.


=head2 _request_id => Str


=cut

