
package Paws::Personalize::ListCampaignsResponse;
  use Moose;
  has Campaigns => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::CampaignSummary]', traits => ['NameInRequest'], request_name => 'campaigns' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListCampaignsResponse

=head1 ATTRIBUTES


=head2 Campaigns => ArrayRef[L<Paws::Personalize::CampaignSummary>]

A list of the campaigns.


=head2 NextToken => Str

A token for getting the next set of campaigns (if they exist).


=head2 _request_id => Str


=cut

1;