
package Paws::PersonalizeRuntime::GetRecommendationsResponse;
  use Moose;
  has ItemList => (is => 'ro', isa => 'ArrayRef[Paws::PersonalizeRuntime::PredictedItem]', traits => ['NameInRequest'], request_name => 'itemList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetRecommendationsResponse

=head1 ATTRIBUTES


=head2 ItemList => ArrayRef[L<Paws::PersonalizeRuntime::PredictedItem>]

A list of recommendations.


=head2 _request_id => Str


=cut

