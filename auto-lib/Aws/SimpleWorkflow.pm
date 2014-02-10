
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::SimpleWorkflow::ActivityTaskTimeoutType', ['START_TO_CLOSE','SCHEDULE_TO_START','SCHEDULE_TO_CLOSE','HEARTBEAT',];
enum 'Aws::SimpleWorkflow::CancelTimerFailedCause', ['TIMER_ID_UNKNOWN','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::CancelWorkflowExecutionFailedCause', ['UNHANDLED_DECISION','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::ChildPolicy', ['TERMINATE','REQUEST_CANCEL','ABANDON',];
enum 'Aws::SimpleWorkflow::CloseStatus', ['COMPLETED','FAILED','CANCELED','TERMINATED','CONTINUED_AS_NEW','TIMED_OUT',];
enum 'Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedCause', ['UNHANDLED_DECISION','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedCause', ['UNHANDLED_DECISION','WORKFLOW_TYPE_DEPRECATED','WORKFLOW_TYPE_DOES_NOT_EXIST','DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_TASK_LIST_UNDEFINED','DEFAULT_CHILD_POLICY_UNDEFINED','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::DecisionTaskTimeoutType', ['START_TO_CLOSE',];
enum 'Aws::SimpleWorkflow::DecisionType', ['ScheduleActivityTask','RequestCancelActivityTask','CompleteWorkflowExecution','FailWorkflowExecution','CancelWorkflowExecution','ContinueAsNewWorkflowExecution','RecordMarker','StartTimer','CancelTimer','SignalExternalWorkflowExecution','RequestCancelExternalWorkflowExecution','StartChildWorkflowExecution',];
enum 'Aws::SimpleWorkflow::EventType', ['WorkflowExecutionStarted','WorkflowExecutionCancelRequested','WorkflowExecutionCompleted','CompleteWorkflowExecutionFailed','WorkflowExecutionFailed','FailWorkflowExecutionFailed','WorkflowExecutionTimedOut','WorkflowExecutionCanceled','CancelWorkflowExecutionFailed','WorkflowExecutionContinuedAsNew','ContinueAsNewWorkflowExecutionFailed','WorkflowExecutionTerminated','DecisionTaskScheduled','DecisionTaskStarted','DecisionTaskCompleted','DecisionTaskTimedOut','ActivityTaskScheduled','ScheduleActivityTaskFailed','ActivityTaskStarted','ActivityTaskCompleted','ActivityTaskFailed','ActivityTaskTimedOut','ActivityTaskCanceled','ActivityTaskCancelRequested','RequestCancelActivityTaskFailed','WorkflowExecutionSignaled','MarkerRecorded','RecordMarkerFailed','TimerStarted','StartTimerFailed','TimerFired','TimerCanceled','CancelTimerFailed','StartChildWorkflowExecutionInitiated','StartChildWorkflowExecutionFailed','ChildWorkflowExecutionStarted','ChildWorkflowExecutionCompleted','ChildWorkflowExecutionFailed','ChildWorkflowExecutionTimedOut','ChildWorkflowExecutionCanceled','ChildWorkflowExecutionTerminated','SignalExternalWorkflowExecutionInitiated','SignalExternalWorkflowExecutionFailed','ExternalWorkflowExecutionSignaled','RequestCancelExternalWorkflowExecutionInitiated','RequestCancelExternalWorkflowExecutionFailed','ExternalWorkflowExecutionCancelRequested',];
enum 'Aws::SimpleWorkflow::ExecutionStatus', ['OPEN','CLOSED',];
enum 'Aws::SimpleWorkflow::FailWorkflowExecutionFailedCause', ['UNHANDLED_DECISION','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::RecordMarkerFailedCause', ['OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::RegistrationStatus', ['REGISTERED','DEPRECATED',];
enum 'Aws::SimpleWorkflow::RequestCancelActivityTaskFailedCause', ['ACTIVITY_ID_UNKNOWN','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedCause', ['UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION','REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::ScheduleActivityTaskFailedCause', ['ACTIVITY_TYPE_DEPRECATED','ACTIVITY_TYPE_DOES_NOT_EXIST','ACTIVITY_ID_ALREADY_IN_USE','OPEN_ACTIVITIES_LIMIT_EXCEEDED','ACTIVITY_CREATION_RATE_EXCEEDED','DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_TASK_LIST_UNDEFINED','DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED','DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedCause', ['UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION','SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::StartChildWorkflowExecutionFailedCause', ['WORKFLOW_TYPE_DOES_NOT_EXIST','WORKFLOW_TYPE_DEPRECATED','OPEN_CHILDREN_LIMIT_EXCEEDED','OPEN_WORKFLOWS_LIMIT_EXCEEDED','CHILD_CREATION_RATE_EXCEEDED','WORKFLOW_ALREADY_RUNNING','DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_TASK_LIST_UNDEFINED','DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_CHILD_POLICY_UNDEFINED','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::StartTimerFailedCause', ['TIMER_ID_ALREADY_IN_USE','OPEN_TIMERS_LIMIT_EXCEEDED','TIMER_CREATION_RATE_EXCEEDED','OPERATION_NOT_PERMITTED',];
enum 'Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedCause', ['CHILD_POLICY_APPLIED',];
enum 'Aws::SimpleWorkflow::WorkflowExecutionTerminatedCause', ['CHILD_POLICY_APPLIED','EVENT_LIMIT_EXCEEDED','OPERATOR_INITIATED',];
enum 'Aws::SimpleWorkflow::WorkflowExecutionTimeoutType', ['START_TO_CLOSE',];


package Aws::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskCanceledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has details => (is => 'ro', isa => 'Str');
  has latestCancelRequestedEventId => (is => 'ro', isa => 'Num');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskCompletedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has result => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskScheduledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has heartbeatTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has scheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has scheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has details => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskTimeoutType', required => 1);
}

package Aws::SimpleWorkflow::ActivityType {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::ActivityTypeConfiguration {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has defaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::ActivityTypeInfo {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::RegistrationStatus', required => 1);
}

package Aws::SimpleWorkflow::CancelTimerDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::CancelTimerFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelTimerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has details => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has details => (is => 'ro', isa => 'Str');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has details => (is => 'ro', isa => 'Str');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has reason => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTimeoutType', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::CloseStatusFilter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::CloseStatus', required => 1);
}

package Aws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has result => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowTypeVersion => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::Decision {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cancelTimerDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelTimerDecisionAttributes');
  has cancelWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes');
  has completeWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes');
  has continueAsNewWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes');
  has decisionType => (is => 'ro', isa => 'Aws::SimpleWorkflow::DecisionType', required => 1);
  has failWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes');
  has recordMarkerDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RecordMarkerDecisionAttributes');
  has requestCancelActivityTaskDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes');
  has requestCancelExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes');
  has scheduleActivityTaskDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes');
  has signalExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes');
  has startChildWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes');
  has startTimerDecisionAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartTimerDecisionAttributes');
}

package Aws::SimpleWorkflow::DecisionTaskCompletedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has executionContext => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::DecisionTaskScheduledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
}

package Aws::SimpleWorkflow::DecisionTaskStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::DecisionTaskTimeoutType', required => 1);
}

package Aws::SimpleWorkflow::DomainConfiguration {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::DomainInfo {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::RegistrationStatus', required => 1);
}

package Aws::SimpleWorkflow::ExecutionTimeFilter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has latestDate => (is => 'ro', isa => 'Str');
  has oldestDate => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
}

package Aws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
}

package Aws::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::FailWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::HistoryEvent {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has activityTaskCancelRequestedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes');
  has activityTaskCanceledEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskCanceledEventAttributes');
  has activityTaskCompletedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskCompletedEventAttributes');
  has activityTaskFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskFailedEventAttributes');
  has activityTaskScheduledEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskScheduledEventAttributes');
  has activityTaskStartedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskStartedEventAttributes');
  has activityTaskTimedOutEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes');
  has cancelTimerFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelTimerFailedEventAttributes');
  has cancelWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes');
  has childWorkflowExecutionCanceledEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes');
  has childWorkflowExecutionCompletedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes');
  has childWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes');
  has childWorkflowExecutionStartedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes');
  has childWorkflowExecutionTerminatedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes');
  has childWorkflowExecutionTimedOutEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes');
  has completeWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes');
  has continueAsNewWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes');
  has decisionTaskCompletedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::DecisionTaskCompletedEventAttributes');
  has decisionTaskScheduledEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::DecisionTaskScheduledEventAttributes');
  has decisionTaskStartedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::DecisionTaskStartedEventAttributes');
  has decisionTaskTimedOutEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes');
  has eventId => (is => 'ro', isa => 'Num', required => 1);
  has eventTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has eventType => (is => 'ro', isa => 'Aws::SimpleWorkflow::EventType', required => 1);
  has externalWorkflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes');
  has externalWorkflowExecutionSignaledEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes');
  has failWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes');
  has markerRecordedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::MarkerRecordedEventAttributes');
  has recordMarkerFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RecordMarkerFailedEventAttributes');
  has requestCancelActivityTaskFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes');
  has requestCancelExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes');
  has requestCancelExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes');
  has scheduleActivityTaskFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes');
  has signalExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes');
  has signalExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes');
  has startChildWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes');
  has startChildWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes');
  has startTimerFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartTimerFailedEventAttributes');
  has timerCanceledEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::TimerCanceledEventAttributes');
  has timerFiredEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::TimerFiredEventAttributes');
  has timerStartedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::TimerStartedEventAttributes');
  has workflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes');
  has workflowExecutionCanceledEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes');
  has workflowExecutionCompletedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes');
  has workflowExecutionContinuedAsNewEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes');
  has workflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes');
  has workflowExecutionSignaledEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes');
  has workflowExecutionStartedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes');
  has workflowExecutionTerminatedEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes');
  has workflowExecutionTimedOutEventAttributes => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes');
}

package Aws::SimpleWorkflow::MarkerRecordedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RecordMarkerDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RecordMarkerFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::RecordMarkerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelActivityTaskFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has control => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has heartbeatTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has scheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has scheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
}

package Aws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::ScheduleActivityTaskFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has control => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy');
  has control => (is => 'ro', isa => 'Str');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartChildWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::StartTimerDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has control => (is => 'ro', isa => 'Str');
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::StartTimerFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartTimerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TagFilter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has tag => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TaskList {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has name => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TimerCanceledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TimerFiredEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TimerStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecution {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has runId => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedCause');
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
}

package Aws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowExecutionConfiguration {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has newExecutionRunId => (is => 'ro', isa => 'Str', required => 1);
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowExecutionFilter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionInfo {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cancelRequested => (is => 'ro', isa => 'Str');
  has closeStatus => (is => 'ro', isa => 'Aws::SimpleWorkflow::CloseStatus');
  has closeTimestamp => (is => 'ro', isa => 'Str');
  has execution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has executionStatus => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionStatus', required => 1);
  has parent => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
  has startTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionOpenCounts {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has openActivityTasks => (is => 'ro', isa => 'Int', required => 1);
  has openChildWorkflowExecutions => (is => 'ro', isa => 'Int', required => 1);
  has openDecisionTasks => (is => 'ro', isa => 'Int', required => 1);
  has openTimers => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
  has input => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has continuedExecutionRunId => (is => 'ro', isa => 'Str');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has parentInitiatedEventId => (is => 'ro', isa => 'Num');
  has parentWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTerminatedCause');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTimeoutType', required => 1);
}

package Aws::SimpleWorkflow::WorkflowType {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowTypeConfiguration {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has defaultChildPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy');
  has defaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowTypeFilter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowTypeInfo {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::RegistrationStatus', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}



package Aws::SimpleWorkflow::CountClosedWorkflowExecutions {
  use Moose;
  has closeStatusFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::CloseStatusFilter');
  has closeTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFilter');
  has startTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter');
  has tagFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeFilter');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountClosedWorkflowExecutions');
  has _returns => (isa => 'Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountClosedWorkflowExecutionsResult');  
}
package Aws::SimpleWorkflow::CountOpenWorkflowExecutions {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFilter');
  has startTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter', required => 1);
  has tagFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeFilter');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountOpenWorkflowExecutions');
  has _returns => (isa => 'Aws::SimpleWorkflow::CountOpenWorkflowExecutionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountOpenWorkflowExecutionsResult');  
}
package Aws::SimpleWorkflow::CountPendingActivityTasks {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingActivityTasks');
  has _returns => (isa => 'Aws::SimpleWorkflow::CountPendingActivityTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountPendingActivityTasksResult');  
}
package Aws::SimpleWorkflow::CountPendingDecisionTasks {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingDecisionTasks');
  has _returns => (isa => 'Aws::SimpleWorkflow::CountPendingDecisionTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountPendingDecisionTasksResult');  
}
package Aws::SimpleWorkflow::DeprecateActivityType {
  use Moose;
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateActivityType');
  has _returns => (isa => 'Aws::SimpleWorkflow::DeprecateActivityTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeprecateActivityTypeResult');  
}
package Aws::SimpleWorkflow::DeprecateDomain {
  use Moose;
  has name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateDomain');
  has _returns => (isa => 'Aws::SimpleWorkflow::DeprecateDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeprecateDomainResult');  
}
package Aws::SimpleWorkflow::DeprecateWorkflowType {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateWorkflowType');
  has _returns => (isa => 'Aws::SimpleWorkflow::DeprecateWorkflowTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeprecateWorkflowTypeResult');  
}
package Aws::SimpleWorkflow::DescribeActivityType {
  use Moose;
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActivityType');
  has _returns => (isa => 'Aws::SimpleWorkflow::DescribeActivityTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeActivityTypeResult');  
}
package Aws::SimpleWorkflow::DescribeDomain {
  use Moose;
  has name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomain');
  has _returns => (isa => 'Aws::SimpleWorkflow::DescribeDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainResult');  
}
package Aws::SimpleWorkflow::DescribeWorkflowExecution {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowExecution');
  has _returns => (isa => 'Aws::SimpleWorkflow::DescribeWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowExecutionResult');  
}
package Aws::SimpleWorkflow::DescribeWorkflowType {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowType');
  has _returns => (isa => 'Aws::SimpleWorkflow::DescribeWorkflowTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowTypeResult');  
}
package Aws::SimpleWorkflow::GetWorkflowExecutionHistory {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecutionHistory');
  has _returns => (isa => 'Aws::SimpleWorkflow::GetWorkflowExecutionHistoryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecutionHistoryResult');  
}
package Aws::SimpleWorkflow::ListActivityTypes {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has name => (is => 'ro', isa => 'Str');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListActivityTypes');
  has _returns => (isa => 'Aws::SimpleWorkflow::ListActivityTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListActivityTypesResult');  
}
package Aws::SimpleWorkflow::ListClosedWorkflowExecutions {
  use Moose;
  has closeStatusFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::CloseStatusFilter');
  has closeTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFilter');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Str');
  has startTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter');
  has tagFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeFilter');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListClosedWorkflowExecutions');
  has _returns => (isa => 'Aws::SimpleWorkflow::ListClosedWorkflowExecutionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListClosedWorkflowExecutionsResult');  
}
package Aws::SimpleWorkflow::ListDomains {
  use Moose;
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  has _returns => (isa => 'Aws::SimpleWorkflow::ListDomainsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainsResult');  
}
package Aws::SimpleWorkflow::ListOpenWorkflowExecutions {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFilter');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Str');
  has startTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter', required => 1);
  has tagFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeFilter');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListOpenWorkflowExecutions');
  has _returns => (isa => 'Aws::SimpleWorkflow::ListOpenWorkflowExecutionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListOpenWorkflowExecutionsResult');  
}
package Aws::SimpleWorkflow::ListWorkflowTypes {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has name => (is => 'ro', isa => 'Str');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflowTypes');
  has _returns => (isa => 'Aws::SimpleWorkflow::ListWorkflowTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListWorkflowTypesResult');  
}
package Aws::SimpleWorkflow::PollForActivityTask {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has identity => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PollForActivityTask');
  has _returns => (isa => 'Aws::SimpleWorkflow::PollForActivityTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PollForActivityTaskResult');  
}
package Aws::SimpleWorkflow::PollForDecisionTask {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has identity => (is => 'ro', isa => 'Str');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PollForDecisionTask');
  has _returns => (isa => 'Aws::SimpleWorkflow::PollForDecisionTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PollForDecisionTaskResult');  
}
package Aws::SimpleWorkflow::RecordActivityTaskHeartbeat {
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RecordActivityTaskHeartbeat');
  has _returns => (isa => 'Aws::SimpleWorkflow::RecordActivityTaskHeartbeatResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RecordActivityTaskHeartbeatResult');  
}
package Aws::SimpleWorkflow::RegisterActivityType {
  use Moose;
  has defaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterActivityType');
  has _returns => (isa => 'Aws::SimpleWorkflow::RegisterActivityTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterActivityTypeResult');  
}
package Aws::SimpleWorkflow::RegisterDomain {
  use Moose;
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDomain');
  has _returns => (isa => 'Aws::SimpleWorkflow::RegisterDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterDomainResult');  
}
package Aws::SimpleWorkflow::RegisterWorkflowType {
  use Moose;
  has defaultChildPolicy => (is => 'ro', isa => 'Str');
  has defaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterWorkflowType');
  has _returns => (isa => 'Aws::SimpleWorkflow::RegisterWorkflowTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterWorkflowTypeResult');  
}
package Aws::SimpleWorkflow::RequestCancelWorkflowExecution {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RequestCancelWorkflowExecution');
  has _returns => (isa => 'Aws::SimpleWorkflow::RequestCancelWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RequestCancelWorkflowExecutionResult');  
}
package Aws::SimpleWorkflow::RespondActivityTaskCanceled {
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCanceled');
  has _returns => (isa => 'Aws::SimpleWorkflow::RespondActivityTaskCanceledResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCanceledResult');  
}
package Aws::SimpleWorkflow::RespondActivityTaskCompleted {
  use Moose;
  has result => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCompleted');
  has _returns => (isa => 'Aws::SimpleWorkflow::RespondActivityTaskCompletedResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCompletedResult');  
}
package Aws::SimpleWorkflow::RespondActivityTaskFailed {
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskFailed');
  has _returns => (isa => 'Aws::SimpleWorkflow::RespondActivityTaskFailedResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskFailedResult');  
}
package Aws::SimpleWorkflow::RespondDecisionTaskCompleted {
  use Moose;
  has decisions => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::Decision]');
  has executionContext => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompleted');
  has _returns => (isa => 'Aws::SimpleWorkflow::RespondDecisionTaskCompletedResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompletedResult');  
}
package Aws::SimpleWorkflow::SignalWorkflowExecution {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SignalWorkflowExecution');
  has _returns => (isa => 'Aws::SimpleWorkflow::SignalWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SignalWorkflowExecutionResult');  
}
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartWorkflowExecution');
  has _returns => (isa => 'Aws::SimpleWorkflow::StartWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartWorkflowExecutionResult');  
}
package Aws::SimpleWorkflow::TerminateWorkflowExecution {
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str');
  has details => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has reason => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateWorkflowExecution');
  has _returns => (isa => 'Aws::SimpleWorkflow::TerminateWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateWorkflowExecutionResult');  
}

package Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::CountOpenWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::CountPendingActivityTasksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::CountPendingDecisionTasksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::DescribeActivityTypeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTypeInfo', required => 1);

}
package Aws::SimpleWorkflow::DescribeDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::DomainConfiguration', required => 1);
  has domainInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::DomainInfo', required => 1);

}
package Aws::SimpleWorkflow::DescribeWorkflowExecutionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has executionConfiguration => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionConfiguration', required => 1);
  has executionInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionInfo', required => 1);
  has latestActivityTaskTimestamp => (is => 'ro', isa => 'Str');
  has latestExecutionContext => (is => 'ro', isa => 'Str');
  has openCounts => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionOpenCounts', required => 1);

}
package Aws::SimpleWorkflow::DescribeWorkflowTypeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeInfo', required => 1);

}
package Aws::SimpleWorkflow::GetWorkflowExecutionHistoryResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::ListActivityTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::ActivityTypeInfo]', required => 1);

}
package Aws::SimpleWorkflow::ListClosedWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has executionInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::ListDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has domainInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::DomainInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::ListOpenWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has executionInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::ListWorkflowTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowTypeInfo]', required => 1);

}
package Aws::SimpleWorkflow::PollForActivityTaskResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);

}
package Aws::SimpleWorkflow::PollForDecisionTaskResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');
  has previousStartedEventId => (is => 'ro', isa => 'Num');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

}
package Aws::SimpleWorkflow::RecordActivityTaskHeartbeatResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has cancelRequested => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::SimpleWorkflow::StartWorkflowExecutionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has runId => (is => 'ro', isa => 'Str');

}

