
package Paws::SESv2::GetDomainDeliverabilityCampaignResponse;
  use Moose;
  has DomainDeliverabilityCampaign => (is => 'ro', isa => 'Paws::SESv2::DomainDeliverabilityCampaign', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDomainDeliverabilityCampaignResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainDeliverabilityCampaign => L<Paws::SESv2::DomainDeliverabilityCampaign>

An object that contains the deliverability data for the campaign.


=head2 _request_id => Str


=cut

