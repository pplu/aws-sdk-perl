# Generated from json/callresult_class.tt

package Paws::MachineLearning::UpdateEvaluationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw//;
  has EvaluationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EvaluationId' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::UpdateEvaluationOutput

=head1 ATTRIBUTES


=head2 EvaluationId => Str

The ID assigned to the C<Evaluation> during creation. This value should
be identical to the value of the C<Evaluation> in the request.


=head2 _request_id => Str


=cut

1;