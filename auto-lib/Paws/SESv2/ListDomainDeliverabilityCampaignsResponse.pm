
package Paws::SESv2::ListDomainDeliverabilityCampaignsResponse;
  use Moose;
  has DomainDeliverabilityCampaigns => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::DomainDeliverabilityCampaign]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListDomainDeliverabilityCampaignsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainDeliverabilityCampaigns => ArrayRef[L<Paws::SESv2::DomainDeliverabilityCampaign>]

An array of responses, one for each campaign that used the domain to
send email during the specified time range.


=head2 NextToken => Str

A token thatE<rsquo>s returned from a previous call to the
C<ListDomainDeliverabilityCampaigns> operation. This token indicates
the position of the campaign in the list of campaigns.


=head2 _request_id => Str


=cut

