
package Paws::Pinpoint::GetCampaignDateRangeKpiResponse;
  use Moose;
  has CampaignDateRangeKpiResponse => (is => 'ro', isa => 'Paws::Pinpoint::CampaignDateRangeKpiResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CampaignDateRangeKpiResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetCampaignDateRangeKpiResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignDateRangeKpiResponse => L<Paws::Pinpoint::CampaignDateRangeKpiResponse>




=head2 _request_id => Str


=cut

