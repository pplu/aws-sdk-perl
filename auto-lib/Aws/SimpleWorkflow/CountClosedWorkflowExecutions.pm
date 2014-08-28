
package Aws::SimpleWorkflow::CountClosedWorkflowExecutions {
  use Moose;
  has closeStatusFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::CloseStatusFilter');
  has closeTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFilter');
  has startTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter');
  has tagFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountClosedWorkflowExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
