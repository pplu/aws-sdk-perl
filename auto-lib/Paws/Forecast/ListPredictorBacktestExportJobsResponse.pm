
package Paws::Forecast::ListPredictorBacktestExportJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PredictorBacktestExportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::PredictorBacktestExportJobSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListPredictorBacktestExportJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Returns this token if the response is truncated. To retrieve the next
set of results, use the token in the next request.


=head2 PredictorBacktestExportJobs => ArrayRef[L<Paws::Forecast::PredictorBacktestExportJobSummary>]

An array of objects that summarize the properties of each predictor
backtest export job.


=head2 _request_id => Str


=cut

1;