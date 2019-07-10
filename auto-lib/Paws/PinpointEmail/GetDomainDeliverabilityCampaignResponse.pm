
package Paws::PinpointEmail::GetDomainDeliverabilityCampaignResponse;
  use Moose;
  has DomainDeliverabilityCampaign => (is => 'ro', isa => 'Paws::PinpointEmail::DomainDeliverabilityCampaign', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDomainDeliverabilityCampaignResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainDeliverabilityCampaign => L<Paws::PinpointEmail::DomainDeliverabilityCampaign>

An object that contains the deliverability data for the campaign.


=head2 _request_id => Str


=cut

