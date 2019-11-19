# Generated from json/callresult_class.tt

package Paws::Forecast::CreateForecastResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw//;
  has ForecastArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ForecastArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateForecastResponse

=head1 ATTRIBUTES


=head2 ForecastArn => Str

The Amazon Resource Name (ARN) of the forecast.


=head2 _request_id => Str


=cut

1;