package Paws::SimpleWorkflow::HistoryEvent;
  use Moose;
  has activityTaskCanceledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskCanceledEventAttributes');
  has activityTaskCancelRequestedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes');
  has activityTaskCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskCompletedEventAttributes');
  has activityTaskFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskFailedEventAttributes');
  has activityTaskScheduledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes');
  has activityTaskStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes');
  has activityTaskTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes');
  has cancelTimerFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CancelTimerFailedEventAttributes');
  has cancelWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes');
  has childWorkflowExecutionCanceledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes');
  has childWorkflowExecutionCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes');
  has childWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes');
  has childWorkflowExecutionStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes');
  has childWorkflowExecutionTerminatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes');
  has childWorkflowExecutionTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes');
  has completeWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes');
  has continueAsNewWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes');
  has decisionTaskCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes');
  has decisionTaskScheduledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes');
  has decisionTaskStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes');
  has decisionTaskTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes');
  has eventId => (is => 'ro', isa => 'Int', required => 1);
  has eventTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has eventType => (is => 'ro', isa => 'Str', required => 1);
  has externalWorkflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes');
  has externalWorkflowExecutionSignaledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes');
  has failWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes');
  has lambdaFunctionCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes');
  has lambdaFunctionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes');
  has lambdaFunctionScheduledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes');
  has lambdaFunctionStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes');
  has lambdaFunctionTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes');
  has markerRecordedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::MarkerRecordedEventAttributes');
  has recordMarkerFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RecordMarkerFailedEventAttributes');
  has requestCancelActivityTaskFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes');
  has requestCancelExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes');
  has requestCancelExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes');
  has scheduleActivityTaskFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes');
  has scheduleLambdaFunctionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes');
  has signalExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes');
  has signalExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes');
  has startChildWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes');
  has startChildWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes');
  has startLambdaFunctionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes');
  has startTimerFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartTimerFailedEventAttributes');
  has timerCanceledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::TimerCanceledEventAttributes');
  has timerFiredEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::TimerFiredEventAttributes');
  has timerStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::TimerStartedEventAttributes');
  has workflowExecutionCanceledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes');
  has workflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes');
  has workflowExecutionCompletedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes');
  has workflowExecutionContinuedAsNewEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes');
  has workflowExecutionFailedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes');
  has workflowExecutionSignaledEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes');
  has workflowExecutionStartedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes');
  has workflowExecutionTerminatedEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes');
  has workflowExecutionTimedOutEventAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes');
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

  $service_obj->Method(Att1 => { activityTaskCanceledEventAttributes => $value, ..., workflowExecutionTimedOutEventAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::HistoryEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->activityTaskCanceledEventAttributes

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

=head2 activityTaskCanceledEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskCanceledEventAttributes>

  If the event is of type C<ActivityTaskCanceled> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 activityTaskCancelRequestedEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes>

  If the event is of type C<ActivityTaskcancelRequested> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 activityTaskCompletedEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskCompletedEventAttributes>

  If the event is of type C<ActivityTaskCompleted> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 activityTaskFailedEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskFailedEventAttributes>

  If the event is of type C<ActivityTaskFailed> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 activityTaskScheduledEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes>

  If the event is of type C<ActivityTaskScheduled> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 activityTaskStartedEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes>

  If the event is of type C<ActivityTaskStarted> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 activityTaskTimedOutEventAttributes => L<Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes>

  If the event is of type C<ActivityTaskTimedOut> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 cancelTimerFailedEventAttributes => L<Paws::SimpleWorkflow::CancelTimerFailedEventAttributes>

  If the event is of type C<CancelTimerFailed> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 cancelWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes>

  If the event is of type C<CancelWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionCanceledEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes>

  If the event is of type C<ChildWorkflowExecutionCanceled> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionCompletedEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes>

  If the event is of type C<ChildWorkflowExecutionCompleted> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes>

  If the event is of type C<ChildWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionStartedEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes>

  If the event is of type C<ChildWorkflowExecutionStarted> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionTerminatedEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes>

  If the event is of type C<ChildWorkflowExecutionTerminated> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionTimedOutEventAttributes => L<Paws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes>

  If the event is of type C<ChildWorkflowExecutionTimedOut> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 completeWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes>

  If the event is of type C<CompleteWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 continueAsNewWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes>

  If the event is of type C<ContinueAsNewWorkflowExecutionFailed> then
this member is set and provides detailed information about the event.
It is not set for other event types.

=head2 decisionTaskCompletedEventAttributes => L<Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes>

  If the event is of type C<DecisionTaskCompleted> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 decisionTaskScheduledEventAttributes => L<Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes>

  If the event is of type C<DecisionTaskScheduled> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 decisionTaskStartedEventAttributes => L<Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes>

  If the event is of type C<DecisionTaskStarted> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 decisionTaskTimedOutEventAttributes => L<Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes>

  If the event is of type C<DecisionTaskTimedOut> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 B<REQUIRED> eventId => Int

  The system generated ID of the event. This ID uniquely identifies the
event with in the workflow execution history.

=head2 B<REQUIRED> eventTimestamp => Str

  The date and time when the event occurred.

=head2 B<REQUIRED> eventType => Str

  The type of the history event.

=head2 externalWorkflowExecutionCancelRequestedEventAttributes => L<Paws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes>

  If the event is of type C<ExternalWorkflowExecutionCancelRequested>
then this member is set and provides detailed information about the
event. It is not set for other event types.

=head2 externalWorkflowExecutionSignaledEventAttributes => L<Paws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes>

  If the event is of type C<ExternalWorkflowExecutionSignaled> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 failWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes>

  If the event is of type C<FailWorkflowExecutionFailed> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 lambdaFunctionCompletedEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes>

  

=head2 lambdaFunctionFailedEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes>

  

=head2 lambdaFunctionScheduledEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes>

  

=head2 lambdaFunctionStartedEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes>

  

=head2 lambdaFunctionTimedOutEventAttributes => L<Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes>

  

=head2 markerRecordedEventAttributes => L<Paws::SimpleWorkflow::MarkerRecordedEventAttributes>

  If the event is of type C<MarkerRecorded> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 recordMarkerFailedEventAttributes => L<Paws::SimpleWorkflow::RecordMarkerFailedEventAttributes>

  If the event is of type C<DecisionTaskFailed> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 requestCancelActivityTaskFailedEventAttributes => L<Paws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes>

  If the event is of type C<RequestCancelActivityTaskFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 requestCancelExternalWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes>

  If the event is of type C<RequestCancelExternalWorkflowExecutionFailed>
then this member is set and provides detailed information about the
event. It is not set for other event types.

=head2 requestCancelExternalWorkflowExecutionInitiatedEventAttributes => L<Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes>

  If the event is of type
C<RequestCancelExternalWorkflowExecutionInitiated> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 scheduleActivityTaskFailedEventAttributes => L<Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes>

  If the event is of type C<ScheduleActivityTaskFailed> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 scheduleLambdaFunctionFailedEventAttributes => L<Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes>

  

=head2 signalExternalWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes>

  If the event is of type C<SignalExternalWorkflowExecutionFailed> then
this member is set and provides detailed information about the event.
It is not set for other event types.

=head2 signalExternalWorkflowExecutionInitiatedEventAttributes => L<Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes>

  If the event is of type C<SignalExternalWorkflowExecutionInitiated>
then this member is set and provides detailed information about the
event. It is not set for other event types.

=head2 startChildWorkflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes>

  If the event is of type C<StartChildWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 startChildWorkflowExecutionInitiatedEventAttributes => L<Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes>

  If the event is of type C<StartChildWorkflowExecutionInitiated> then
this member is set and provides detailed information about the event.
It is not set for other event types.

=head2 startLambdaFunctionFailedEventAttributes => L<Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes>

  

=head2 startTimerFailedEventAttributes => L<Paws::SimpleWorkflow::StartTimerFailedEventAttributes>

  If the event is of type C<StartTimerFailed> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 timerCanceledEventAttributes => L<Paws::SimpleWorkflow::TimerCanceledEventAttributes>

  If the event is of type C<TimerCanceled> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 timerFiredEventAttributes => L<Paws::SimpleWorkflow::TimerFiredEventAttributes>

  If the event is of type C<TimerFired> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 timerStartedEventAttributes => L<Paws::SimpleWorkflow::TimerStartedEventAttributes>

  If the event is of type C<TimerStarted> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 workflowExecutionCanceledEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes>

  If the event is of type C<WorkflowExecutionCanceled> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionCancelRequestedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes>

  If the event is of type C<WorkflowExecutionCancelRequested> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 workflowExecutionCompletedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes>

  If the event is of type C<WorkflowExecutionCompleted> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionContinuedAsNewEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes>

  If the event is of type C<WorkflowExecutionContinuedAsNew> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 workflowExecutionFailedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes>

  If the event is of type C<WorkflowExecutionFailed> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionSignaledEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes>

  If the event is of type C<WorkflowExecutionSignaled> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionStartedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes>

  If the event is of type C<WorkflowExecutionStarted> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionTerminatedEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes>

  If the event is of type C<WorkflowExecutionTerminated> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionTimedOutEventAttributes => L<Paws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes>

  If the event is of type C<WorkflowExecutionTimedOut> then this member
is set and provides detailed information about the event. It is not set
for other event types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

