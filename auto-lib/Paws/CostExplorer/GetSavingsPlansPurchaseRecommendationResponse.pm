# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetSavingsPlansPurchaseRecommendationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CostExplorer::Types qw/CostExplorer_SavingsPlansPurchaseRecommendation CostExplorer_SavingsPlansPurchaseRecommendationMetadata/;
  has Metadata => (is => 'ro', isa => CostExplorer_SavingsPlansPurchaseRecommendationMetadata);
  has NextPageToken => (is => 'ro', isa => Str);
  has SavingsPlansPurchaseRecommendation => (is => 'ro', isa => CostExplorer_SavingsPlansPurchaseRecommendation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Metadata' => {
                               'type' => 'CostExplorer_SavingsPlansPurchaseRecommendationMetadata',
                               'class' => 'Paws::CostExplorer::SavingsPlansPurchaseRecommendationMetadata'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'SavingsPlansPurchaseRecommendation' => {
                                                         'type' => 'CostExplorer_SavingsPlansPurchaseRecommendation',
                                                         'class' => 'Paws::CostExplorer::SavingsPlansPurchaseRecommendation'
                                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansPurchaseRecommendationResponse

=head1 ATTRIBUTES


=head2 Metadata => CostExplorer_SavingsPlansPurchaseRecommendationMetadata

Information regarding this specific recommendation set.


=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 SavingsPlansPurchaseRecommendation => CostExplorer_SavingsPlansPurchaseRecommendation

Contains your request parameters, Savings Plan Recommendations Summary,
and Details.


=head2 _request_id => Str


=cut

1;