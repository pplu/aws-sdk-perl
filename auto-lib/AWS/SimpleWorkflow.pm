
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::SimpleWorkflow::ActivityTaskTimeoutType', [qw(START_TO_CLOSE SCHEDULE_TO_START SCHEDULE_TO_CLOSE HEARTBEAT )];
enum 'AWS::SimpleWorkflow::CancelTimerFailedCause', [qw(TIMER_ID_UNKNOWN OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::CancelWorkflowExecutionFailedCause', [qw(UNHANDLED_DECISION OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::ChildPolicy', [qw(TERMINATE REQUEST_CANCEL ABANDON )];
enum 'AWS::SimpleWorkflow::CloseStatus', [qw(COMPLETED FAILED CANCELED TERMINATED CONTINUED_AS_NEW TIMED_OUT )];
enum 'AWS::SimpleWorkflow::CompleteWorkflowExecutionFailedCause', [qw(UNHANDLED_DECISION OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedCause', [qw(UNHANDLED_DECISION WORKFLOW_TYPE_DEPRECATED WORKFLOW_TYPE_DOES_NOT_EXIST DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_TASK_LIST_UNDEFINED DEFAULT_CHILD_POLICY_UNDEFINED OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::DecisionTaskTimeoutType', [qw(START_TO_CLOSE )];
enum 'AWS::SimpleWorkflow::DecisionType', [qw(ScheduleActivityTask RequestCancelActivityTask CompleteWorkflowExecution FailWorkflowExecution CancelWorkflowExecution ContinueAsNewWorkflowExecution RecordMarker StartTimer CancelTimer SignalExternalWorkflowExecution RequestCancelExternalWorkflowExecution StartChildWorkflowExecution )];
enum 'AWS::SimpleWorkflow::EventType', [qw(WorkflowExecutionStarted WorkflowExecutionCancelRequested WorkflowExecutionCompleted CompleteWorkflowExecutionFailed WorkflowExecutionFailed FailWorkflowExecutionFailed WorkflowExecutionTimedOut WorkflowExecutionCanceled CancelWorkflowExecutionFailed WorkflowExecutionContinuedAsNew ContinueAsNewWorkflowExecutionFailed WorkflowExecutionTerminated DecisionTaskScheduled DecisionTaskStarted DecisionTaskCompleted DecisionTaskTimedOut ActivityTaskScheduled ScheduleActivityTaskFailed ActivityTaskStarted ActivityTaskCompleted ActivityTaskFailed ActivityTaskTimedOut ActivityTaskCanceled ActivityTaskCancelRequested RequestCancelActivityTaskFailed WorkflowExecutionSignaled MarkerRecorded RecordMarkerFailed TimerStarted StartTimerFailed TimerFired TimerCanceled CancelTimerFailed StartChildWorkflowExecutionInitiated StartChildWorkflowExecutionFailed ChildWorkflowExecutionStarted ChildWorkflowExecutionCompleted ChildWorkflowExecutionFailed ChildWorkflowExecutionTimedOut ChildWorkflowExecutionCanceled ChildWorkflowExecutionTerminated SignalExternalWorkflowExecutionInitiated SignalExternalWorkflowExecutionFailed ExternalWorkflowExecutionSignaled RequestCancelExternalWorkflowExecutionInitiated RequestCancelExternalWorkflowExecutionFailed ExternalWorkflowExecutionCancelRequested )];
enum 'AWS::SimpleWorkflow::ExecutionStatus', [qw(OPEN CLOSED )];
enum 'AWS::SimpleWorkflow::FailWorkflowExecutionFailedCause', [qw(UNHANDLED_DECISION OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::RecordMarkerFailedCause', [qw(OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::RegistrationStatus', [qw(REGISTERED DEPRECATED )];
enum 'AWS::SimpleWorkflow::RequestCancelActivityTaskFailedCause', [qw(ACTIVITY_ID_UNKNOWN OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedCause', [qw(UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::ScheduleActivityTaskFailedCause', [qw(ACTIVITY_TYPE_DEPRECATED ACTIVITY_TYPE_DOES_NOT_EXIST ACTIVITY_ID_ALREADY_IN_USE OPEN_ACTIVITIES_LIMIT_EXCEEDED ACTIVITY_CREATION_RATE_EXCEEDED DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_TASK_LIST_UNDEFINED DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::SignalExternalWorkflowExecutionFailedCause', [qw(UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::StartChildWorkflowExecutionFailedCause', [qw(WORKFLOW_TYPE_DOES_NOT_EXIST WORKFLOW_TYPE_DEPRECATED OPEN_CHILDREN_LIMIT_EXCEEDED OPEN_WORKFLOWS_LIMIT_EXCEEDED CHILD_CREATION_RATE_EXCEEDED WORKFLOW_ALREADY_RUNNING DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_TASK_LIST_UNDEFINED DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_CHILD_POLICY_UNDEFINED OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::StartTimerFailedCause', [qw(TIMER_ID_ALREADY_IN_USE OPEN_TIMERS_LIMIT_EXCEEDED TIMER_CREATION_RATE_EXCEEDED OPERATION_NOT_PERMITTED )];
enum 'AWS::SimpleWorkflow::WorkflowExecutionCancelRequestedCause', [qw(CHILD_POLICY_APPLIED )];
enum 'AWS::SimpleWorkflow::WorkflowExecutionTerminatedCause', [qw(CHILD_POLICY_APPLIED EVENT_LIMIT_EXCEEDED OPERATOR_INITIATED )];
enum 'AWS::SimpleWorkflow::WorkflowExecutionTimeoutType', [qw(START_TO_CLOSE )];


class AWS::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::ActivityTaskCanceledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has latestCancelRequestedEventId => (is => 'ro', isa => 'Num');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::ActivityTaskCompletedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has result => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::ActivityTaskFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::ActivityTaskScheduledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityType', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has heartbeatTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has scheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has scheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);
}

class AWS::SimpleWorkflow::ActivityTaskStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::ActivityTaskTimedOutEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTaskTimeoutType', required => 1);
}

class AWS::SimpleWorkflow::ActivityType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::ActivityTypeConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has defaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList');
  has defaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::ActivityTypeInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityType => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityType', required => 1);
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'AWS::SimpleWorkflow::RegistrationStatus', required => 1);
}

class AWS::SimpleWorkflow::CancelTimerDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::CancelTimerFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::CancelTimerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::CancelWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has reason => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionTimeoutType', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::CloseStatusFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has status => (is => 'ro', isa => 'AWS::SimpleWorkflow::CloseStatus', required => 1);
}

class AWS::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has result => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::CompleteWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildPolicy');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowTypeVersion => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::Decision with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cancelTimerDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::CancelTimerDecisionAttributes');
  has cancelWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes');
  has completeWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes');
  has continueAsNewWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes');
  has decisionType => (is => 'ro', isa => 'AWS::SimpleWorkflow::DecisionType', required => 1);
  has failWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes');
  has recordMarkerDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::RecordMarkerDecisionAttributes');
  has requestCancelActivityTaskDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes');
  has requestCancelExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes');
  has scheduleActivityTaskDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes');
  has signalExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes');
  has startChildWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes');
  has startTimerDecisionAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::StartTimerDecisionAttributes');
}

class AWS::SimpleWorkflow::DecisionTaskCompletedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has executionContext => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::DecisionTaskScheduledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);
}

class AWS::SimpleWorkflow::DecisionTaskStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::DecisionTaskTimedOutEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'AWS::SimpleWorkflow::DecisionTaskTimeoutType', required => 1);
}

class AWS::SimpleWorkflow::DomainConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::DomainInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'AWS::SimpleWorkflow::RegistrationStatus', required => 1);
}

