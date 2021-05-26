
package Paws::CostExplorer::GetSavingsPlansPurchaseRecommendationResponse;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::CostExplorer::SavingsPlansPurchaseRecommendationMetadata');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has SavingsPlansPurchaseRecommendation => (is => 'ro', isa => 'Paws::CostExplorer::SavingsPlansPurchaseRecommendation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansPurchaseRecommendationResponse

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::CostExplorer::SavingsPlansPurchaseRecommendationMetadata>

Information regarding this specific recommendation set.


=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 SavingsPlansPurchaseRecommendation => L<Paws::CostExplorer::SavingsPlansPurchaseRecommendation>

Contains your request parameters, Savings Plan Recommendations Summary,
and Details.


=head2 _request_id => Str


=cut

1;