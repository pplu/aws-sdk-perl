
package Aws::DataPipeline::EvaluateExpressionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has evaluatedExpression => (is => 'ro', isa => 'Str', required => 1);

}
1;
