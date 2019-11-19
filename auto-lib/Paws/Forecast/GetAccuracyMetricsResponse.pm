# Generated from json/callresult_class.tt

package Paws::Forecast::GetAccuracyMetricsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_EvaluationResult/;
  has PredictorEvaluationResults => (is => 'ro', isa => ArrayRef[Forecast_EvaluationResult]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PredictorEvaluationResults' => {
                                                 'class' => 'Paws::Forecast::EvaluationResult',
                                                 'type' => 'ArrayRef[Forecast_EvaluationResult]'
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

Paws::Forecast::GetAccuracyMetricsResponse

=head1 ATTRIBUTES


=head2 PredictorEvaluationResults => ArrayRef[Forecast_EvaluationResult]

An array of results from evaluating the predictor.


=head2 _request_id => Str


=cut

1;