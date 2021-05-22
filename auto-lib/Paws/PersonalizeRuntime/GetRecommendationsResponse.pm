
package Paws::PersonalizeRuntime::GetRecommendationsResponse;
  use Moose;
  has ItemList => (is => 'ro', isa => 'ArrayRef[Paws::PersonalizeRuntime::PredictedItem]', traits => ['NameInRequest'], request_name => 'itemList');
  has RecommendationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommendationId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetRecommendationsResponse

=head1 ATTRIBUTES


=head2 ItemList => ArrayRef[L<Paws::PersonalizeRuntime::PredictedItem>]

A list of recommendations sorted in ascending order by prediction
score. There can be a maximum of 500 items in the list.


=head2 RecommendationId => Str

The ID of the recommendation.


=head2 _request_id => Str


=cut

