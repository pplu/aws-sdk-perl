
package Paws::CostExplorer::GetRightsizingRecommendationResponse;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::CostExplorer::RightsizingRecommendationMetadata');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has RightsizingRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::RightsizingRecommendation]');
  has Summary => (is => 'ro', isa => 'Paws::CostExplorer::RightsizingRecommendationSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetRightsizingRecommendationResponse

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::CostExplorer::RightsizingRecommendationMetadata>

Information regarding this specific recommendation set.


=head2 NextPageToken => Str

The token to retrieve the next set of results.


=head2 RightsizingRecommendations => ArrayRef[L<Paws::CostExplorer::RightsizingRecommendation>]

Recommendations to rightsize resources.


=head2 Summary => L<Paws::CostExplorer::RightsizingRecommendationSummary>

Summary of this recommendation set.


=head2 _request_id => Str


=cut

1;