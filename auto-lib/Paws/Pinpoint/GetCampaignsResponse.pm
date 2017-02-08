
package Paws::Pinpoint::GetCampaignsResponse;
  use Moose;
  has CampaignsResponse => (is => 'ro', isa => 'Paws::Pinpoint::CampaignsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CampaignsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetCampaignsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignsResponse => L<Paws::Pinpoint::CampaignsResponse>




=head2 _request_id => Str


=cut

