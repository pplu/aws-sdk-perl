
package Paws::Personalize::CreateCampaignResponse;
  use Moose;
  has CampaignArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'campaignArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateCampaignResponse

=head1 ATTRIBUTES


=head2 CampaignArn => Str

The Amazon Resource Name (ARN) of the campaign.


=head2 _request_id => Str


=cut

1;