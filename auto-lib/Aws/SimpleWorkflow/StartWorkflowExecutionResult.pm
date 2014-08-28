
package Aws::SimpleWorkflow::StartWorkflowExecutionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has runId => (is => 'ro', isa => 'Str');

}
1;
