
package Paws::CostExplorer::GetReservationPurchaseRecommendationResponse;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::CostExplorer::ReservationPurchaseRecommendationMetadata');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::ReservationPurchaseRecommendation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationPurchaseRecommendationResponse

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::CostExplorer::ReservationPurchaseRecommendationMetadata>

Information about this specific recommendation call, such as the time
stamp for when Cost Explorer generated this recommendation.


=head2 NextPageToken => Str

The pagination token for the next set of retrievable results.


=head2 Recommendations => ArrayRef[L<Paws::CostExplorer::ReservationPurchaseRecommendation>]

Recommendations for reservations to purchase.


=head2 _request_id => Str


=cut

1;