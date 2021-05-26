
package Paws::Forecast::ListForecastsResponse;
  use Moose;
  has Forecasts => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::ForecastSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListForecastsResponse

=head1 ATTRIBUTES


=head2 Forecasts => ArrayRef[L<Paws::Forecast::ForecastSummary>]

An array of objects that summarize each forecast's properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;