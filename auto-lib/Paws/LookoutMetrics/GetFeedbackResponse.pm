
package Paws::LookoutMetrics::GetFeedbackResponse;
  use Moose;
  has AnomalyGroupTimeSeriesFeedback => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::TimeSeriesFeedback]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::GetFeedbackResponse

=head1 ATTRIBUTES


=head2 AnomalyGroupTimeSeriesFeedback => ArrayRef[L<Paws::LookoutMetrics::TimeSeriesFeedback>]

Feedback for an anomalous metric.


=head2 NextToken => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

