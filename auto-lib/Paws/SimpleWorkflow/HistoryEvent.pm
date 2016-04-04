package Paws::SimpleWorkflow::HistoryEvent;
  use Moose;
  has ActivityTaskCanceledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskCanceledEventAttributes', xmlname => 'activityTaskCanceledEventAttributes', request_name => 'activityTaskCanceledEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ActivityTaskCancelRequestedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes', xmlname => 'activityTaskCancelRequestedEventAttributes', request_name => 'activityTaskCancelRequestedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ActivityTaskCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskCompletedEventAttributes', xmlname => 'activityTaskCompletedEventAttributes', request_name => 'activityTaskCompletedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ActivityTaskFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskFailedEventAttributes', xmlname => 'activityTaskFailedEventAttributes', request_name => 'activityTaskFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ActivityTaskScheduledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes', xmlname => 'activityTaskScheduledEventAttributes', request_name => 'activityTaskScheduledEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ActivityTaskStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes', xmlname => 'activityTaskStartedEventAttributes', request_name => 'activityTaskStartedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ActivityTaskTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes', xmlname => 'activityTaskTimedOutEventAttributes', request_name => 'activityTaskTimedOutEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has CancelTimerFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CancelTimerFailedEventAttributes', xmlname => 'cancelTimerFailedEventAttributes', request_name => 'cancelTimerFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has CancelWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes', xmlname => 'cancelWorkflowExecutionFailedEventAttributes', request_name => 'cancelWorkflowExecutionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ChildWorkflowExecutionCanceledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes', xmlname => 'childWorkflowExecutionCanceledEventAttributes', request_name => 'childWorkflowExecutionCanceledEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ChildWorkflowExecutionCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes', xmlname => 'childWorkflowExecutionCompletedEventAttributes', request_name => 'childWorkflowExecutionCompletedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ChildWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes', xmlname => 'childWorkflowExecutionFailedEventAttributes', request_name => 'childWorkflowExecutionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ChildWorkflowExecutionStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes', xmlname => 'childWorkflowExecutionStartedEventAttributes', request_name => 'childWorkflowExecutionStartedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ChildWorkflowExecutionTerminatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes', xmlname => 'childWorkflowExecutionTerminatedEventAttributes', request_name => 'childWorkflowExecutionTerminatedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ChildWorkflowExecutionTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes', xmlname => 'childWorkflowExecutionTimedOutEventAttributes', request_name => 'childWorkflowExecutionTimedOutEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has CompleteWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes', xmlname => 'completeWorkflowExecutionFailedEventAttributes', request_name => 'completeWorkflowExecutionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ContinueAsNewWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes', xmlname => 'continueAsNewWorkflowExecutionFailedEventAttributes', request_name => 'continueAsNewWorkflowExecutionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has DecisionTaskCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes', xmlname => 'decisionTaskCompletedEventAttributes', request_name => 'decisionTaskCompletedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has DecisionTaskScheduledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes', xmlname => 'decisionTaskScheduledEventAttributes', request_name => 'decisionTaskScheduledEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has DecisionTaskStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes', xmlname => 'decisionTaskStartedEventAttributes', request_name => 'decisionTaskStartedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has DecisionTaskTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes', xmlname => 'decisionTaskTimedOutEventAttributes', request_name => 'decisionTaskTimedOutEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has EventId => (is => 'ro', isa => 'Int', xmlname => 'eventId', request_name => 'eventId', traits => ['Unwrapped','NameInRequest'], required => 1);
  has EventTimestamp => (is => 'ro', isa => 'Paws::API::TimeStamp', xmlname => 'eventTimestamp', request_name => 'eventTimestamp', traits => ['Unwrapped','NameInRequest'], required => 1);
  has EventType => (is => 'ro', isa => 'Str', xmlname => 'eventType', request_name => 'eventType', traits => ['Unwrapped','NameInRequest'], required => 1);
  has ExternalWorkflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes', xmlname => 'externalWorkflowExecutionCancelRequestedEventAttributes', request_name => 'externalWorkflowExecutionCancelRequestedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ExternalWorkflowExecutionSignaledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes', xmlname => 'externalWorkflowExecutionSignaledEventAttributes', request_name => 'externalWorkflowExecutionSignaledEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has FailWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes', xmlname => 'failWorkflowExecutionFailedEventAttributes', request_name => 'failWorkflowExecutionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes', xmlname => 'lambdaFunctionCompletedEventAttributes', request_name => 'lambdaFunctionCompletedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes', xmlname => 'lambdaFunctionFailedEventAttributes', request_name => 'lambdaFunctionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionScheduledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes', xmlname => 'lambdaFunctionScheduledEventAttributes', request_name => 'lambdaFunctionScheduledEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes', xmlname => 'lambdaFunctionStartedEventAttributes', request_name => 'lambdaFunctionStartedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes', xmlname => 'lambdaFunctionTimedOutEventAttributes', request_name => 'lambdaFunctionTimedOutEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has MarkerRecordedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::MarkerRecordedEventAttributes', xmlname => 'markerRecordedEventAttributes', request_name => 'markerRecordedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has RecordMarkerFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RecordMarkerFailedEventAttributes', xmlname => 'recordMarkerFailedEventAttributes', request_name => 'recordMarkerFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has RequestCancelActivityTaskFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes', xmlname => 'requestCancelActivityTaskFailedEventAttributes', request_name => 'requestCancelActivityTaskFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has RequestCancelExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes', xmlname => 'requestCancelExternalWorkflowExecutionFailedEventAttributes', request_name => 'requestCancelExternalWorkflowExecutionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has RequestCancelExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes', xmlname => 'requestCancelExternalWorkflowExecutionInitiatedEventAttributes', request_name => 'requestCancelExternalWorkflowExecutionInitiatedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ScheduleActivityTaskFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes', xmlname => 'scheduleActivityTaskFailedEventAttributes', request_name => 'scheduleActivityTaskFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has ScheduleLambdaFunctionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes', xmlname => 'scheduleLambdaFunctionFailedEventAttributes', request_name => 'scheduleLambdaFunctionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has SignalExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes', xmlname => 'signalExternalWorkflowExecutionFailedEventAttributes', request_name => 'signalExternalWorkflowExecutionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has SignalExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes', xmlname => 'signalExternalWorkflowExecutionInitiatedEventAttributes', request_name => 'signalExternalWorkflowExecutionInitiatedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has StartChildWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes', xmlname => 'startChildWorkflowExecutionFailedEventAttributes', request_name => 'startChildWorkflowExecutionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has StartChildWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes', xmlname => 'startChildWorkflowExecutionInitiatedEventAttributes', request_name => 'startChildWorkflowExecutionInitiatedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has StartLambdaFunctionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes', xmlname => 'startLambdaFunctionFailedEventAttributes', request_name => 'startLambdaFunctionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has StartTimerFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartTimerFailedEventAttributes', xmlname => 'startTimerFailedEventAttributes', request_name => 'startTimerFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has TimerCanceledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::TimerCanceledEventAttributes', xmlname => 'timerCanceledEventAttributes', request_name => 'timerCanceledEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has TimerFiredEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::TimerFiredEventAttributes', xmlname => 'timerFiredEventAttributes', request_name => 'timerFiredEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has TimerStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::TimerStartedEventAttributes', xmlname => 'timerStartedEventAttributes', request_name => 'timerStartedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has WorkflowExecutionCanceledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes', xmlname => 'workflowExecutionCanceledEventAttributes', request_name => 'workflowExecutionCanceledEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has WorkflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes', xmlname => 'workflowExecutionCancelRequestedEventAttributes', request_name => 'workflowExecutionCancelRequestedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has WorkflowExecutionCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes', xmlname => 'workflowExecutionCompletedEventAttributes', request_name => 'workflowExecutionCompletedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has WorkflowExecutionContinuedAsNewEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes', xmlname => 'workflowExecutionContinuedAsNewEventAttributes', request_name => 'workflowExecutionContinuedAsNewEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has WorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes', xmlname => 'workflowExecutionFailedEventAttributes', request_name => 'workflowExecutionFailedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has WorkflowExecutionSignaledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes', xmlname => 'workflowExecutionSignaledEventAttributes', request_name => 'workflowExecutionSignaledEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has WorkflowExecutionStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes', xmlname => 'workflowExecutionStartedEventAttributes', request_name => 'workflowExecutionStartedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has WorkflowExecutionTerminatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes', xmlname => 'workflowExecutionTerminatedEventAttributes', request_name => 'workflowExecutionTerminatedEventAttributes', traits => ['Unwrapped','NameInRequest']);
  has WorkflowExecutionTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes', xmlname => 'workflowExecutionTimedOutEventAttributes', request_name => 'workflowExecutionTimedOutEventAttributes', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::HistoryEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::HistoryEvent object:

  $service_obj->Method(Att1 => { ActivityTaskCanceledEventAttributes => $value, ..., WorkflowExecutionTimedOutEventAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::HistoryEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityTaskCanceledEventAttributes

=head1 DESCRIPTION

Event within a workflow execution. A history event can be one of these
types:

=over

=item * B<WorkflowExecutionStarted>: The workflow execution was
started.

=item * B<WorkflowExecutionCompleted>: The workflow execution was
closed due to successful completion.

=item * B<WorkflowExecutionFailed>: The workflow execution closed due
to a failure.

=item * B<WorkflowExecutionTimedOut>: The workflow execution was closed
because a time out was exceeded.

=item * B<WorkflowExecutionCanceled>: The workflow execution was
successfully canceled and closed.

=item * B<WorkflowExecutionTerminated>: The workflow execution was
terminated.

=item * B<WorkflowExecutionContinuedAsNew>: The workflow execution was
closed and a new execution of the same type was created with the same
workflowId.

=item * B<WorkflowExecutionCancelRequested>: A request to cancel this
workflow execution was made.

=item * B<DecisionTaskScheduled>: A decision task was scheduled for the
workflow execution.

=item * B<DecisionTaskStarted>: The decision task was dispatched to a
decider.

=item * B<DecisionTaskCompleted>: The decider successfully completed a
decision task by calling RespondDecisionTaskCompleted.

=item * B<DecisionTaskTimedOut>: The decision task timed out.

=item * B<ActivityTaskScheduled>: An activity task was scheduled for
execution.

=item * B<ScheduleActivityTaskFailed>: Failed to process
ScheduleActivityTask decision. This happens when the decision is not
configured properly, for example the activity type specified is not
registered.

=item * B<ActivityTaskStarted>: The scheduled activity task was
dispatched to a worker.

=item * B<ActivityTaskCompleted>: An activity worker successfully
completed an activity task by calling RespondActivityTaskCompleted.

=item * B<ActivityTaskFailed>: An activity worker failed an activity
task by calling RespondActivityTaskFailed.

=item * B<ActivityTaskTimedOut>: The activity task timed out.

=item * B<ActivityTaskCanceled>: The activity task was successfully
canceled.

=item * B<ActivityTaskCancelRequested>: A C<RequestCancelActivityTask>
decision was received by the system.

=item * B<RequestCancelActivityTaskFailed>: Failed to process
RequestCancelActivityTask decision. This happens when the decision is
not configured properly.

=item * B<WorkflowExecutionSignaled>: An external signal was received
for the workflow execution.

=item * B<MarkerRecorded>: A marker was recorded in the workflow
history as the result of a C<RecordMarker> decision.

=item * B<TimerStarted>: A timer was started for the workflow execution
due to a C<StartTimer> decision.

=item * B<StartTimerFailed>: Failed to process StartTimer decision.
This happens when the decision is not configured properly, for example
a timer already exists with the specified timer ID.

=item * B<TimerFired>: A timer, previously started for this workflow
execution, fired.

=item * B<TimerCanceled>: A timer, previously started for this workflow
execution, was successfully canceled.

=item * B<CancelTimerFailed>: Failed to process CancelTimer decision.
This happens when the decision is not configured properly, for example
no timer exists with the specified timer ID.

=item * B<StartChildWorkflowExecutionInitiated>: A request was made to
start a child workflow execution.

=item * B<StartChildWorkflowExecutionFailed>: Failed to process
StartChildWorkflowExecution decision. This happens when the decision is
not configured properly, for example the workflow type specified is not
registered.

=item * B<ChildWorkflowExecutionStarted>: A child workflow execution
was successfully started.

=item * B<ChildWorkflowExecutionCompleted>: A child workflow execution,
started by this workflow execution, completed successfully and was
closed.

=item * B<ChildWorkflowExecutionFailed>: A child workflow execution,
started by this workflow execution, failed to complete successfully and
was closed.

=item * B<ChildWorkflowExecutionTimedOut>: A child workflow execution,
started by this workflow execution, timed out and was closed.

=item * B<ChildWorkflowExecutionCanceled>: A child workflow execution,
started by this workflow execution, was canceled and closed.

=item * B<ChildWorkflowExecutionTerminated>: A child workflow
execution, started by this workflow execution, was terminated.

=item * B<SignalExternalWorkflowExecutionInitiated>: A request to
signal an external workflow was made.

=item * B<ExternalWorkflowExecutionSignaled>: A signal, requested by
this workflow execution, was successfully delivered to the target
external workflow execution.

=item * B<SignalExternalWorkflowExecutionFailed>: The request to signal
an external workflow execution failed.

=item * B<RequestCancelExternalWorkflowExecutionInitiated>: A request
was made to request the cancellation of an external workflow execution.

=item * B<ExternalWorkflowExecutionCancelRequested>: Request to cancel
an external workflow execution was successfully delivered to the target
execution.

=item * B<RequestCancelExternalWorkflowExecutionFailed>: Request to
cancel an external workflow execution failed.

=item * B<LambdaFunctionScheduled>: An AWS Lambda function was
scheduled for execution.

=item * B<LambdaFunctionStarted>: The scheduled function was invoked in
the AWS Lambda service.

=item * B<LambdaFunctionCompleted>: The AWS Lambda function
successfully completed.

=item * B<LambdaFunctionFailed>: The AWS Lambda function execution
failed.

=item * B<LambdaFunctionTimedOut>: The AWS Lambda function execution
timed out.

=item * B<ScheduleLambdaFunctionFailed>: Failed to process
ScheduleLambdaFunction decision. This happens when the workflow
execution does not have the proper IAM role attached to invoke AWS
Lambda functions.

=item * B<StartLambdaFunctionFailed>: Failed to invoke the scheduled
function in the AWS Lambda service. This happens when the AWS Lambda
service is not available in the current region, or received too many
requests.

=back


=head1 ATTRIBUTES


=head2 ActivityTaskCanceledEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskCanceledEventAttributes>

  If the event is of type C<ActivityTaskCanceled> then this member is set
and provides detailed information about the event. It is not set for
other event types.


=head2 ActivityTaskCancelRequestedEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes>

  If the event is of type C<ActivityTaskcancelRequested> then this member
is set and provides detailed information about the event. It is not set
for other event types.


=head2 ActivityTaskCompletedEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskCompletedEventAttributes>

  If the event is of type C<ActivityTaskCompleted> then this member is
set and provides detailed information about the event. It is not set
for other event types.


=head2 ActivityTaskFailedEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskFailedEventAttributes>

  If the event is of type C<ActivityTaskFailed> then this member is set
and provides detailed information about the event. It is not set for
other event types.


=head2 ActivityTaskScheduledEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes>

  If the event is of type C<ActivityTaskScheduled> then this member is
set and provides detailed information about the event. It is not set
for other event types.


=head2 ActivityTaskStartedEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes>

  If the event is of type C<ActivityTaskStarted> then this member is set
and provides detailed information about the event. It is not set for
other event types.


=head2 ActivityTaskTimedOutEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes>

  If the event is of type C<ActivityTaskTimedOut> then this member is set
and provides detailed information about the event. It is not set for
other event types.


=head2 CancelTimerFailedEventAttributes => L<Paws::SimpleWorkflow::CancelTimerFailedEventAttributes>

  If the event is of type C<CancelTimerFailed> then this member is set
and provides detailed information about the event. It is not set for
other event types.


=head2 CancelWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes>

  If the event is of type C<CancelWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 ChildWorkflowExecutionCanceledEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes>

  If the event is of type C<ChildWorkflowExecutionCanceled> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 ChildWorkflowExecutionCompletedEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes>

  If the event is of type C<ChildWorkflowExecutionCompleted> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 ChildWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes>

  If the event is of type C<ChildWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 ChildWorkflowExecutionStartedEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes>

  If the event is of type C<ChildWorkflowExecutionStarted> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 ChildWorkflowExecutionTerminatedEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes>

  If the event is of type C<ChildWorkflowExecutionTerminated> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 ChildWorkflowExecutionTimedOutEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes>

  If the event is of type C<ChildWorkflowExecutionTimedOut> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 CompleteWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes>

  If the event is of type C<CompleteWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 ContinueAsNewWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes>

  If the event is of type C<ContinueAsNewWorkflowExecutionFailed> then
this member is set and provides detailed information about the event.
It is not set for other event types.


=head2 DecisionTaskCompletedEventAttributes => L<Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes>

  If the event is of type C<DecisionTaskCompleted> then this member is
set and provides detailed information about the event. It is not set
for other event types.


=head2 DecisionTaskScheduledEventAttributes => L<Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes>

  If the event is of type C<DecisionTaskScheduled> then this member is
set and provides detailed information about the event. It is not set
for other event types.


=head2 DecisionTaskStartedEventAttributes => L<Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes>

  If the event is of type C<DecisionTaskStarted> then this member is set
and provides detailed information about the event. It is not set for
other event types.


=head2 DecisionTaskTimedOutEventAttributes => L<Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes>

  If the event is of type C<DecisionTaskTimedOut> then this member is set
and provides detailed information about the event. It is not set for
other event types.


=head2 B<REQUIRED> EventId => Int

  The system generated ID of the event. This ID uniquely identifies the
event with in the workflow execution history.


=head2 B<REQUIRED> EventTimestamp => L<Paws::API::TimeStamp>

  The date and time when the event occurred.


=head2 B<REQUIRED> EventType => Str

  The type of the history event.


=head2 ExternalWorkflowExecutionCancelRequestedEventAttributes => L<Paws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes>

  If the event is of type C<ExternalWorkflowExecutionCancelRequested>
then this member is set and provides detailed information about the
event. It is not set for other event types.


=head2 ExternalWorkflowExecutionSignaledEventAttributes => L<Paws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes>

  If the event is of type C<ExternalWorkflowExecutionSignaled> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 FailWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes>

  If the event is of type C<FailWorkflowExecutionFailed> then this member
is set and provides detailed information about the event. It is not set
for other event types.


=head2 LambdaFunctionCompletedEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes>

  


=head2 LambdaFunctionFailedEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes>

  


=head2 LambdaFunctionScheduledEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes>

  


=head2 LambdaFunctionStartedEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes>

  


=head2 LambdaFunctionTimedOutEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes>

  


=head2 MarkerRecordedEventAttributes => L<Paws::SimpleWorkflow::MarkerRecordedEventAttributes>

  If the event is of type C<MarkerRecorded> then this member is set and
provides detailed information about the event. It is not set for other
event types.


=head2 RecordMarkerFailedEventAttributes => L<Paws::SimpleWorkflow::RecordMarkerFailedEventAttributes>

  If the event is of type C<DecisionTaskFailed> then this member is set
and provides detailed information about the event. It is not set for
other event types.


=head2 RequestCancelActivityTaskFailedEventAttributes => L<Paws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes>

  If the event is of type C<RequestCancelActivityTaskFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 RequestCancelExternalWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes>

  If the event is of type C<RequestCancelExternalWorkflowExecutionFailed>
then this member is set and provides detailed information about the
event. It is not set for other event types.


=head2 RequestCancelExternalWorkflowExecutionInitiatedEventAttributes => L<Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes>

  If the event is of type
C<RequestCancelExternalWorkflowExecutionInitiated> then this member is
set and provides detailed information about the event. It is not set
for other event types.


=head2 ScheduleActivityTaskFailedEventAttributes => L<Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes>

  If the event is of type C<ScheduleActivityTaskFailed> then this member
is set and provides detailed information about the event. It is not set
for other event types.


=head2 ScheduleLambdaFunctionFailedEventAttributes => L<Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes>

  


=head2 SignalExternalWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes>

  If the event is of type C<SignalExternalWorkflowExecutionFailed> then
this member is set and provides detailed information about the event.
It is not set for other event types.


=head2 SignalExternalWorkflowExecutionInitiatedEventAttributes => L<Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes>

  If the event is of type C<SignalExternalWorkflowExecutionInitiated>
then this member is set and provides detailed information about the
event. It is not set for other event types.


=head2 StartChildWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes>

  If the event is of type C<StartChildWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 StartChildWorkflowExecutionInitiatedEventAttributes => L<Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes>

  If the event is of type C<StartChildWorkflowExecutionInitiated> then
this member is set and provides detailed information about the event.
It is not set for other event types.


=head2 StartLambdaFunctionFailedEventAttributes => L<Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes>

  


=head2 StartTimerFailedEventAttributes => L<Paws::SimpleWorkflow::StartTimerFailedEventAttributes>

  If the event is of type C<StartTimerFailed> then this member is set and
provides detailed information about the event. It is not set for other
event types.


=head2 TimerCanceledEventAttributes => L<Paws::SimpleWorkflow::TimerCanceledEventAttributes>

  If the event is of type C<TimerCanceled> then this member is set and
provides detailed information about the event. It is not set for other
event types.


=head2 TimerFiredEventAttributes => L<Paws::SimpleWorkflow::TimerFiredEventAttributes>

  If the event is of type C<TimerFired> then this member is set and
provides detailed information about the event. It is not set for other
event types.


=head2 TimerStartedEventAttributes => L<Paws::SimpleWorkflow::TimerStartedEventAttributes>

  If the event is of type C<TimerStarted> then this member is set and
provides detailed information about the event. It is not set for other
event types.


=head2 WorkflowExecutionCanceledEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes>

  If the event is of type C<WorkflowExecutionCanceled> then this member
is set and provides detailed information about the event. It is not set
for other event types.


=head2 WorkflowExecutionCancelRequestedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes>

  If the event is of type C<WorkflowExecutionCancelRequested> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 WorkflowExecutionCompletedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes>

  If the event is of type C<WorkflowExecutionCompleted> then this member
is set and provides detailed information about the event. It is not set
for other event types.


=head2 WorkflowExecutionContinuedAsNewEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes>

  If the event is of type C<WorkflowExecutionContinuedAsNew> then this
member is set and provides detailed information about the event. It is
not set for other event types.


=head2 WorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes>

  If the event is of type C<WorkflowExecutionFailed> then this member is
set and provides detailed information about the event. It is not set
for other event types.


=head2 WorkflowExecutionSignaledEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes>

  If the event is of type C<WorkflowExecutionSignaled> then this member
is set and provides detailed information about the event. It is not set
for other event types.


=head2 WorkflowExecutionStartedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes>

  If the event is of type C<WorkflowExecutionStarted> then this member is
set and provides detailed information about the event. It is not set
for other event types.


=head2 WorkflowExecutionTerminatedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes>

  If the event is of type C<WorkflowExecutionTerminated> then this member
is set and provides detailed information about the event. It is not set
for other event types.


=head2 WorkflowExecutionTimedOutEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes>

  If the event is of type C<WorkflowExecutionTimedOut> then this member
is set and provides detailed information about the event. It is not set
for other event types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

