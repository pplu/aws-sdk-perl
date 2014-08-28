
package Aws::SimpleWorkflow::ListOpenWorkflowExecutions {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFilter');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Bool');
  has startTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter', required => 1);
  has tagFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOpenWorkflowExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::ListOpenWorkflowExecutionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
