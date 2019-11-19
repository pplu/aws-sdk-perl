# Generated from json/callresult_class.tt

package Paws::MachineLearning::UpdateBatchPredictionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw//;
  has BatchPredictionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BatchPredictionId' => {
                                        'type' => 'Str'
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

Paws::MachineLearning::UpdateBatchPredictionOutput

=head1 ATTRIBUTES


=head2 BatchPredictionId => Str

The ID assigned to the C<BatchPrediction> during creation. This value
should be identical to the value of the C<BatchPredictionId> in the
request.


=head2 _request_id => Str


=cut

1;