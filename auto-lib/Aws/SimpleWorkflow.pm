
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
<<<<<<< HEAD:auto-lib/AWS/SimpleWorkflow.pm
enum 'AWS::SimpleWorkflow::ActivityTaskTimeoutType', ['START_TO_CLOSE','SCHEDULE_TO_START','SCHEDULE_TO_CLOSE','HEARTBEAT',];
enum 'AWS::SimpleWorkflow::CancelTimerFailedCause', ['TIMER_ID_UNKNOWN','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::CancelWorkflowExecutionFailedCause', ['UNHANDLED_DECISION','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::ChildPolicy', ['TERMINATE','REQUEST_CANCEL','ABANDON',];
enum 'AWS::SimpleWorkflow::CloseStatus', ['COMPLETED','FAILED','CANCELED','TERMINATED','CONTINUED_AS_NEW','TIMED_OUT',];
enum 'AWS::SimpleWorkflow::CompleteWorkflowExecutionFailedCause', ['UNHANDLED_DECISION','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedCause', ['UNHANDLED_DECISION','WORKFLOW_TYPE_DEPRECATED','WORKFLOW_TYPE_DOES_NOT_EXIST','DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_TASK_LIST_UNDEFINED','DEFAULT_CHILD_POLICY_UNDEFINED','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::DecisionTaskTimeoutType', ['START_TO_CLOSE',];
enum 'AWS::SimpleWorkflow::DecisionType', ['ScheduleActivityTask','RequestCancelActivityTask','CompleteWorkflowExecution','FailWorkflowExecution','CancelWorkflowExecution','ContinueAsNewWorkflowExecution','RecordMarker','StartTimer','CancelTimer','SignalExternalWorkflowExecution','RequestCancelExternalWorkflowExecution','StartChildWorkflowExecution',];
enum 'AWS::SimpleWorkflow::EventType', ['WorkflowExecutionStarted','WorkflowExecutionCancelRequested','WorkflowExecutionCompleted','CompleteWorkflowExecutionFailed','WorkflowExecutionFailed','FailWorkflowExecutionFailed','WorkflowExecutionTimedOut','WorkflowExecutionCanceled','CancelWorkflowExecutionFailed','WorkflowExecutionContinuedAsNew','ContinueAsNewWorkflowExecutionFailed','WorkflowExecutionTerminated','DecisionTaskScheduled','DecisionTaskStarted','DecisionTaskCompleted','DecisionTaskTimedOut','ActivityTaskScheduled','ScheduleActivityTaskFailed','ActivityTaskStarted','ActivityTaskCompleted','ActivityTaskFailed','ActivityTaskTimedOut','ActivityTaskCanceled','ActivityTaskCancelRequested','RequestCancelActivityTaskFailed','WorkflowExecutionSignaled','MarkerRecorded','RecordMarkerFailed','TimerStarted','StartTimerFailed','TimerFired','TimerCanceled','CancelTimerFailed','StartChildWorkflowExecutionInitiated','StartChildWorkflowExecutionFailed','ChildWorkflowExecutionStarted','ChildWorkflowExecutionCompleted','ChildWorkflowExecutionFailed','ChildWorkflowExecutionTimedOut','ChildWorkflowExecutionCanceled','ChildWorkflowExecutionTerminated','SignalExternalWorkflowExecutionInitiated','SignalExternalWorkflowExecutionFailed','ExternalWorkflowExecutionSignaled','RequestCancelExternalWorkflowExecutionInitiated','RequestCancelExternalWorkflowExecutionFailed','ExternalWorkflowExecutionCancelRequested',];
enum 'AWS::SimpleWorkflow::ExecutionStatus', ['OPEN','CLOSED',];
enum 'AWS::SimpleWorkflow::FailWorkflowExecutionFailedCause', ['UNHANDLED_DECISION','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::RecordMarkerFailedCause', ['OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::RegistrationStatus', ['REGISTERED','DEPRECATED',];
enum 'AWS::SimpleWorkflow::RequestCancelActivityTaskFailedCause', ['ACTIVITY_ID_UNKNOWN','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedCause', ['UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION','REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::ScheduleActivityTaskFailedCause', ['ACTIVITY_TYPE_DEPRECATED','ACTIVITY_TYPE_DOES_NOT_EXIST','ACTIVITY_ID_ALREADY_IN_USE','OPEN_ACTIVITIES_LIMIT_EXCEEDED','ACTIVITY_CREATION_RATE_EXCEEDED','DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_TASK_LIST_UNDEFINED','DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED','DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::SignalExternalWorkflowExecutionFailedCause', ['UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION','SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::StartChildWorkflowExecutionFailedCause', ['WORKFLOW_TYPE_DOES_NOT_EXIST','WORKFLOW_TYPE_DEPRECATED','OPEN_CHILDREN_LIMIT_EXCEEDED','OPEN_WORKFLOWS_LIMIT_EXCEEDED','CHILD_CREATION_RATE_EXCEEDED','WORKFLOW_ALREADY_RUNNING','DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_TASK_LIST_UNDEFINED','DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED','DEFAULT_CHILD_POLICY_UNDEFINED','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::StartTimerFailedCause', ['TIMER_ID_ALREADY_IN_USE','OPEN_TIMERS_LIMIT_EXCEEDED','TIMER_CREATION_RATE_EXCEEDED','OPERATION_NOT_PERMITTED',];
enum 'AWS::SimpleWorkflow::WorkflowExecutionCancelRequestedCause', ['CHILD_POLICY_APPLIED',];
enum 'AWS::SimpleWorkflow::WorkflowExecutionTerminatedCause', ['CHILD_POLICY_APPLIED','EVENT_LIMIT_EXCEEDED','OPERATOR_INITIATED',];
enum 'AWS::SimpleWorkflow::WorkflowExecutionTimeoutType', ['START_TO_CLOSE',];


class AWS::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
=======
enum 'Aws::SimpleWorkflow::ActivityTaskTimeoutType', [qw(START_TO_CLOSE SCHEDULE_TO_START SCHEDULE_TO_CLOSE HEARTBEAT )];
enum 'Aws::SimpleWorkflow::CancelTimerFailedCause', [qw(TIMER_ID_UNKNOWN OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::CancelWorkflowExecutionFailedCause', [qw(UNHANDLED_DECISION OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::ChildPolicy', [qw(TERMINATE REQUEST_CANCEL ABANDON )];
enum 'Aws::SimpleWorkflow::CloseStatus', [qw(COMPLETED FAILED CANCELED TERMINATED CONTINUED_AS_NEW TIMED_OUT )];
enum 'Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedCause', [qw(UNHANDLED_DECISION OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedCause', [qw(UNHANDLED_DECISION WORKFLOW_TYPE_DEPRECATED WORKFLOW_TYPE_DOES_NOT_EXIST DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_TASK_LIST_UNDEFINED DEFAULT_CHILD_POLICY_UNDEFINED OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::DecisionTaskTimeoutType', [qw(START_TO_CLOSE )];
enum 'Aws::SimpleWorkflow::DecisionType', [qw(ScheduleActivityTask RequestCancelActivityTask CompleteWorkflowExecution FailWorkflowExecution CancelWorkflowExecution ContinueAsNewWorkflowExecution RecordMarker StartTimer CancelTimer SignalExternalWorkflowExecution RequestCancelExternalWorkflowExecution StartChildWorkflowExecution )];
enum 'Aws::SimpleWorkflow::EventType', [qw(WorkflowExecutionStarted WorkflowExecutionCancelRequested WorkflowExecutionCompleted CompleteWorkflowExecutionFailed WorkflowExecutionFailed FailWorkflowExecutionFailed WorkflowExecutionTimedOut WorkflowExecutionCanceled CancelWorkflowExecutionFailed WorkflowExecutionContinuedAsNew ContinueAsNewWorkflowExecutionFailed WorkflowExecutionTerminated DecisionTaskScheduled DecisionTaskStarted DecisionTaskCompleted DecisionTaskTimedOut ActivityTaskScheduled ScheduleActivityTaskFailed ActivityTaskStarted ActivityTaskCompleted ActivityTaskFailed ActivityTaskTimedOut ActivityTaskCanceled ActivityTaskCancelRequested RequestCancelActivityTaskFailed WorkflowExecutionSignaled MarkerRecorded RecordMarkerFailed TimerStarted StartTimerFailed TimerFired TimerCanceled CancelTimerFailed StartChildWorkflowExecutionInitiated StartChildWorkflowExecutionFailed ChildWorkflowExecutionStarted ChildWorkflowExecutionCompleted ChildWorkflowExecutionFailed ChildWorkflowExecutionTimedOut ChildWorkflowExecutionCanceled ChildWorkflowExecutionTerminated SignalExternalWorkflowExecutionInitiated SignalExternalWorkflowExecutionFailed ExternalWorkflowExecutionSignaled RequestCancelExternalWorkflowExecutionInitiated RequestCancelExternalWorkflowExecutionFailed ExternalWorkflowExecutionCancelRequested )];
enum 'Aws::SimpleWorkflow::ExecutionStatus', [qw(OPEN CLOSED )];
enum 'Aws::SimpleWorkflow::FailWorkflowExecutionFailedCause', [qw(UNHANDLED_DECISION OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::RecordMarkerFailedCause', [qw(OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::RegistrationStatus', [qw(REGISTERED DEPRECATED )];
enum 'Aws::SimpleWorkflow::RequestCancelActivityTaskFailedCause', [qw(ACTIVITY_ID_UNKNOWN OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedCause', [qw(UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::ScheduleActivityTaskFailedCause', [qw(ACTIVITY_TYPE_DEPRECATED ACTIVITY_TYPE_DOES_NOT_EXIST ACTIVITY_ID_ALREADY_IN_USE OPEN_ACTIVITIES_LIMIT_EXCEEDED ACTIVITY_CREATION_RATE_EXCEEDED DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_TASK_LIST_UNDEFINED DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedCause', [qw(UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::StartChildWorkflowExecutionFailedCause', [qw(WORKFLOW_TYPE_DOES_NOT_EXIST WORKFLOW_TYPE_DEPRECATED OPEN_CHILDREN_LIMIT_EXCEEDED OPEN_WORKFLOWS_LIMIT_EXCEEDED CHILD_CREATION_RATE_EXCEEDED WORKFLOW_ALREADY_RUNNING DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_TASK_LIST_UNDEFINED DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED DEFAULT_CHILD_POLICY_UNDEFINED OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::StartTimerFailedCause', [qw(TIMER_ID_ALREADY_IN_USE OPEN_TIMERS_LIMIT_EXCEEDED TIMER_CREATION_RATE_EXCEEDED OPERATION_NOT_PERMITTED )];
enum 'Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedCause', [qw(CHILD_POLICY_APPLIED )];
enum 'Aws::SimpleWorkflow::WorkflowExecutionTerminatedCause', [qw(CHILD_POLICY_APPLIED EVENT_LIMIT_EXCEEDED OPERATOR_INITIATED )];
enum 'Aws::SimpleWorkflow::WorkflowExecutionTimeoutType', [qw(START_TO_CLOSE )];


class Aws::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
>>>>>>> 323bbcedd10d641f975a57cc3645d986efd7a617:auto-lib/Aws/SimpleWorkflow.pm
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::ActivityTaskCanceledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has latestCancelRequestedEventId => (is => 'ro', isa => 'Num');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::ActivityTaskCompletedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has result => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::ActivityTaskFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::ActivityTaskScheduledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::SimpleWorkflow::ActivityTaskStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTaskTimeoutType', required => 1);
}

class Aws::SimpleWorkflow::ActivityType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::ActivityTypeConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has defaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::ActivityTypeInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::RegistrationStatus', required => 1);
}

class Aws::SimpleWorkflow::CancelTimerDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::CancelTimerFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelTimerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::CancelWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

class Aws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

class Aws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has reason => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

class Aws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

class Aws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

class Aws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTimeoutType', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

class Aws::SimpleWorkflow::CloseStatusFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::CloseStatus', required => 1);
}

class Aws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has result => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowTypeVersion => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::Decision with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::SimpleWorkflow::DecisionTaskCompletedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has executionContext => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::DecisionTaskScheduledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
}

class Aws::SimpleWorkflow::DecisionTaskStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::DecisionTaskTimeoutType', required => 1);
}

class Aws::SimpleWorkflow::DomainConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::DomainInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::RegistrationStatus', required => 1);
}

class Aws::SimpleWorkflow::ExecutionTimeFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has latestDate => (is => 'ro', isa => 'Str');
  has oldestDate => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
}

class Aws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
}

class Aws::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::FailWorkflowExecutionFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::HistoryEvent with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::SimpleWorkflow::MarkerRecordedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::RecordMarkerDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::RecordMarkerFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::RecordMarkerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelActivityTaskFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::ScheduleActivityTaskFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartChildWorkflowExecutionFailedCause', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}

class Aws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::SimpleWorkflow::StartTimerDecisionAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::StartTimerFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::StartTimerFailedCause', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::TagFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has tag => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::TaskList with (AWS::API::ResultParser, AWS::API::ToParams) {
  has name => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::TimerCanceledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::TimerFiredEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::TimerStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::WorkflowExecution with (AWS::API::ResultParser, AWS::API::ToParams) {
  has runId => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedCause');
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
}

class Aws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::WorkflowExecutionConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::WorkflowExecutionFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::WorkflowExecutionInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::SimpleWorkflow::WorkflowExecutionOpenCounts with (AWS::API::ResultParser, AWS::API::ToParams) {
  has openActivityTasks => (is => 'ro', isa => 'Int', required => 1);
  has openChildWorkflowExecutions => (is => 'ro', isa => 'Int', required => 1);
  has openDecisionTasks => (is => 'ro', isa => 'Int', required => 1);
  has openTimers => (is => 'ro', isa => 'Int', required => 1);
}

class Aws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
  has input => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cause => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTerminatedCause');
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has childPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy', required => 1);
  has timeoutType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionTimeoutType', required => 1);
}

class Aws::SimpleWorkflow::WorkflowType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SimpleWorkflow::WorkflowTypeConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has defaultChildPolicy => (is => 'ro', isa => 'Aws::SimpleWorkflow::ChildPolicy');
  has defaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::WorkflowTypeFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');
}

class Aws::SimpleWorkflow::WorkflowTypeInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Aws::SimpleWorkflow::RegistrationStatus', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}



class Aws::SimpleWorkflow::CountClosedWorkflowExecutions {
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
class Aws::SimpleWorkflow::CountOpenWorkflowExecutions {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionFilter');
  has startTimeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::ExecutionTimeFilter', required => 1);
  has tagFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeFilter');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountOpenWorkflowExecutions');
  has _returns => (isa => 'Aws::SimpleWorkflow::CountOpenWorkflowExecutionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountOpenWorkflowExecutionsResult');  
}
class Aws::SimpleWorkflow::CountPendingActivityTasks {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingActivityTasks');
  has _returns => (isa => 'Aws::SimpleWorkflow::CountPendingActivityTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountPendingActivityTasksResult');  
}
class Aws::SimpleWorkflow::CountPendingDecisionTasks {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingDecisionTasks');
  has _returns => (isa => 'Aws::SimpleWorkflow::CountPendingDecisionTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CountPendingDecisionTasksResult');  
}
class Aws::SimpleWorkflow::DeprecateActivityType {
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateActivityType');
  has _returns => (isa => 'Aws::SimpleWorkflow::DeprecateActivityTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeprecateActivityTypeResult');  
}
class Aws::SimpleWorkflow::DeprecateDomain {
  has name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateDomain');
  has _returns => (isa => 'Aws::SimpleWorkflow::DeprecateDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeprecateDomainResult');  
}
class Aws::SimpleWorkflow::DeprecateWorkflowType {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateWorkflowType');
  has _returns => (isa => 'Aws::SimpleWorkflow::DeprecateWorkflowTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeprecateWorkflowTypeResult');  
}
class Aws::SimpleWorkflow::DescribeActivityType {
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActivityType');
  has _returns => (isa => 'Aws::SimpleWorkflow::DescribeActivityTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeActivityTypeResult');  
}
class Aws::SimpleWorkflow::DescribeDomain {
  has name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomain');
  has _returns => (isa => 'Aws::SimpleWorkflow::DescribeDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainResult');  
}
class Aws::SimpleWorkflow::DescribeWorkflowExecution {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowExecution');
  has _returns => (isa => 'Aws::SimpleWorkflow::DescribeWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowExecutionResult');  
}
class Aws::SimpleWorkflow::DescribeWorkflowType {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowType');
  has _returns => (isa => 'Aws::SimpleWorkflow::DescribeWorkflowTypeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowTypeResult');  
}
class Aws::SimpleWorkflow::GetWorkflowExecutionHistory {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecutionHistory');
  has _returns => (isa => 'Aws::SimpleWorkflow::GetWorkflowExecutionHistoryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecutionHistoryResult');  
}
class Aws::SimpleWorkflow::ListActivityTypes {
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
class Aws::SimpleWorkflow::ListClosedWorkflowExecutions {
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
class Aws::SimpleWorkflow::ListDomains {
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has registrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has reverseOrder => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  has _returns => (isa => 'Aws::SimpleWorkflow::ListDomainsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainsResult');  
}
class Aws::SimpleWorkflow::ListOpenWorkflowExecutions {
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
class Aws::SimpleWorkflow::ListWorkflowTypes {
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
class Aws::SimpleWorkflow::PollForActivityTask {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has identity => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PollForActivityTask');
  has _returns => (isa => 'Aws::SimpleWorkflow::PollForActivityTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PollForActivityTaskResult');  
}
class Aws::SimpleWorkflow::PollForDecisionTask {
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
class Aws::SimpleWorkflow::RecordActivityTaskHeartbeat {
  has details => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RecordActivityTaskHeartbeat');
  has _returns => (isa => 'Aws::SimpleWorkflow::RecordActivityTaskHeartbeatResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RecordActivityTaskHeartbeatResult');  
}
class Aws::SimpleWorkflow::RegisterActivityType {
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
class Aws::SimpleWorkflow::RegisterDomain {
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDomain');
  has _returns => (isa => 'Aws::SimpleWorkflow::RegisterDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterDomainResult');  
}
class Aws::SimpleWorkflow::RegisterWorkflowType {
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
class Aws::SimpleWorkflow::RequestCancelWorkflowExecution {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RequestCancelWorkflowExecution');
  has _returns => (isa => 'Aws::SimpleWorkflow::RequestCancelWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RequestCancelWorkflowExecutionResult');  
}
class Aws::SimpleWorkflow::RespondActivityTaskCanceled {
  has details => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCanceled');
  has _returns => (isa => 'Aws::SimpleWorkflow::RespondActivityTaskCanceledResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCanceledResult');  
}
class Aws::SimpleWorkflow::RespondActivityTaskCompleted {
  has result => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCompleted');
  has _returns => (isa => 'Aws::SimpleWorkflow::RespondActivityTaskCompletedResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskCompletedResult');  
}
class Aws::SimpleWorkflow::RespondActivityTaskFailed {
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskFailed');
  has _returns => (isa => 'Aws::SimpleWorkflow::RespondActivityTaskFailedResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondActivityTaskFailedResult');  
}
class Aws::SimpleWorkflow::RespondDecisionTaskCompleted {
  has decisions => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::Decision]');
  has executionContext => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompleted');
  has _returns => (isa => 'Aws::SimpleWorkflow::RespondDecisionTaskCompletedResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompletedResult');  
}
class Aws::SimpleWorkflow::SignalWorkflowExecution {
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SignalWorkflowExecution');
  has _returns => (isa => 'Aws::SimpleWorkflow::SignalWorkflowExecutionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SignalWorkflowExecutionResult');  
}
class Aws::SimpleWorkflow::StartWorkflowExecution {
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
class Aws::SimpleWorkflow::TerminateWorkflowExecution {
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

class Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult with AWS::API::ResultParser {
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
class Aws::SimpleWorkflow::CountOpenWorkflowExecutionsResult with AWS::API::ResultParser {
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
class Aws::SimpleWorkflow::CountPendingActivityTasksResult with AWS::API::ResultParser {
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
class Aws::SimpleWorkflow::CountPendingDecisionTasksResult with AWS::API::ResultParser {
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Str');

}
class Aws::SimpleWorkflow::DescribeActivityTypeResult with AWS::API::ResultParser {
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTypeInfo', required => 1);

}
class Aws::SimpleWorkflow::DescribeDomainResult with AWS::API::ResultParser {
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::DomainConfiguration', required => 1);
  has domainInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::DomainInfo', required => 1);

}
class Aws::SimpleWorkflow::DescribeWorkflowExecutionResult with AWS::API::ResultParser {
  has executionConfiguration => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionConfiguration', required => 1);
  has executionInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionInfo', required => 1);
  has latestActivityTaskTimestamp => (is => 'ro', isa => 'Str');
  has latestExecutionContext => (is => 'ro', isa => 'Str');
  has openCounts => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionOpenCounts', required => 1);

}
class Aws::SimpleWorkflow::DescribeWorkflowTypeResult with AWS::API::ResultParser {
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeInfo', required => 1);

}
class Aws::SimpleWorkflow::GetWorkflowExecutionHistoryResult with AWS::API::ResultParser {
  has events => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
class Aws::SimpleWorkflow::ListActivityTypesResult with AWS::API::ResultParser {
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::ActivityTypeInfo]', required => 1);

}
class Aws::SimpleWorkflow::ListClosedWorkflowExecutionsResult with AWS::API::ResultParser {
  has executionInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
class Aws::SimpleWorkflow::ListDomainsResult with AWS::API::ResultParser {
  has domainInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::DomainInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
class Aws::SimpleWorkflow::ListOpenWorkflowExecutionsResult with AWS::API::ResultParser {
  has executionInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
class Aws::SimpleWorkflow::ListWorkflowTypesResult with AWS::API::ResultParser {
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowTypeInfo]', required => 1);

}
class Aws::SimpleWorkflow::PollForActivityTaskResult with AWS::API::ResultParser {
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);

}
class Aws::SimpleWorkflow::PollForDecisionTaskResult with AWS::API::ResultParser {
  has events => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');
  has previousStartedEventId => (is => 'ro', isa => 'Num');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

}
class Aws::SimpleWorkflow::RecordActivityTaskHeartbeatResult with AWS::API::ResultParser {
  has cancelRequested => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::SimpleWorkflow::StartWorkflowExecutionResult with AWS::API::ResultParser {
  has runId => (is => 'ro', isa => 'Str');

}

class Aws::SimpleWorkflow with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'swf');
  has version => (is => 'ro', isa => 'Str', default => '2012-01-25');
  
  method CountClosedWorkflowExecutions (%args) {
    my $call = Aws::SimpleWorkflow::CountClosedWorkflowExecutions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CountOpenWorkflowExecutions (%args) {
    my $call = Aws::SimpleWorkflow::CountOpenWorkflowExecutions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::CountOpenWorkflowExecutionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CountPendingActivityTasks (%args) {
    my $call = Aws::SimpleWorkflow::CountPendingActivityTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::CountPendingActivityTasksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CountPendingDecisionTasks (%args) {
    my $call = Aws::SimpleWorkflow::CountPendingDecisionTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::CountPendingDecisionTasksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeprecateActivityType (%args) {
    my $call = Aws::SimpleWorkflow::DeprecateActivityType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeprecateDomain (%args) {
    my $call = Aws::SimpleWorkflow::DeprecateDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeprecateWorkflowType (%args) {
    my $call = Aws::SimpleWorkflow::DeprecateWorkflowType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeActivityType (%args) {
    my $call = Aws::SimpleWorkflow::DescribeActivityType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::DescribeActivityTypeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDomain (%args) {
    my $call = Aws::SimpleWorkflow::DescribeDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::DescribeDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeWorkflowExecution (%args) {
    my $call = Aws::SimpleWorkflow::DescribeWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::DescribeWorkflowExecutionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeWorkflowType (%args) {
    my $call = Aws::SimpleWorkflow::DescribeWorkflowType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::DescribeWorkflowTypeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetWorkflowExecutionHistory (%args) {
    my $call = Aws::SimpleWorkflow::GetWorkflowExecutionHistory->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::GetWorkflowExecutionHistoryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListActivityTypes (%args) {
    my $call = Aws::SimpleWorkflow::ListActivityTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListActivityTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListClosedWorkflowExecutions (%args) {
    my $call = Aws::SimpleWorkflow::ListClosedWorkflowExecutions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListClosedWorkflowExecutionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListDomains (%args) {
    my $call = Aws::SimpleWorkflow::ListDomains->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListDomainsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListOpenWorkflowExecutions (%args) {
    my $call = Aws::SimpleWorkflow::ListOpenWorkflowExecutions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListOpenWorkflowExecutionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListWorkflowTypes (%args) {
    my $call = Aws::SimpleWorkflow::ListWorkflowTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::ListWorkflowTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PollForActivityTask (%args) {
    my $call = Aws::SimpleWorkflow::PollForActivityTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::PollForActivityTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PollForDecisionTask (%args) {
    my $call = Aws::SimpleWorkflow::PollForDecisionTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::PollForDecisionTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RecordActivityTaskHeartbeat (%args) {
    my $call = Aws::SimpleWorkflow::RecordActivityTaskHeartbeat->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::RecordActivityTaskHeartbeatResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RegisterActivityType (%args) {
    my $call = Aws::SimpleWorkflow::RegisterActivityType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RegisterDomain (%args) {
    my $call = Aws::SimpleWorkflow::RegisterDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RegisterWorkflowType (%args) {
    my $call = Aws::SimpleWorkflow::RegisterWorkflowType->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RequestCancelWorkflowExecution (%args) {
    my $call = Aws::SimpleWorkflow::RequestCancelWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RespondActivityTaskCanceled (%args) {
    my $call = Aws::SimpleWorkflow::RespondActivityTaskCanceled->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RespondActivityTaskCompleted (%args) {
    my $call = Aws::SimpleWorkflow::RespondActivityTaskCompleted->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RespondActivityTaskFailed (%args) {
    my $call = Aws::SimpleWorkflow::RespondActivityTaskFailed->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RespondDecisionTaskCompleted (%args) {
    my $call = Aws::SimpleWorkflow::RespondDecisionTaskCompleted->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SignalWorkflowExecution (%args) {
    my $call = Aws::SimpleWorkflow::SignalWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StartWorkflowExecution (%args) {
    my $call = Aws::SimpleWorkflow::StartWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SimpleWorkflow::StartWorkflowExecutionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method TerminateWorkflowExecution (%args) {
    my $call = Aws::SimpleWorkflow::TerminateWorkflowExecution->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
