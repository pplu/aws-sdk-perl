package Aws::SimpleWorkflow::WorkflowExecutionConfiguration {
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
}
1
