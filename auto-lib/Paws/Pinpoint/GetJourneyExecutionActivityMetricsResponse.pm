
package Paws::Pinpoint::GetJourneyExecutionActivityMetricsResponse;
  use Moose;
  has JourneyExecutionActivityMetricsResponse => (is => 'ro', isa => 'Paws::Pinpoint::JourneyExecutionActivityMetricsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'JourneyExecutionActivityMetricsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetJourneyExecutionActivityMetricsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JourneyExecutionActivityMetricsResponse => L<Paws::Pinpoint::JourneyExecutionActivityMetricsResponse>




=head2 _request_id => Str


=cut

