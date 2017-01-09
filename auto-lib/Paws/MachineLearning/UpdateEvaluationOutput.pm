
package Paws::MachineLearning::UpdateEvaluationOutput;
  use Moose;
  has EvaluationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

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