class AWS::SimpleWorkflow::ExecutionTimeFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has latestDate => (is => 'ro', isa => 'Str');
  has oldestDate => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
}

class AWS::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
}

class AWS::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::FailWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::HistoryEvent with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityTaskCancelRequestedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes');
  has activityTaskCanceledEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTaskCanceledEventAttributes');
  has activityTaskCompletedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTaskCompletedEventAttributes');
  has activityTaskFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTaskFailedEventAttributes');
  has activityTaskScheduledEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTaskScheduledEventAttributes');
  has activityTaskStartedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTaskStartedEventAttributes');
  has activityTaskTimedOutEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTaskTimedOutEventAttributes');
  has cancelTimerFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::CancelTimerFailedEventAttributes');
  has cancelWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes');
  has childWorkflowExecutionCanceledEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes');
  has childWorkflowExecutionCompletedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes');
  has childWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes');
  has childWorkflowExecutionStartedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes');
  has childWorkflowExecutionTerminatedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes');
  has childWorkflowExecutionTimedOutEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes');
  has completeWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes');
  has continueAsNewWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes');
  has decisionTaskCompletedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::DecisionTaskCompletedEventAttributes');
  has decisionTaskScheduledEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::DecisionTaskScheduledEventAttributes');
  has decisionTaskStartedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::DecisionTaskStartedEventAttributes');
  has decisionTaskTimedOutEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::DecisionTaskTimedOutEventAttributes');
  has eventId => (is => 'ro', isa => 'Num', required => 1);
  has eventTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has eventType => (is => 'ro', isa => 'AWS::SimpleWorkflow::EventType', required => 1);
  has externalWorkflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes');
  has externalWorkflowExecutionSignaledEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes');
  has failWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes');
  has markerRecordedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::MarkerRecordedEventAttributes');
  has recordMarkerFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::RecordMarkerFailedEventAttributes');
  has requestCancelActivityTaskFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes');
  has requestCancelExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes');
  has requestCancelExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes');
  has scheduleActivityTaskFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes');
  has signalExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes');
  has signalExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes');
  has startChildWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes');
  has startChildWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes');
  has startTimerFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::StartTimerFailedEventAttributes');
  has timerCanceledEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::TimerCanceledEventAttributes');
  has timerFiredEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::TimerFiredEventAttributes');
  has timerStartedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::TimerStartedEventAttributes');
  has workflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes');
  has workflowExecutionCanceledEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes');
  has workflowExecutionCompletedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes');
  has workflowExecutionContinuedAsNewEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes');
  has workflowExecutionFailedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionFailedEventAttributes');
  has workflowExecutionSignaledEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes');
  has workflowExecutionStartedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionStartedEventAttributes');
  has workflowExecutionTerminatedEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes');
  has workflowExecutionTimedOutEventAttributes => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes');
}

