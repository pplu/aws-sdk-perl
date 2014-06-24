
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
  with ('AWS::API::ResultParser');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskCanceledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has latestCancelRequestedEventId => (is => 'ro', isa => 'Num');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskCompletedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has result => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskScheduledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskTimeoutType', required => 1);
}

package Aws::SimpleWorkflow::ActivityType {
  use Moose;
  with ('AWS::API::ResultParser');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::ActivityTypeConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has defaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::ActivityTypeInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::RegistrationStatus', required => 1);
}

package Aws::SimpleWorkflow::CancelTimerDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::CancelTimerFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelTimerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has reason => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTimeoutType', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::CloseStatusFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::CloseStatus', required => 1);
}

package Aws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has result => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::Decision {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has executionContext => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::DecisionTaskScheduledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
}

package Aws::SimpleWorkflow::DecisionTaskStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::DecisionTaskTimeoutType', required => 1);
}

package Aws::SimpleWorkflow::DomainConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::DomainInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::RegistrationStatus', required => 1);
}

package Aws::SimpleWorkflow::ExecutionTimeFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has latestDate => (is => 'ro', isa => 'Str');
  has oldestDate => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
}

package Aws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
}

package Aws::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::FailWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::HistoryEvent {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RecordMarkerDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RecordMarkerFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::RecordMarkerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelActivityTaskFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has control => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::ScheduleActivityTaskFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has control => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartChildWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

package Aws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has control => (is => 'ro', isa => 'Str');
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::StartTimerFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartTimerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TagFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has tag => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TaskList {
  use Moose;
  with ('AWS::API::ResultParser');
  has name => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TimerCanceledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TimerFiredEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::TimerStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecution {
  use Moose;
  with ('AWS::API::ResultParser');
  has runId => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedCause');
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
}

package Aws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowExecutionConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowExecutionFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has cancelRequested => (is => 'ro', isa => 'Bool');
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
  with ('AWS::API::ResultParser');
  has openActivityTasks => (is => 'ro', isa => 'Int', required => 1);
  has openChildWorkflowExecutions => (is => 'ro', isa => 'Int', required => 1);
  has openDecisionTasks => (is => 'ro', isa => 'Int', required => 1);
  has openTimers => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
  has input => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTerminatedCause');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTimeoutType', required => 1);
}

package Aws::SimpleWorkflow::WorkflowType {
  use Moose;
  with ('AWS::API::ResultParser');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SimpleWorkflow::WorkflowTypeConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has defaultChildPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy');
  has defaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowTypeFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');
}

