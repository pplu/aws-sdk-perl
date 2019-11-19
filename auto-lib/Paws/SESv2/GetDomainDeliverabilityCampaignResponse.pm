
package Paws::SESv2::GetDomainDeliverabilityCampaignResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw/SESv2_DomainDeliverabilityCampaign/;
  has DomainDeliverabilityCampaign => (is => 'ro', isa => SESv2_DomainDeliverabilityCampaign, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainDeliverabilityCampaign' => 1
                  },
  'types' => {
               'DomainDeliverabilityCampaign' => {
                                                   'class' => 'Paws::SESv2::DomainDeliverabilityCampaign',
                                                   'type' => 'SESv2_DomainDeliverabilityCampaign'
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

Paws::SESv2::GetDomainDeliverabilityCampaignResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainDeliverabilityCampaign => SESv2_DomainDeliverabilityCampaign

An object that contains the deliverability data for the campaign.


=head2 _request_id => Str


=cut

