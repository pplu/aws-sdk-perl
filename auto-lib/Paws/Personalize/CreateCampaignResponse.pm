# Generated from json/callresult_class.tt

package Paws::Personalize::CreateCampaignResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has CampaignArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CampaignArn' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CampaignArn' => 'campaignArn'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateCampaignResponse

=head1 ATTRIBUTES


=head2 CampaignArn => Str

The Amazon Resource Name (ARN) of the campaign.


=head2 _request_id => Str


=cut

1;