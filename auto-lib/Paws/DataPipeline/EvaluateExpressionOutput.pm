
package Paws::DataPipeline::EvaluateExpressionOutput;
  use Moose;
  has EvaluatedExpression => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'evaluatedExpression' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::EvaluateExpressionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluatedExpression => Str

The evaluated expression.




=cut

1;