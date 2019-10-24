# Generated from json/callresult_class.tt

package Paws::Personalize::ListCampaignsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_CampaignSummary/;
  has Campaigns => (is => 'ro', isa => ArrayRef[Personalize_CampaignSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Campaigns' => {
                                'class' => 'Paws::Personalize::CampaignSummary',
                                'type' => 'ArrayRef[Personalize_CampaignSummary]'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Campaigns' => 'campaigns'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListCampaignsResponse

=head1 ATTRIBUTES


=head2 Campaigns => ArrayRef[Personalize_CampaignSummary]

A list of the campaigns.


=head2 NextToken => Str

A token for getting the next set of campaigns (if they exist).


=head2 _request_id => Str


=cut

1;