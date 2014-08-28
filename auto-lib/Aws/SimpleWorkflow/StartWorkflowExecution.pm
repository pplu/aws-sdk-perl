
package Aws::SimpleWorkflow::StartWorkflowExecution {
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::StartWorkflowExecutionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;