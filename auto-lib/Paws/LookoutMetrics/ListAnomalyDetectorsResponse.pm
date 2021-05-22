
package Paws::LookoutMetrics::ListAnomalyDetectorsResponse;
  use Moose;
  has AnomalyDetectorSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::AnomalyDetectorSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListAnomalyDetectorsResponse

=head1 ATTRIBUTES


=head2 AnomalyDetectorSummaryList => ArrayRef[L<Paws::LookoutMetrics::AnomalyDetectorSummary>]

A list of anomaly detectors in the account in the current region.


=head2 NextToken => Str

If the response is truncated, the service returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

