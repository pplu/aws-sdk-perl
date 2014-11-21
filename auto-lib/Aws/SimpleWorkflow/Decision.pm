package Aws::SimpleWorkflow::Decision {
  use Moose;
  has cancelTimerDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelTimerDecisionAttributes');
  has cancelWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes');
  has completeWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes');
  has continueAsNewWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes');
  has decisionType => (is => 'ro', isa => 'Str', required => 1);
  has failWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes');
  has recordMarkerDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RecordMarkerDecisionAttributes');
  has requestCancelActivityTaskDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes');
  has requestCancelExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes');
  has scheduleActivityTaskDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes');
  has signalExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes');
  has startChildWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes');
  has startTimerDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartTimerDecisionAttributes');
}
1;