class AWS::SimpleWorkflow::MarkerRecordedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::RecordMarkerDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::RecordMarkerFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::RecordMarkerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::RequestCancelActivityTaskFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityType', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has heartbeatTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has scheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has scheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList');
}

class AWS::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityType', required => 1);
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::ScheduleActivityTaskFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::SignalExternalWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildPolicy');
  has control => (is => 'ro', isa => 'Str');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::StartChildWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildPolicy', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::StartTimerDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::StartTimerFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::StartTimerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::TagFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has tag => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::TaskList with (AWS::API::ResultParser, AWS::API::ToParams) {
  has name => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::TimerCanceledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::TimerFiredEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::TimerStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::WorkflowExecution with (AWS::API::ResultParser, AWS::API::ToParams) {
  has runId => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionCancelRequestedCause');
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution');
}

class AWS::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::WorkflowExecutionConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildPolicy', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildPolicy', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has newExecutionRunId => (is => 'ro', isa => 'Str', required => 1);
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::WorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::WorkflowExecutionFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::WorkflowExecutionInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cancelRequested => (is => 'ro', isa => 'Str');
  has closeStatus => (is => 'ro', isa => 'AWS::SimpleWorkflow::CloseStatus');
  has closeTimestamp => (is => 'ro', isa => 'Str');
  has execution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
  has executionStatus => (is => 'ro', isa => 'AWS::SimpleWorkflow::ExecutionStatus', required => 1);
  has parent => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution');
  has startTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::WorkflowExecutionOpenCounts with (AWS::API::ResultParser, AWS::API::ToParams) {
  has openActivityTasks => (is => 'ro', isa => 'Int', required => 1);
  has openChildWorkflowExecutions => (is => 'ro', isa => 'Int', required => 1);
  has openDecisionTasks => (is => 'ro', isa => 'Int', required => 1);
  has openTimers => (is => 'ro', isa => 'Int', required => 1);
}

class AWS::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution');
  has input => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::WorkflowExecutionStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildPolicy', required => 1);
  has continuedExecutionRunId => (is => 'ro', isa => 'Str');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has parentInitiatedEventId => (is => 'ro', isa => 'Num');
  has parentWorkflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}

