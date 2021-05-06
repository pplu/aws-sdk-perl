
package Paws::Personalize::UpdateCampaignResponse;
  use Moose;
  has CampaignArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'campaignArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::UpdateCampaignResponse

=head1 ATTRIBUTES


=head2 CampaignArn => Str

The same campaign ARN as given in the request.


=head2 _request_id => Str


=cut

1;