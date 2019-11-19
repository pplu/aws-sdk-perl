# Generated from json/callresult_class.tt

package Paws::Forecast::ListForecastsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_ForecastSummary/;
  has Forecasts => (is => 'ro', isa => ArrayRef[Forecast_ForecastSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Forecasts' => {
                                'type' => 'ArrayRef[Forecast_ForecastSummary]',
                                'class' => 'Paws::Forecast::ForecastSummary'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListForecastsResponse

=head1 ATTRIBUTES


=head2 Forecasts => ArrayRef[Forecast_ForecastSummary]

An array of objects that summarize each forecast's properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;