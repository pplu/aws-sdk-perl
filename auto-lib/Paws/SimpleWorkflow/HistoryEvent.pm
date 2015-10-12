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

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 activityTaskCanceledEventAttributes => Paws::SimpleWorkflow::ActivityTaskCanceledEventAttributes

  If the event is of type C<ActivityTaskCanceled> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 activityTaskCancelRequestedEventAttributes => Paws::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes

  If the event is of type C<ActivityTaskcancelRequested> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 activityTaskCompletedEventAttributes => Paws::SimpleWorkflow::ActivityTaskCompletedEventAttributes

  If the event is of type C<ActivityTaskCompleted> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 activityTaskFailedEventAttributes => Paws::SimpleWorkflow::ActivityTaskFailedEventAttributes

  If the event is of type C<ActivityTaskFailed> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 activityTaskScheduledEventAttributes => Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes

  If the event is of type C<ActivityTaskScheduled> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 activityTaskStartedEventAttributes => Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes

  If the event is of type C<ActivityTaskStarted> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 activityTaskTimedOutEventAttributes => Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes

  If the event is of type C<ActivityTaskTimedOut> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 cancelTimerFailedEventAttributes => Paws::SimpleWorkflow::CancelTimerFailedEventAttributes

  If the event is of type C<CancelTimerFailed> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 cancelWorkflowExecutionFailedEventAttributes => Paws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes

  If the event is of type C<CancelWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionCanceledEventAttributes => Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes

  If the event is of type C<ChildWorkflowExecutionCanceled> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionCompletedEventAttributes => Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes

  If the event is of type C<ChildWorkflowExecutionCompleted> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionFailedEventAttributes => Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes

  If the event is of type C<ChildWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionStartedEventAttributes => Paws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes

  If the event is of type C<ChildWorkflowExecutionStarted> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionTerminatedEventAttributes => Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes

  If the event is of type C<ChildWorkflowExecutionTerminated> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 childWorkflowExecutionTimedOutEventAttributes => Paws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes

  If the event is of type C<ChildWorkflowExecutionTimedOut> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 completeWorkflowExecutionFailedEventAttributes => Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes

  If the event is of type C<CompleteWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 continueAsNewWorkflowExecutionFailedEventAttributes => Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes

  If the event is of type C<ContinueAsNewWorkflowExecutionFailed> then
this member is set and provides detailed information about the event.
It is not set for other event types.

=head2 decisionTaskCompletedEventAttributes => Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes

  If the event is of type C<DecisionTaskCompleted> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 decisionTaskScheduledEventAttributes => Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes

  If the event is of type C<DecisionTaskScheduled> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 decisionTaskStartedEventAttributes => Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes

  If the event is of type C<DecisionTaskStarted> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 decisionTaskTimedOutEventAttributes => Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes

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

=head2 externalWorkflowExecutionCancelRequestedEventAttributes => Paws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes

  If the event is of type C<ExternalWorkflowExecutionCancelRequested>
then this member is set and provides detailed information about the
event. It is not set for other event types.

=head2 externalWorkflowExecutionSignaledEventAttributes => Paws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes

  If the event is of type C<ExternalWorkflowExecutionSignaled> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 failWorkflowExecutionFailedEventAttributes => Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes

  If the event is of type C<FailWorkflowExecutionFailed> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 lambdaFunctionCompletedEventAttributes => Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes

  

=head2 lambdaFunctionFailedEventAttributes => Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes

  

=head2 lambdaFunctionScheduledEventAttributes => Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes

  

=head2 lambdaFunctionStartedEventAttributes => Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes

  

=head2 lambdaFunctionTimedOutEventAttributes => Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes

  

=head2 markerRecordedEventAttributes => Paws::SimpleWorkflow::MarkerRecordedEventAttributes

  If the event is of type C<MarkerRecorded> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 recordMarkerFailedEventAttributes => Paws::SimpleWorkflow::RecordMarkerFailedEventAttributes

  If the event is of type C<DecisionTaskFailed> then this member is set
and provides detailed information about the event. It is not set for
other event types.

=head2 requestCancelActivityTaskFailedEventAttributes => Paws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes

  If the event is of type C<RequestCancelActivityTaskFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 requestCancelExternalWorkflowExecutionFailedEventAttributes => Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes

  If the event is of type C<RequestCancelExternalWorkflowExecutionFailed>
then this member is set and provides detailed information about the
event. It is not set for other event types.

=head2 requestCancelExternalWorkflowExecutionInitiatedEventAttributes => Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes

  If the event is of type
C<RequestCancelExternalWorkflowExecutionInitiated> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 scheduleActivityTaskFailedEventAttributes => Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes

  If the event is of type C<ScheduleActivityTaskFailed> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 scheduleLambdaFunctionFailedEventAttributes => Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes

  

=head2 signalExternalWorkflowExecutionFailedEventAttributes => Paws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes

  If the event is of type C<SignalExternalWorkflowExecutionFailed> then
this member is set and provides detailed information about the event.
It is not set for other event types.

=head2 signalExternalWorkflowExecutionInitiatedEventAttributes => Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes

  If the event is of type C<SignalExternalWorkflowExecutionInitiated>
then this member is set and provides detailed information about the
event. It is not set for other event types.

=head2 startChildWorkflowExecutionFailedEventAttributes => Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes

  If the event is of type C<StartChildWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 startChildWorkflowExecutionInitiatedEventAttributes => Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes

  If the event is of type C<StartChildWorkflowExecutionInitiated> then
this member is set and provides detailed information about the event.
It is not set for other event types.

=head2 startLambdaFunctionFailedEventAttributes => Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes

  

=head2 startTimerFailedEventAttributes => Paws::SimpleWorkflow::StartTimerFailedEventAttributes

  If the event is of type C<StartTimerFailed> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 timerCanceledEventAttributes => Paws::SimpleWorkflow::TimerCanceledEventAttributes

  If the event is of type C<TimerCanceled> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 timerFiredEventAttributes => Paws::SimpleWorkflow::TimerFiredEventAttributes

  If the event is of type C<TimerFired> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 timerStartedEventAttributes => Paws::SimpleWorkflow::TimerStartedEventAttributes

  If the event is of type C<TimerStarted> then this member is set and
provides detailed information about the event. It is not set for other
event types.

=head2 workflowExecutionCanceledEventAttributes => Paws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes

  If the event is of type C<WorkflowExecutionCanceled> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionCancelRequestedEventAttributes => Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes

  If the event is of type C<WorkflowExecutionCancelRequested> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 workflowExecutionCompletedEventAttributes => Paws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes

  If the event is of type C<WorkflowExecutionCompleted> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionContinuedAsNewEventAttributes => Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes

  If the event is of type C<WorkflowExecutionContinuedAsNew> then this
member is set and provides detailed information about the event. It is
not set for other event types.

=head2 workflowExecutionFailedEventAttributes => Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes

  If the event is of type C<WorkflowExecutionFailed> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionSignaledEventAttributes => Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes

  If the event is of type C<WorkflowExecutionSignaled> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionStartedEventAttributes => Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes

  If the event is of type C<WorkflowExecutionStarted> then this member is
set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionTerminatedEventAttributes => Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes

  If the event is of type C<WorkflowExecutionTerminated> then this member
is set and provides detailed information about the event. It is not set
for other event types.

=head2 workflowExecutionTimedOutEventAttributes => Paws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes

  If the event is of type C<WorkflowExecutionTimedOut> then this member
is set and provides detailed information about the event. It is not set
for other event types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

