package Paws::SimpleWorkflow::Decision;
  use Moose;
  has cancelTimerDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CancelTimerDecisionAttributes');
  has cancelWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes');
  has completeWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes');
  has continueAsNewWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes');
  has decisionType => (is => 'ro', isa => 'Str', required => 1);
  has failWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes');
  has recordMarkerDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RecordMarkerDecisionAttributes');
  has requestCancelActivityTaskDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes');
  has requestCancelExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes');
  has scheduleActivityTaskDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes');
  has scheduleLambdaFunctionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes');
  has signalExternalWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes');
  has startChildWorkflowExecutionDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes');
  has startTimerDecisionAttributes => (is => 'ro', isa => 'Paws::SimpleWorkflow::StartTimerDecisionAttributes');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::Decision

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::Decision object:

  $service_obj->Method(Att1 => { cancelTimerDecisionAttributes => $value, ..., startTimerDecisionAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::Decision object:

  $result = $service_obj->Method(...);
  $result->Att1->cancelTimerDecisionAttributes

=head1 ATTRIBUTES

=head2 cancelTimerDecisionAttributes => Paws::SimpleWorkflow::CancelTimerDecisionAttributes

  Provides details of the C<CancelTimer> decision. It is not set for
other decision types.

=head2 cancelWorkflowExecutionDecisionAttributes => Paws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes

  Provides details of the C<CancelWorkflowExecution> decision. It is not
set for other decision types.

=head2 completeWorkflowExecutionDecisionAttributes => Paws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes

  Provides details of the C<CompleteWorkflowExecution> decision. It is
not set for other decision types.

=head2 continueAsNewWorkflowExecutionDecisionAttributes => Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes

  Provides details of the C<ContinueAsNewWorkflowExecution> decision. It
is not set for other decision types.

=head2 B<REQUIRED> decisionType => Str

  Specifies the type of the decision.

=head2 failWorkflowExecutionDecisionAttributes => Paws::SimpleWorkflow::FailWorkflowExecutionDecisionAttributes

  Provides details of the C<FailWorkflowExecution> decision. It is not
set for other decision types.

=head2 recordMarkerDecisionAttributes => Paws::SimpleWorkflow::RecordMarkerDecisionAttributes

  Provides details of the C<RecordMarker> decision. It is not set for
other decision types.

=head2 requestCancelActivityTaskDecisionAttributes => Paws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes

  Provides details of the C<RequestCancelActivityTask> decision. It is
not set for other decision types.

=head2 requestCancelExternalWorkflowExecutionDecisionAttributes => Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes

  Provides details of the C<RequestCancelExternalWorkflowExecution>
decision. It is not set for other decision types.

=head2 scheduleActivityTaskDecisionAttributes => Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes

  Provides details of the C<ScheduleActivityTask> decision. It is not set
for other decision types.

=head2 scheduleLambdaFunctionDecisionAttributes => Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes

  

=head2 signalExternalWorkflowExecutionDecisionAttributes => Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes

  Provides details of the C<SignalExternalWorkflowExecution> decision. It
is not set for other decision types.

=head2 startChildWorkflowExecutionDecisionAttributes => Paws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes

  Provides details of the C<StartChildWorkflowExecution> decision. It is
not set for other decision types.

=head2 startTimerDecisionAttributes => Paws::SimpleWorkflow::StartTimerDecisionAttributes

  Provides details of the C<StartTimer> decision. It is not set for other
decision types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

