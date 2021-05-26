
package Paws::Pinpoint::GetJourneyExecutionMetricsResponse;
  use Moose;
  has JourneyExecutionMetricsResponse => (is => 'ro', isa => 'Paws::Pinpoint::JourneyExecutionMetricsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'JourneyExecutionMetricsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetJourneyExecutionMetricsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JourneyExecutionMetricsResponse => L<Paws::Pinpoint::JourneyExecutionMetricsResponse>




=head2 _request_id => Str


=cut

