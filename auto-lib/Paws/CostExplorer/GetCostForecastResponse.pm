
package Paws::CostExplorer::GetCostForecastResponse;
  use Moose;
  has ForecastResultsByTime => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::ForecastResult]');
  has Total => (is => 'ro', isa => 'Paws::CostExplorer::MetricValue');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCostForecastResponse

=head1 ATTRIBUTES


=head2 ForecastResultsByTime => ArrayRef[L<Paws::CostExplorer::ForecastResult>]

The forecasts for your query, in order. For C<DAILY> forecasts, this is
a list of days. For C<MONTHLY> forecasts, this is a list of months.


=head2 Total => L<Paws::CostExplorer::MetricValue>

How much you are forecasted to spend over the forecast period, in
C<USD>.


=head2 _request_id => Str


=cut

1;