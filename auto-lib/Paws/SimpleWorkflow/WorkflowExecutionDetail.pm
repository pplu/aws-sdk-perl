
package Paws::SimpleWorkflow::WorkflowExecutionDetail {
  use Moose;
  with 'Paws::API::ResultParser';
  has executionConfiguration => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionConfiguration', required => 1);
  has executionInfo => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionInfo', required => 1);
  has latestActivityTaskTimestamp => (is => 'ro', isa => 'Str');
  has latestExecutionContext => (is => 'ro', isa => 'Str');
  has openCounts => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionOpenCounts', required => 1);

}
1;