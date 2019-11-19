# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetReservationPurchaseRecommendationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_ReservationPurchaseRecommendation CostExplorer_ReservationPurchaseRecommendationMetadata/;
  has Metadata => (is => 'ro', isa => CostExplorer_ReservationPurchaseRecommendationMetadata);
  has NextPageToken => (is => 'ro', isa => Str);
  has Recommendations => (is => 'ro', isa => ArrayRef[CostExplorer_ReservationPurchaseRecommendation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Recommendations' => {
                                      'class' => 'Paws::CostExplorer::ReservationPurchaseRecommendation',
                                      'type' => 'ArrayRef[CostExplorer_ReservationPurchaseRecommendation]'
                                    },
               'Metadata' => {
                               'class' => 'Paws::CostExplorer::ReservationPurchaseRecommendationMetadata',
                               'type' => 'CostExplorer_ReservationPurchaseRecommendationMetadata'
                             },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationPurchaseRecommendationResponse

=head1 ATTRIBUTES


=head2 Metadata => CostExplorer_ReservationPurchaseRecommendationMetadata

Information about this specific recommendation call, such as the time
stamp for when Cost Explorer generated this recommendation.


=head2 NextPageToken => Str

The pagination token for the next set of retrievable results.


=head2 Recommendations => ArrayRef[CostExplorer_ReservationPurchaseRecommendation]

Recommendations for reservations to purchase.


=head2 _request_id => Str


=cut

1;