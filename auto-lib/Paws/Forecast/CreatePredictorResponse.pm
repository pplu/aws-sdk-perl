# Generated from json/callresult_class.tt

package Paws::Forecast::CreatePredictorResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw//;
  has PredictorArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PredictorArn' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreatePredictorResponse

=head1 ATTRIBUTES


=head2 PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor.


=head2 _request_id => Str


=cut

1;