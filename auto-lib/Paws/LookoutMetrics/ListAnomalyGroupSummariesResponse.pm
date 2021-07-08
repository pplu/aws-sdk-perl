
package Paws::LookoutMetrics::ListAnomalyGroupSummariesResponse;
  use Moose;
  has AnomalyGroupStatistics => (is => 'ro', isa => 'Paws::LookoutMetrics::AnomalyGroupStatistics');
  has AnomalyGroupSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::AnomalyGroupSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListAnomalyGroupSummariesResponse

=head1 ATTRIBUTES


=head2 AnomalyGroupStatistics => L<Paws::LookoutMetrics::AnomalyGroupStatistics>

Aggregated details about the anomaly groups.


=head2 AnomalyGroupSummaryList => ArrayRef[L<Paws::LookoutMetrics::AnomalyGroupSummary>]

A list of anomaly group summaries.


=head2 NextToken => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

