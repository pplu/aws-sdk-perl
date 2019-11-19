# Generated from json/callresult_class.tt

package Paws::Forecast::ListForecastExportJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_ForecastExportJobSummary/;
  has ForecastExportJobs => (is => 'ro', isa => ArrayRef[Forecast_ForecastExportJobSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ForecastExportJobs' => {
                                         'type' => 'ArrayRef[Forecast_ForecastExportJobSummary]',
                                         'class' => 'Paws::Forecast::ForecastExportJobSummary'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListForecastExportJobsResponse

=head1 ATTRIBUTES


=head2 ForecastExportJobs => ArrayRef[Forecast_ForecastExportJobSummary]

An array of objects that summarize each export job's properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;