class AWS::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionTerminatedCause');
  has childPolicy => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildPolicy', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildPolicy', required => 1);
  has timeoutType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionTimeoutType', required => 1);
}

class AWS::SimpleWorkflow::WorkflowType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SimpleWorkflow::WorkflowTypeConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has defaultChildPolicy => (is => 'ro', isa => 'AWS::SimpleWorkflow::ChildPolicy');
  has defaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::WorkflowTypeFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');
}

class AWS::SimpleWorkflow::WorkflowTypeInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'AWS::SimpleWorkflow::RegistrationStatus', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);
}



class AWS::SimpleWorkflow::CountClosedWorkflowExecutions {
  has closeStatusFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::CloseStatusFilter');
  has closeTimeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::ExecutionTimeFilter');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionFilter');
  has startTimeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::ExecutionTimeFilter');
  has tagFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowTypeFilter');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountClosedWorkflowExecutions');
  has _returns => (isa => 'AWS::SimpleWorkflow::CountClosedWorkflowExecutionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountClosedWorkflowExecutionsResult');  
}
class AWS::SimpleWorkflow::CountOpenWorkflowExecutions {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionFilter');
  has startTimeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::ExecutionTimeFilter', required => 1);
  has tagFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowTypeFilter');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountOpenWorkflowExecutions');
  has _returns => (isa => 'AWS::SimpleWorkflow::CountOpenWorkflowExecutionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountOpenWorkflowExecutionsResult');  
}
class AWS::SimpleWorkflow::CountPendingActivityTasks {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingActivityTasks');
  has _returns => (isa => 'AWS::SimpleWorkflow::CountPendingActivityTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountPendingActivityTasksResult');  
}
class AWS::SimpleWorkflow::CountPendingDecisionTasks {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingDecisionTasks');
  has _returns => (isa => 'AWS::SimpleWorkflow::CountPendingDecisionTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountPendingDecisionTasksResult');  
}
class AWS::SimpleWorkflow::DeprecateActivityType {
  has activityType => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityType', required => 1);
  has domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateActivityType');
  has _returns => (isa => 'AWS::SimpleWorkflow::DeprecateActivityTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeprecateActivityTypeResult');  
}
class AWS::SimpleWorkflow::DeprecateDomain {
  has name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateDomain');
  has _returns => (isa => 'AWS::SimpleWorkflow::DeprecateDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeprecateDomainResult');  
}
class AWS::SimpleWorkflow::DeprecateWorkflowType {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateWorkflowType');
  has _returns => (isa => 'AWS::SimpleWorkflow::DeprecateWorkflowTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeprecateWorkflowTypeResult');  
}
class AWS::SimpleWorkflow::DescribeActivityType {
  has activityType => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityType', required => 1);
  has domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActivityType');
  has _returns => (isa => 'AWS::SimpleWorkflow::DescribeActivityTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeActivityTypeResult');  
}
class AWS::SimpleWorkflow::DescribeDomain {
  has name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomain');
  has _returns => (isa => 'AWS::SimpleWorkflow::DescribeDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainResult');  
}
class AWS::SimpleWorkflow::DescribeWorkflowExecution {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowExecution');
  has _returns => (isa => 'AWS::SimpleWorkflow::DescribeWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowExecutionResult');  
}
class AWS::SimpleWorkflow::DescribeWorkflowType {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowType');
  has _returns => (isa => 'AWS::SimpleWorkflow::DescribeWorkflowTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowTypeResult');  
}
class AWS::SimpleWorkflow::GetWorkflowExecutionHistory {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecutionHistory');
  has _returns => (isa => 'AWS::SimpleWorkflow::GetWorkflowExecutionHistoryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecutionHistoryResult');  
}
class AWS::SimpleWorkflow::ListActivityTypes {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has name => (is => 'ro', isa => 'Str');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListActivityTypes');
  has _returns => (isa => 'AWS::SimpleWorkflow::ListActivityTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListActivityTypesResult');  
}
class AWS::SimpleWorkflow::ListClosedWorkflowExecutions {
  has closeStatusFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::CloseStatusFilter');
  has closeTimeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::ExecutionTimeFilter');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionFilter');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Str');
  has startTimeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::ExecutionTimeFilter');
  has tagFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowTypeFilter');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListClosedWorkflowExecutions');
  has _returns => (isa => 'AWS::SimpleWorkflow::ListClosedWorkflowExecutionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListClosedWorkflowExecutionsResult');  
}
class AWS::SimpleWorkflow::ListDomains {
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  has _returns => (isa => 'AWS::SimpleWorkflow::ListDomainsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainsResult');  
}
class AWS::SimpleWorkflow::ListOpenWorkflowExecutions {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionFilter');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Str');
  has startTimeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::ExecutionTimeFilter', required => 1);
  has tagFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowTypeFilter');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListOpenWorkflowExecutions');
  has _returns => (isa => 'AWS::SimpleWorkflow::ListOpenWorkflowExecutionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListOpenWorkflowExecutionsResult');  
}
class AWS::SimpleWorkflow::ListWorkflowTypes {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has name => (is => 'ro', isa => 'Str');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflowTypes');
  has _returns => (isa => 'AWS::SimpleWorkflow::ListWorkflowTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListWorkflowTypesResult');  
}
class AWS::SimpleWorkflow::PollForActivityTask {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has identity => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PollForActivityTask');
  has _returns => (isa => 'AWS::SimpleWorkflow::PollForActivityTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PollForActivityTaskResult');  
}
class AWS::SimpleWorkflow::PollForDecisionTask {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has identity => (is => 'ro', isa => 'Str');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PollForDecisionTask');
  has _returns => (isa => 'AWS::SimpleWorkflow::PollForDecisionTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PollForDecisionTaskResult');  
}
class AWS::SimpleWorkflow::RecordActivityTaskHeartbeat {
  has details => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RecordActivityTaskHeartbeat');
  has _returns => (isa => 'AWS::SimpleWorkflow::RecordActivityTaskHeartbeatResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RecordActivityTaskHeartbeatResult');  
}
class AWS::SimpleWorkflow::RegisterActivityType {
  has defaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList');
  has defaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterActivityType');
  has _returns => (isa => 'AWS::SimpleWorkflow::RegisterActivityTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterActivityTypeResult');  
}
class AWS::SimpleWorkflow::RegisterDomain {
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDomain');
  has _returns => (isa => 'AWS::SimpleWorkflow::RegisterDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterDomainResult');  
}
class AWS::SimpleWorkflow::RegisterWorkflowType {
  has defaultChildPolicy => (is => 'ro', isa => 'Str');
  has defaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterWorkflowType');
  has _returns => (isa => 'AWS::SimpleWorkflow::RegisterWorkflowTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterWorkflowTypeResult');  
}
class AWS::SimpleWorkflow::RequestCancelWorkflowExecution {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RequestCancelWorkflowExecution');
  has _returns => (isa => 'AWS::SimpleWorkflow::RequestCancelWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RequestCancelWorkflowExecutionResult');  
}
class AWS::SimpleWorkflow::RespondActivityTaskCanceled {
  has details => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCanceled');
  has _returns => (isa => 'AWS::SimpleWorkflow::RespondActivityTaskCanceledResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCanceledResult');  
}
class AWS::SimpleWorkflow::RespondActivityTaskCompleted {
  has result => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCompleted');
  has _returns => (isa => 'AWS::SimpleWorkflow::RespondActivityTaskCompletedResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCompletedResult');  
}
class AWS::SimpleWorkflow::RespondActivityTaskFailed {
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskFailed');
  has _returns => (isa => 'AWS::SimpleWorkflow::RespondActivityTaskFailedResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskFailedResult');  
}
class AWS::SimpleWorkflow::RespondDecisionTaskCompleted {
  has decisions => (is => 'ro', isa => 'ArrayRef[AWS::SimpleWorkflow::Decision]');
  has executionContext => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompleted');
  has _returns => (isa => 'AWS::SimpleWorkflow::RespondDecisionTaskCompletedResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompletedResult');  
}
class AWS::SimpleWorkflow::SignalWorkflowExecution {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SignalWorkflowExecution');
  has _returns => (isa => 'AWS::SimpleWorkflow::SignalWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SignalWorkflowExecutionResult');  
}
class AWS::SimpleWorkflow::StartWorkflowExecution {
  has childPolicy => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'AWS::SimpleWorkflow::TaskList');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartWorkflowExecution');
  has _returns => (isa => 'AWS::SimpleWorkflow::StartWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartWorkflowExecutionResult');  
}
class AWS::SimpleWorkflow::TerminateWorkflowExecution {
  has childPolicy => (is => 'ro', isa => 'Str');
  has details => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has reason => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateWorkflowExecution');
  has _returns => (isa => 'AWS::SimpleWorkflow::TerminateWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateWorkflowExecutionResult');  
}

