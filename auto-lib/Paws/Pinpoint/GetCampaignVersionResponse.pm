
package Paws::Pinpoint::GetCampaignVersionResponse;
  use Moose;
  has CampaignResponse => (is => 'ro', isa => 'Paws::Pinpoint::CampaignResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CampaignResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetCampaignVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignResponse => L<Paws::Pinpoint::CampaignResponse>




=head2 _request_id => Str


=cut

