
package Paws::Personalize::DescribeCampaignResponse;
  use Moose;
  has Campaign => (is => 'ro', isa => 'Paws::Personalize::Campaign', traits => ['NameInRequest'], request_name => 'campaign' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeCampaignResponse

=head1 ATTRIBUTES


=head2 Campaign => L<Paws::Personalize::Campaign>

The properties of the campaign.


=head2 _request_id => Str


=cut

1;