class AWS::SimpleWorkflow::CountClosedWorkflowExecutionsResult with AWS::API::ResultParser {
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
class AWS::SimpleWorkflow::CountOpenWorkflowExecutionsResult with AWS::API::ResultParser {
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
class AWS::SimpleWorkflow::CountPendingActivityTasksResult with AWS::API::ResultParser {
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
class AWS::SimpleWorkflow::CountPendingDecisionTasksResult with AWS::API::ResultParser {
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
class AWS::SimpleWorkflow::DescribeActivityTypeResult with AWS::API::ResultParser {
  has configuration => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityTypeInfo', required => 1);

}
class AWS::SimpleWorkflow::DescribeDomainResult with AWS::API::ResultParser {
  has configuration => (is => 'ro', isa => 'AWS::SimpleWorkflow::DomainConfiguration', required => 1);
  has domainInfo => (is => 'ro', isa => 'AWS::SimpleWorkflow::DomainInfo', required => 1);

}
class AWS::SimpleWorkflow::DescribeWorkflowExecutionResult with AWS::API::ResultParser {
  has executionConfiguration => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionConfiguration', required => 1);
  has executionInfo => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionInfo', required => 1);
  has latestActivityTaskTimestamp => (is => 'ro', isa => 'Str');
  has latestExecutionContext => (is => 'ro', isa => 'Str');
  has openCounts => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecutionOpenCounts', required => 1);

}
class AWS::SimpleWorkflow::DescribeWorkflowTypeResult with AWS::API::ResultParser {
  has configuration => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowTypeInfo', required => 1);

}
class AWS::SimpleWorkflow::GetWorkflowExecutionHistoryResult with AWS::API::ResultParser {
  has events => (is => 'ro', isa => 'ArrayRef[AWS::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
class AWS::SimpleWorkflow::ListActivityTypesResult with AWS::API::ResultParser {
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[AWS::SimpleWorkflow::ActivityTypeInfo]', required => 1);

}
class AWS::SimpleWorkflow::ListClosedWorkflowExecutionsResult with AWS::API::ResultParser {
  has executionInfos => (is => 'ro', isa => 'ArrayRef[AWS::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
class AWS::SimpleWorkflow::ListDomainsResult with AWS::API::ResultParser {
  has domainInfos => (is => 'ro', isa => 'ArrayRef[AWS::SimpleWorkflow::DomainInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
class AWS::SimpleWorkflow::ListOpenWorkflowExecutionsResult with AWS::API::ResultParser {
  has executionInfos => (is => 'ro', isa => 'ArrayRef[AWS::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
class AWS::SimpleWorkflow::ListWorkflowTypesResult with AWS::API::ResultParser {
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[AWS::SimpleWorkflow::WorkflowTypeInfo]', required => 1);

}
class AWS::SimpleWorkflow::PollForActivityTaskResult with AWS::API::ResultParser {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'AWS::SimpleWorkflow::ActivityType', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);

}
class AWS::SimpleWorkflow::PollForDecisionTaskResult with AWS::API::ResultParser {
  has events => (is => 'ro', isa => 'ArrayRef[AWS::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');
  has previousStartedEventId => (is => 'ro', isa => 'Num');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'AWS::SimpleWorkflow::WorkflowType', required => 1);

}
class AWS::SimpleWorkflow::RecordActivityTaskHeartbeatResult with AWS::API::ResultParser {
  has cancelRequested => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::SimpleWorkflow::StartWorkflowExecutionResult with AWS::API::ResultParser {
  has runId => (is => 'ro', isa => 'Str');

}

class AWS::SimpleWorkflow with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'swf');
  has version => (is => 'ro', isa => 'Str', default => '2012-01-25');
  
  method CountClosedWorkflowExecutions (%args) {
    my $call = AWS::SimpleWorkflow::CountClosedWorkflowExecutions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::CountClosedWorkflowExecutionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CountOpenWorkflowExecutions (%args) {
    my $call = AWS::SimpleWorkflow::CountOpenWorkflowExecutions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::CountOpenWorkflowExecutionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CountPendingActivityTasks (%args) {
    my $call = AWS::SimpleWorkflow::CountPendingActivityTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::CountPendingActivityTasksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CountPendingDecisionTasks (%args) {
    my $call = AWS::SimpleWorkflow::CountPendingDecisionTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::CountPendingDecisionTasksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeprecateActivityType (%args) {
    my $call = AWS::SimpleWorkflow::DeprecateActivityType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeprecateDomain (%args) {
    my $call = AWS::SimpleWorkflow::DeprecateDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeprecateWorkflowType (%args) {
    my $call = AWS::SimpleWorkflow::DeprecateWorkflowType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeActivityType (%args) {
    my $call = AWS::SimpleWorkflow::DescribeActivityType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::DescribeActivityTypeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDomain (%args) {
    my $call = AWS::SimpleWorkflow::DescribeDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::DescribeDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeWorkflowExecution (%args) {
    my $call = AWS::SimpleWorkflow::DescribeWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::DescribeWorkflowExecutionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeWorkflowType (%args) {
    my $call = AWS::SimpleWorkflow::DescribeWorkflowType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::DescribeWorkflowTypeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetWorkflowExecutionHistory (%args) {
    my $call = AWS::SimpleWorkflow::GetWorkflowExecutionHistory->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::GetWorkflowExecutionHistoryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListActivityTypes (%args) {
    my $call = AWS::SimpleWorkflow::ListActivityTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::ListActivityTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListClosedWorkflowExecutions (%args) {
    my $call = AWS::SimpleWorkflow::ListClosedWorkflowExecutions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::ListClosedWorkflowExecutionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListDomains (%args) {
    my $call = AWS::SimpleWorkflow::ListDomains->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::ListDomainsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListOpenWorkflowExecutions (%args) {
    my $call = AWS::SimpleWorkflow::ListOpenWorkflowExecutions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::ListOpenWorkflowExecutionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListWorkflowTypes (%args) {
    my $call = AWS::SimpleWorkflow::ListWorkflowTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::ListWorkflowTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PollForActivityTask (%args) {
    my $call = AWS::SimpleWorkflow::PollForActivityTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::PollForActivityTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PollForDecisionTask (%args) {
    my $call = AWS::SimpleWorkflow::PollForDecisionTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::PollForDecisionTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RecordActivityTaskHeartbeat (%args) {
    my $call = AWS::SimpleWorkflow::RecordActivityTaskHeartbeat->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::RecordActivityTaskHeartbeatResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RegisterActivityType (%args) {
    my $call = AWS::SimpleWorkflow::RegisterActivityType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RegisterDomain (%args) {
    my $call = AWS::SimpleWorkflow::RegisterDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RegisterWorkflowType (%args) {
    my $call = AWS::SimpleWorkflow::RegisterWorkflowType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RequestCancelWorkflowExecution (%args) {
    my $call = AWS::SimpleWorkflow::RequestCancelWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RespondActivityTaskCanceled (%args) {
    my $call = AWS::SimpleWorkflow::RespondActivityTaskCanceled->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RespondActivityTaskCompleted (%args) {
    my $call = AWS::SimpleWorkflow::RespondActivityTaskCompleted->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RespondActivityTaskFailed (%args) {
    my $call = AWS::SimpleWorkflow::RespondActivityTaskFailed->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RespondDecisionTaskCompleted (%args) {
    my $call = AWS::SimpleWorkflow::RespondDecisionTaskCompleted->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SignalWorkflowExecution (%args) {
    my $call = AWS::SimpleWorkflow::SignalWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StartWorkflowExecution (%args) {
    my $call = AWS::SimpleWorkflow::StartWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SimpleWorkflow::StartWorkflowExecutionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method TerminateWorkflowExecution (%args) {
    my $call = AWS::SimpleWorkflow::TerminateWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
