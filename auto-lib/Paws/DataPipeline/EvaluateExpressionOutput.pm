
package Paws::DataPipeline::EvaluateExpressionOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has evaluatedExpression => (is => 'ro', isa => 'Str', required => 1);

}
1;