package Aws::SimpleWorkflow::WorkflowTypeInfo {
  use Moose;
  with ('AWS::API::ResultParser');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountClosedWorkflowExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::CountOpenWorkflowExecutions {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFilter');
  has startTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter', required => 1);
  has tagFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountOpenWorkflowExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::CountOpenWorkflowExecutionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::CountPendingActivityTasks {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingActivityTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::CountPendingActivityTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::CountPendingDecisionTasks {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingDecisionTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::CountPendingDecisionTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::DeprecateActivityType {
  use Moose;
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has domain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateActivityType');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::DeprecateDomain {
  use Moose;
  has name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateDomain');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::DeprecateWorkflowType {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateWorkflowType');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::DescribeActivityType {
  use Moose;
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has domain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActivityType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::DescribeActivityTypeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::DescribeDomain {
  use Moose;
  has name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::DescribeDomainResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::DescribeWorkflowExecution {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::DescribeWorkflowExecutionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::DescribeWorkflowType {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::DescribeWorkflowTypeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::GetWorkflowExecutionHistory {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecutionHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::GetWorkflowExecutionHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::ListActivityTypes {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has name => (is => 'ro', isa => 'Str');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListActivityTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::ListActivityTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::ListClosedWorkflowExecutions {
  use Moose;
  has closeStatusFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::CloseStatusFilter');
  has closeTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFilter');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Bool');
  has startTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter');
  has tagFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClosedWorkflowExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::ListClosedWorkflowExecutionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::ListDomains {
  use Moose;
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::ListDomainsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
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
package Aws::SimpleWorkflow::ListWorkflowTypes {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has name => (is => 'ro', isa => 'Str');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflowTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::ListWorkflowTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::PollForActivityTask {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has identity => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForActivityTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::PollForActivityTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::PollForDecisionTask {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has identity => (is => 'ro', isa => 'Str');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Bool');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForDecisionTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::PollForDecisionTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::RecordActivityTaskHeartbeat {
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RecordActivityTaskHeartbeat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::RecordActivityTaskHeartbeatResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterActivityType');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::RegisterDomain {
  use Moose;
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDomain');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterWorkflowType');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::RequestCancelWorkflowExecution {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestCancelWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::RespondActivityTaskCanceled {
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCanceled');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::RespondActivityTaskCompleted {
  use Moose;
  has result => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCompleted');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::RespondActivityTaskFailed {
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskFailed');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::RespondDecisionTaskCompleted {
  use Moose;
  has decisions => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::Decision]');
  has executionContext => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompleted');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::SignalWorkflowExecution {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SignalWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::StartWorkflowExecutionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SimpleWorkflow::TerminateWorkflowExecution {
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str');
  has details => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has reason => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

package Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

}
package Aws::SimpleWorkflow::CountOpenWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

}
package Aws::SimpleWorkflow::CountPendingActivityTasksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

}
package Aws::SimpleWorkflow::CountPendingDecisionTasksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

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
  has cancelRequested => (is => 'ro', isa => 'Bool', required => 1);

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

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CountClosedWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::CountClosedWorkflowExecutions', @_);
  }
  sub CountOpenWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::CountOpenWorkflowExecutions', @_);
  }
  sub CountPendingActivityTasks {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::CountPendingActivityTasks', @_);
  }
  sub CountPendingDecisionTasks {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::CountPendingDecisionTasks', @_);
  }
  sub DeprecateActivityType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DeprecateActivityType', @_);
  }
  sub DeprecateDomain {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DeprecateDomain', @_);
  }
  sub DeprecateWorkflowType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DeprecateWorkflowType', @_);
  }
  sub DescribeActivityType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DescribeActivityType', @_);
  }
  sub DescribeDomain {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DescribeDomain', @_);
  }
  sub DescribeWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DescribeWorkflowExecution', @_);
  }
  sub DescribeWorkflowType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DescribeWorkflowType', @_);
  }
  sub GetWorkflowExecutionHistory {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::GetWorkflowExecutionHistory', @_);
  }
  sub ListActivityTypes {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListActivityTypes', @_);
  }
  sub ListClosedWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListClosedWorkflowExecutions', @_);
  }
  sub ListDomains {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListDomains', @_);
  }
  sub ListOpenWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListOpenWorkflowExecutions', @_);
  }
  sub ListWorkflowTypes {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListWorkflowTypes', @_);
  }
  sub PollForActivityTask {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::PollForActivityTask', @_);
  }
  sub PollForDecisionTask {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::PollForDecisionTask', @_);
  }
  sub RecordActivityTaskHeartbeat {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RecordActivityTaskHeartbeat', @_);
  }
  sub RegisterActivityType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RegisterActivityType', @_);
  }
  sub RegisterDomain {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RegisterDomain', @_);
  }
  sub RegisterWorkflowType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RegisterWorkflowType', @_);
  }
  sub RequestCancelWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RequestCancelWorkflowExecution', @_);
  }
  sub RespondActivityTaskCanceled {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RespondActivityTaskCanceled', @_);
  }
  sub RespondActivityTaskCompleted {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RespondActivityTaskCompleted', @_);
  }
  sub RespondActivityTaskFailed {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RespondActivityTaskFailed', @_);
  }
  sub RespondDecisionTaskCompleted {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RespondDecisionTaskCompleted', @_);
  }
  sub SignalWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::SignalWorkflowExecution', @_);
  }
  sub StartWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::StartWorkflowExecution', @_);
  }
  sub TerminateWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::TerminateWorkflowExecution', @_);
  }
}
1;
