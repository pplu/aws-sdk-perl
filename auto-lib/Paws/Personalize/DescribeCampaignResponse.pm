# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeCampaignResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_Campaign/;
  has Campaign => (is => 'ro', isa => Personalize_Campaign);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Campaign' => 'campaign'
                     },
  'types' => {
               'Campaign' => {
                               'type' => 'Personalize_Campaign',
                               'class' => 'Paws::Personalize::Campaign'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeCampaignResponse

=head1 ATTRIBUTES


=head2 Campaign => Personalize_Campaign

The properties of the campaign.


=head2 _request_id => Str


=cut

1;