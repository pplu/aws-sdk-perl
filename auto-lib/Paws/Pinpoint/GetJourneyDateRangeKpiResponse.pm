
package Paws::Pinpoint::GetJourneyDateRangeKpiResponse;
  use Moose;
  has JourneyDateRangeKpiResponse => (is => 'ro', isa => 'Paws::Pinpoint::JourneyDateRangeKpiResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'JourneyDateRangeKpiResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetJourneyDateRangeKpiResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JourneyDateRangeKpiResponse => L<Paws::Pinpoint::JourneyDateRangeKpiResponse>




=head2 _request_id => Str


=cut

