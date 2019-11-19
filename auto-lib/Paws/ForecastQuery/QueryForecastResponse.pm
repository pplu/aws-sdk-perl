# Generated from json/callresult_class.tt

package Paws::ForecastQuery::QueryForecastResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ForecastQuery::Types qw/ForecastQuery_Forecast/;
  has Forecast => (is => 'ro', isa => ForecastQuery_Forecast);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Forecast' => {
                               'class' => 'Paws::ForecastQuery::Forecast',
                               'type' => 'ForecastQuery_Forecast'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ForecastQuery::QueryForecastResponse

=head1 ATTRIBUTES


=head2 Forecast => ForecastQuery_Forecast

The forecast.


=head2 _request_id => Str


=cut

1;