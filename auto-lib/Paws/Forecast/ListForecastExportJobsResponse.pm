
package Paws::Forecast::ListForecastExportJobsResponse;
  use Moose;
  has ForecastExportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::ForecastExportJobSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListForecastExportJobsResponse

=head1 ATTRIBUTES


=head2 ForecastExportJobs => ArrayRef[L<Paws::Forecast::ForecastExportJobSummary>]

An array of objects that summarize each export job's properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;