package Aws::SimpleWorkflow {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'swf');
  has version => (is => 'ro', isa => 'Str', default => '2012-01-25');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'SimpleWorkflowService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.0");
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::JsonCaller', 'Net::AWS::JsonResponse');
  
  sub CountClosedWorkflowExecutions {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::CountClosedWorkflowExecutions->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult->from_result($result);return $o_result;
  }
  sub CountOpenWorkflowExecutions {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::CountOpenWorkflowExecutions->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::CountOpenWorkflowExecutionsResult->from_result($result);return $o_result;
  }
  sub CountPendingActivityTasks {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::CountPendingActivityTasks->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::CountPendingActivityTasksResult->from_result($result);return $o_result;
  }
  sub CountPendingDecisionTasks {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::CountPendingDecisionTasks->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::CountPendingDecisionTasksResult->from_result($result);return $o_result;
  }
  sub DeprecateActivityType {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::DeprecateActivityType->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeprecateDomain {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::DeprecateDomain->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeprecateWorkflowType {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::DeprecateWorkflowType->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeActivityType {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::DescribeActivityType->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::DescribeActivityTypeResult->from_result($result);return $o_result;
  }
  sub DescribeDomain {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::DescribeDomain->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::DescribeDomainResult->from_result($result);return $o_result;
  }
  sub DescribeWorkflowExecution {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::DescribeWorkflowExecution->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::DescribeWorkflowExecutionResult->from_result($result);return $o_result;
  }
  sub DescribeWorkflowType {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::DescribeWorkflowType->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::DescribeWorkflowTypeResult->from_result($result);return $o_result;
  }
  sub GetWorkflowExecutionHistory {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::GetWorkflowExecutionHistory->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::GetWorkflowExecutionHistoryResult->from_result($result);return $o_result;
  }
  sub ListActivityTypes {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::ListActivityTypes->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListActivityTypesResult->from_result($result);return $o_result;
  }
  sub ListClosedWorkflowExecutions {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::ListClosedWorkflowExecutions->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListClosedWorkflowExecutionsResult->from_result($result);return $o_result;
  }
  sub ListDomains {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::ListDomains->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListDomainsResult->from_result($result);return $o_result;
  }
  sub ListOpenWorkflowExecutions {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::ListOpenWorkflowExecutions->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListOpenWorkflowExecutionsResult->from_result($result);return $o_result;
  }
  sub ListWorkflowTypes {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::ListWorkflowTypes->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListWorkflowTypesResult->from_result($result);return $o_result;
  }
  sub PollForActivityTask {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::PollForActivityTask->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::PollForActivityTaskResult->from_result($result);return $o_result;
  }
  sub PollForDecisionTask {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::PollForDecisionTask->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::PollForDecisionTaskResult->from_result($result);return $o_result;
  }
  sub RecordActivityTaskHeartbeat {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::RecordActivityTaskHeartbeat->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::RecordActivityTaskHeartbeatResult->from_result($result);return $o_result;
  }
  sub RegisterActivityType {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::RegisterActivityType->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RegisterDomain {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::RegisterDomain->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RegisterWorkflowType {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::RegisterWorkflowType->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RequestCancelWorkflowExecution {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::RequestCancelWorkflowExecution->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RespondActivityTaskCanceled {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::RespondActivityTaskCanceled->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RespondActivityTaskCompleted {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::RespondActivityTaskCompleted->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RespondActivityTaskFailed {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::RespondActivityTaskFailed->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RespondDecisionTaskCompleted {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::RespondDecisionTaskCompleted->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SignalWorkflowExecution {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::SignalWorkflowExecution->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub StartWorkflowExecution {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::StartWorkflowExecution->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::StartWorkflowExecutionResult->from_result($result);return $o_result;
  }
  sub TerminateWorkflowExecution {
    my $self = shift;
    my $call = Aws::SimpleWorkflow::TerminateWorkflowExecution->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
