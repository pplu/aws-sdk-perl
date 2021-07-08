
package Paws::CostExplorer::GetRightsizingRecommendationResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::CostExplorer::RightsizingRecommendationConfiguration');
  has Metadata => (is => 'ro', isa => 'Paws::CostExplorer::RightsizingRecommendationMetadata');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has RightsizingRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::RightsizingRecommendation]');
  has Summary => (is => 'ro', isa => 'Paws::CostExplorer::RightsizingRecommendationSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetRightsizingRecommendationResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::CostExplorer::RightsizingRecommendationConfiguration>

Enables you to customize recommendations across two attributes. You can
choose to view recommendations for instances within the same instance
families or across different instance families. You can also choose to
view your estimated savings associated with recommendations with
consideration of existing Savings Plans or RI benefits, or neither.


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