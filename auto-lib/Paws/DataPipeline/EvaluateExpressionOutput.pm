
package Paws::DataPipeline::EvaluateExpressionOutput;
  use Moose;
  has EvaluatedExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evaluatedExpression' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::EvaluateExpressionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluatedExpression => Str

The evaluated expression.


=head2 _request_id => Str


=cut

1;