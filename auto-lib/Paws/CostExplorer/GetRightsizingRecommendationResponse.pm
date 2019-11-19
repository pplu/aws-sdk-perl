# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetRightsizingRecommendationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_RightsizingRecommendationSummary CostExplorer_RightsizingRecommendation CostExplorer_RightsizingRecommendationMetadata/;
  has Metadata => (is => 'ro', isa => CostExplorer_RightsizingRecommendationMetadata);
  has NextPageToken => (is => 'ro', isa => Str);
  has RightsizingRecommendations => (is => 'ro', isa => ArrayRef[CostExplorer_RightsizingRecommendation]);
  has Summary => (is => 'ro', isa => CostExplorer_RightsizingRecommendationSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Metadata' => {
                               'class' => 'Paws::CostExplorer::RightsizingRecommendationMetadata',
                               'type' => 'CostExplorer_RightsizingRecommendationMetadata'
                             },
               'Summary' => {
                              'type' => 'CostExplorer_RightsizingRecommendationSummary',
                              'class' => 'Paws::CostExplorer::RightsizingRecommendationSummary'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RightsizingRecommendations' => {
                                                 'type' => 'ArrayRef[CostExplorer_RightsizingRecommendation]',
                                                 'class' => 'Paws::CostExplorer::RightsizingRecommendation'
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

Paws::CostExplorer::GetRightsizingRecommendationResponse

=head1 ATTRIBUTES


=head2 Metadata => CostExplorer_RightsizingRecommendationMetadata

Information regarding this specific recommendation set.


=head2 NextPageToken => Str

The token to retrieve the next set of results.


=head2 RightsizingRecommendations => ArrayRef[CostExplorer_RightsizingRecommendation]

Recommendations to rightsize resources.


=head2 Summary => CostExplorer_RightsizingRecommendationSummary

Summary of this recommendation set.


=head2 _request_id => Str


=cut

1;