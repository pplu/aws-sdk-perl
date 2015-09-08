package Paws::SimpleWorkflow::WorkflowExecutionOpenCounts;
  use Moose;
  has openActivityTasks => (is => 'ro', isa => 'Int', required => 1);
  has openChildWorkflowExecutions => (is => 'ro', isa => 'Int', required => 1);
  has openDecisionTasks => (is => 'ro', isa => 'Int', required => 1);
  has openLambdaFunctions => (is => 'ro', isa => 'Int');
  has openTimers => (is => 'ro', isa => 'Int', required => 1);
1;
