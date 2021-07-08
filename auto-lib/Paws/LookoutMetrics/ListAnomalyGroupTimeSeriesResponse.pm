
package Paws::LookoutMetrics::ListAnomalyGroupTimeSeriesResponse;
  use Moose;
  has AnomalyGroupId => (is => 'ro', isa => 'Str');
  has MetricName => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has TimeSeriesList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::TimeSeries]');
  has TimestampList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListAnomalyGroupTimeSeriesResponse

=head1 ATTRIBUTES


=head2 AnomalyGroupId => Str

The ID of the anomaly group.


=head2 MetricName => Str

The name of the measure field.


=head2 NextToken => Str

The pagination token that's included if more results are available.


=head2 TimeSeriesList => ArrayRef[L<Paws::LookoutMetrics::TimeSeries>]

A list of anomalous metrics.


=head2 TimestampList => ArrayRef[Str|Undef]

Timestamps for the anomalous metrics.


=head2 _request_id => Str


=cut

