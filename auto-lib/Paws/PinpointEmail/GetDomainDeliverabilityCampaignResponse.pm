
package Paws::PinpointEmail::GetDomainDeliverabilityCampaignResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_DomainDeliverabilityCampaign/;
  has DomainDeliverabilityCampaign => (is => 'ro', isa => PinpointEmail_DomainDeliverabilityCampaign, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainDeliverabilityCampaign' => 1
                  },
  'types' => {
               'DomainDeliverabilityCampaign' => {
                                                   'class' => 'Paws::PinpointEmail::DomainDeliverabilityCampaign',
                                                   'type' => 'PinpointEmail_DomainDeliverabilityCampaign'
                                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDomainDeliverabilityCampaignResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainDeliverabilityCampaign => PinpointEmail_DomainDeliverabilityCampaign

An object that contains the deliverability data for the campaign.


=head2 _request_id => Str


=cut

