# Generated from json/callresult_class.tt

package Paws::Personalize::UpdateCampaignResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has CampaignArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CampaignArn' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
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

Paws::Personalize::UpdateCampaignResponse

=head1 ATTRIBUTES


=head2 CampaignArn => Str

The same campaign ARN as given in the request.


=head2 _request_id => Str


=cut

1;