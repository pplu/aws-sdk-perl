
package Paws::CloudWatchLogs::DescribeMetricFiltersResponse;
  use Moose;
  has MetricFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::MetricFilter]', traits => ['Unwrapped'], xmlname => 'metricFilters' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeMetricFiltersResponse

=head1 ATTRIBUTES


=head2 MetricFilters => ArrayRef[L<Paws::CloudWatchLogs::MetricFilter>]

The metric filters.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;