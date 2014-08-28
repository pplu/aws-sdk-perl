
package Aws::SimpleWorkflow::DescribeWorkflowExecutionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has executionConfiguration => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionConfiguration', required => 1);
  has executionInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionInfo', required => 1);
  has latestActivityTaskTimestamp => (is => 'ro', isa => 'Str');
  has latestExecutionContext => (is => 'ro', isa => 'Str');
  has openCounts => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionOpenCounts', required => 1);

}
1;
