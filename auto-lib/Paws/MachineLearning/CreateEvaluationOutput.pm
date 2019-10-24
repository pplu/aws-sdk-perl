# Generated from json/callresult_class.tt

package Paws::MachineLearning::CreateEvaluationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw//;
  has EvaluationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EvaluationId' => {
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

Paws::MachineLearning::CreateEvaluationOutput

=head1 ATTRIBUTES


=head2 EvaluationId => Str

The user-supplied ID that uniquely identifies the C<Evaluation>. This
value should be identical to the value of the C<EvaluationId> in the
request.


=head2 _request_id => Str


=cut

1;