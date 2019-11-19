# Generated from json/callresult_class.tt

package Paws::Forecast::CreateForecastExportJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw//;
  has ForecastExportJobArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ForecastExportJobArn' => {
                                           'type' => 'Str'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateForecastExportJobResponse

=head1 ATTRIBUTES


=head2 ForecastExportJobArn => Str

The Amazon Resource Name (ARN) of the export job.


=head2 _request_id => Str


=cut

1;