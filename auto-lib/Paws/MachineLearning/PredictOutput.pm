# Generated from json/callresult_class.tt

package Paws::MachineLearning::PredictOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw/MachineLearning_Prediction/;
  has Prediction => (is => 'ro', isa => MachineLearning_Prediction);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Prediction' => {
                                 'class' => 'Paws::MachineLearning::Prediction',
                                 'type' => 'MachineLearning_Prediction'
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

Paws::MachineLearning::PredictOutput

=head1 ATTRIBUTES


=head2 Prediction => MachineLearning_Prediction




=head2 _request_id => Str


=cut

1;