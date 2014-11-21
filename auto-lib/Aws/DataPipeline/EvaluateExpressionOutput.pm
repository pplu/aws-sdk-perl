
package Aws::DataPipeline::EvaluateExpressionOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has evaluatedExpression => (is => 'ro', isa => 'Str', required => 1);

}
1;