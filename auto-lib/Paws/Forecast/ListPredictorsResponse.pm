# Generated from json/callresult_class.tt

package Paws::Forecast::ListPredictorsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_PredictorSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Predictors => (is => 'ro', isa => ArrayRef[Forecast_PredictorSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Predictors' => {
                                 'class' => 'Paws::Forecast::PredictorSummary',
                                 'type' => 'ArrayRef[Forecast_PredictorSummary]'
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

Paws::Forecast::ListPredictorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 Predictors => ArrayRef[Forecast_PredictorSummary]

An array of objects that summarize each predictor's properties.


=head2 _request_id => Str


=cut

1;