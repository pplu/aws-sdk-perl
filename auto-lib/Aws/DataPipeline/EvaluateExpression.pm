
package Aws::DataPipeline::EvaluateExpression {
  use Moose;
  has expression => (is => 'ro', isa => 'Str', required => 1);
  has objectId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateExpression');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::EvaluateExpressionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;