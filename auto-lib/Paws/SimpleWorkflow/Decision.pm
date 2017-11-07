package Paws::SimpleWorkflow::Decision;
  use Moose;
  has CancelTimerDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CancelTimerDecisionAttributes', request_name => 'cancelTimerDecisionAttributes', traits => ['NameInRequest']);
  has CancelWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes', request_name => 'cancelWorkflowExecutionDecisionAttributes', traits => ['NameInRequest']);
  has CompleteWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes', request_name => 'completeWorkflowExecutionDecisionAttributes', traits => ['NameInRequest']);
  has ContinueAsNewWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes', request_name => 'continueAsNewWorkflowExecutionDecisionAttributes', traits => ['NameInRequest']);
  has DecisionType => (is => 'ro', isa => 'Str', request_name => 'decisionType', traits => ['NameInRequest'], required => 1);
  has FailWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes', request_name => 'failWorkflowExecutionDecisionAttributes', traits => ['NameInRequest']);
  has RecordMarkerDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RecordMarkerDecisionAttributes', request_name => 'recordMarkerDecisionAttributes', traits => ['NameInRequest']);
  has RequestCancelActivityTaskDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes', request_name => 'requestCancelActivityTaskDecisionAttributes', traits => ['NameInRequest']);
  has RequestCancelExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes', request_name => 'requestCancelExternalWorkflowExecutionDecisionAttributes', traits => ['NameInRequest']);
  has ScheduleActivityTaskDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes', request_name => 'scheduleActivityTaskDecisionAttributes', traits => ['NameInRequest']);
  has ScheduleLambdaFunctionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes', request_name => 'scheduleLambdaFunctionDecisionAttributes', traits => ['NameInRequest']);
  has SignalExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes', request_name => 'signalExternalWorkflowExecutionDecisionAttributes', traits => ['NameInRequest']);
  has StartChildWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes', request_name => 'startChildWorkflowExecutionDecisionAttributes', traits => ['NameInRequest']);
  has StartTimerDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartTimerDecisionAttributes', request_name => 'startTimerDecisionAttributes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::Decision

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::Decision object:

  $service_obj->Method(Att1 => { CancelTimerDecisionAttributes => $value, ..., StartTimerDecisionAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::Decision object:

  $result = $service_obj->Method(...);
  $result->Att1->CancelTimerDecisionAttributes

=head1 DESCRIPTION

Specifies a decision made by the decider. A decision can be one of
these types:

=over

=item *

C<CancelTimer> E<ndash> Cancels a previously started timer and records
a C<TimerCanceled> event in the history.

=item *

C<CancelWorkflowExecution> E<ndash> Closes the workflow execution and
records a C<WorkflowExecutionCanceled> event in the history.

=item *

C<CompleteWorkflowExecution> E<ndash> Closes the workflow execution and
records a C<WorkflowExecutionCompleted> event in the history .

=item *

C<ContinueAsNewWorkflowExecution> E<ndash> Closes the workflow
execution and starts a new workflow execution of the same type using
the same workflow ID and a unique run Id. A
C<WorkflowExecutionContinuedAsNew> event is recorded in the history.

=item *

C<FailWorkflowExecution> E<ndash> Closes the workflow execution and
records a C<WorkflowExecutionFailed> event in the history.

=item *

C<RecordMarker> E<ndash> Records a C<MarkerRecorded> event in the
history. Markers can be used for adding custom information in the
history for instance to let deciders know that they don't need to look
at the history beyond the marker event.

=item *

C<RequestCancelActivityTask> E<ndash> Attempts to cancel a previously
scheduled activity task. If the activity task was scheduled but has not
been assigned to a worker, then it is canceled. If the activity task
was already assigned to a worker, then the worker is informed that
cancellation has been requested in the response to
RecordActivityTaskHeartbeat.

=item *

C<RequestCancelExternalWorkflowExecution> E<ndash> Requests that a
request be made to cancel the specified external workflow execution and
records a C<RequestCancelExternalWorkflowExecutionInitiated> event in
the history.

=item *

C<ScheduleActivityTask> E<ndash> Schedules an activity task.

=item *

C<SignalExternalWorkflowExecution> E<ndash> Requests a signal to be
delivered to the specified external workflow execution and records a
C<SignalExternalWorkflowExecutionInitiated> event in the history.

=item *

C<StartChildWorkflowExecution> E<ndash> Requests that a child workflow
execution be started and records a
C<StartChildWorkflowExecutionInitiated> event in the history. The child
workflow execution is a separate workflow execution with its own
history.

=item *

C<StartTimer> E<ndash> Starts a timer for this workflow execution and
records a C<TimerStarted> event in the history. This timer fires after
the specified delay and record a C<TimerFired> event.

=back

B<Access Control>

If you grant permission to use C<RespondDecisionTaskCompleted>, you can
use IAM policies to express permissions for the list of decisions
returned by this action as if they were members of the API. Treating
decisions as a pseudo API maintains a uniform conceptual model and
helps keep policies readable. For details and example IAM policies, see
Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.

B<Decision Failure>

Decisions can fail for several reasons

=over

=item *

The ordering of decisions should follow a logical flow. Some decisions
might not make sense in the current context of the workflow execution
and therefore fails.

=item *

A limit on your account was reached.

=item *

The decision lacks sufficient permissions.

=back

One of the following events might be added to the history to indicate
an error. The event attribute's C<cause> parameter indicates the cause.
If C<cause> is set to C<OPERATION_NOT_PERMITTED>, the decision failed
because it lacked sufficient permissions. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.

=over

=item *

C<ScheduleActivityTaskFailed> E<ndash> A C<ScheduleActivityTask>
decision failed. This could happen if the activity type specified in
the decision isn't registered, is in a deprecated state, or the
decision isn't properly configured.

=item *

C<RequestCancelActivityTaskFailed> E<ndash> A
C<RequestCancelActivityTask> decision failed. This could happen if
there is no open activity task with the specified activityId.

=item *

C<StartTimerFailed> E<ndash> A C<StartTimer> decision failed. This
could happen if there is another open timer with the same timerId.

=item *

C<CancelTimerFailed> E<ndash> A C<CancelTimer> decision failed. This
could happen if there is no open timer with the specified timerId.

=item *

C<StartChildWorkflowExecutionFailed> E<ndash> A
C<StartChildWorkflowExecution> decision failed. This could happen if
the workflow type specified isn't registered, is deprecated, or the
decision isn't properly configured.

=item *

C<SignalExternalWorkflowExecutionFailed> E<ndash> A
C<SignalExternalWorkflowExecution> decision failed. This could happen
if the C<workflowID> specified in the decision was incorrect.

=item *

C<RequestCancelExternalWorkflowExecutionFailed> E<ndash> A
C<RequestCancelExternalWorkflowExecution> decision failed. This could
happen if the C<workflowID> specified in the decision was incorrect.

=item *

C<CancelWorkflowExecutionFailed> E<ndash> A C<CancelWorkflowExecution>
decision failed. This could happen if there is an unhandled decision
task pending in the workflow execution.

=item *

C<CompleteWorkflowExecutionFailed> E<ndash> A
C<CompleteWorkflowExecution> decision failed. This could happen if
there is an unhandled decision task pending in the workflow execution.

=item *

C<ContinueAsNewWorkflowExecutionFailed> E<ndash> A
C<ContinueAsNewWorkflowExecution> decision failed. This could happen if
there is an unhandled decision task pending in the workflow execution
or the ContinueAsNewWorkflowExecution decision was not configured
correctly.

=item *

C<FailWorkflowExecutionFailed> E<ndash> A C<FailWorkflowExecution>
decision failed. This could happen if there is an unhandled decision
task pending in the workflow execution.

=back

The preceding error events might occur due to an error in the decider
logic, which might put the workflow execution in an unstable state The
cause field in the event structure for the error event indicates the
cause of the error.

A workflow execution may be closed by the decider by returning one of
the following decisions when completing a decision task:
C<CompleteWorkflowExecution>, C<FailWorkflowExecution>,
C<CancelWorkflowExecution> and C<ContinueAsNewWorkflowExecution>. An
C<UnhandledDecision> fault is returned if a workflow closing decision
is specified and a signal or activity event had been added to the
history while the decision task was being performed by the decider.
Unlike the above situations which are logic issues, this fault is
always possible because of race conditions in a distributed system. The
right action here is to call RespondDecisionTaskCompleted without any
decisions. This would result in another decision task with these new
events included in the history. The decider should handle the new
events and may decide to close the workflow execution.

B<How to Code a Decision>

You code a decision by first setting the decision type field to one of
the above decision values, and then set the corresponding attributes
field shown below:

=over

=item *

C<ScheduleActivityTaskDecisionAttributes>

=item *

C<RequestCancelActivityTaskDecisionAttributes>

=item *

C<CompleteWorkflowExecutionDecisionAttributes>

=item *

C<FailWorkflowExecutionDecisionAttributes>

=item *

C<CancelWorkflowExecutionDecisionAttributes>

=item *

C<ContinueAsNewWorkflowExecutionDecisionAttributes>

=item *

C<RecordMarkerDecisionAttributes>

=item *

C<StartTimerDecisionAttributes>

=item *

C<CancelTimerDecisionAttributes>

=item *

C<SignalExternalWorkflowExecutionDecisionAttributes>

=item *

C<RequestCancelExternalWorkflowExecutionDecisionAttributes>

=item *

C<StartChildWorkflowExecutionDecisionAttributes>

=back


=head1 ATTRIBUTES


=head2 CancelTimerDecisionAttributes => L<Paws::SimpleWorkflow::CancelTimerDecisionAttributes>

  Provides the details of the C<CancelTimer> decision. It isn't set for
other decision types.


=head2 CancelWorkflowExecutionDecisionAttributes => L<Paws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes>

  Provides the details of the C<CancelWorkflowExecution> decision. It
isn't set for other decision types.


=head2 CompleteWorkflowExecutionDecisionAttributes => L<Paws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes>

  Provides the details of the C<CompleteWorkflowExecution> decision. It
isn't set for other decision types.


=head2 ContinueAsNewWorkflowExecutionDecisionAttributes => L<Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes>

  Provides the details of the C<ContinueAsNewWorkflowExecution> decision.
It isn't set for other decision types.


=head2 B<REQUIRED> DecisionType => Str

  Specifies the type of the decision.


=head2 FailWorkflowExecutionDecisionAttributes => L<Paws::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes>

  Provides the details of the C<FailWorkflowExecution> decision. It isn't
set for other decision types.


=head2 RecordMarkerDecisionAttributes => L<Paws::SimpleWorkflow::RecordMarkerDecisionAttributes>

  Provides the details of the C<RecordMarker> decision. It isn't set for
other decision types.


=head2 RequestCancelActivityTaskDecisionAttributes => L<Paws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes>

  Provides the details of the C<RequestCancelActivityTask> decision. It
isn't set for other decision types.


=head2 RequestCancelExternalWorkflowExecutionDecisionAttributes => L<Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes>

  Provides the details of the C<RequestCancelExternalWorkflowExecution>
decision. It isn't set for other decision types.


=head2 ScheduleActivityTaskDecisionAttributes => L<Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes>

  Provides the details of the C<ScheduleActivityTask> decision. It isn't
set for other decision types.


=head2 ScheduleLambdaFunctionDecisionAttributes => L<Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes>

  Provides the details of the C<ScheduleLambdaFunction> decision. It
isn't set for other decision types.


=head2 SignalExternalWorkflowExecutionDecisionAttributes => L<Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes>

  Provides the details of the C<SignalExternalWorkflowExecution>
decision. It isn't set for other decision types.


=head2 StartChildWorkflowExecutionDecisionAttributes => L<Paws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes>

  Provides the details of the C<StartChildWorkflowExecution> decision. It
isn't set for other decision types.


=head2 StartTimerDecisionAttributes => L<Paws::SimpleWorkflow::StartTimerDecisionAttributes>

  Provides the details of the C<StartTimer> decision. It isn't set for
other decision types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

