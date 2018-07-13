package Paws::SSM::StepExecution;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has ExecutionEndTime => (is => 'ro', isa => 'Str');
  has ExecutionStartTime => (is => 'ro', isa => 'Str');
  has FailureDetails => (is => 'ro', isa => 'Paws::SSM::FailureDetails');
  has FailureMessage => (is => 'ro', isa => 'Str');
  has Inputs => (is => 'ro', isa => 'Paws::SSM::NormalStringMap');
  has IsCritical => (is => 'ro', isa => 'Bool');
  has IsEnd => (is => 'ro', isa => 'Bool');
  has MaxAttempts => (is => 'ro', isa => 'Int');
  has NextStep => (is => 'ro', isa => 'Str');
  has OnFailure => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has OverriddenParameters => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has Response => (is => 'ro', isa => 'Str');
  has ResponseCode => (is => 'ro', isa => 'Str');
  has StepExecutionId => (is => 'ro', isa => 'Str');
  has StepName => (is => 'ro', isa => 'Str');
  has StepStatus => (is => 'ro', isa => 'Str');
  has TimeoutSeconds => (is => 'ro', isa => 'Int');
  has ValidNextSteps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StepExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::StepExecution object:

  $service_obj->Method(Att1 => { Action => $value, ..., ValidNextSteps => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::StepExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Detailed information about an the execution state of an Automation
step.

=head1 ATTRIBUTES


=head2 Action => Str

  The action this step performs. The action determines the behavior of
the step.


=head2 ExecutionEndTime => Str

  If a step has finished execution, this contains the time the execution
ended. If the step has not yet concluded, this field is not populated.


=head2 ExecutionStartTime => Str

  If a step has begun execution, this contains the time the step started.
If the step is in Pending status, this field is not populated.


=head2 FailureDetails => L<Paws::SSM::FailureDetails>

  Information about the Automation failure.


=head2 FailureMessage => Str

  If a step failed, this message explains why the execution failed.


=head2 Inputs => L<Paws::SSM::NormalStringMap>

  Fully-resolved values passed into the step before execution.


=head2 IsCritical => Bool

  Enable this option to designate a step as critical for the successful
completion of the Automation. If a step with this designation fails,
then Automation reports the final status of the Automation as Failed.


=head2 IsEnd => Bool

  Enable this option to stop an Automation execution at the end of a
specific step. The Automation execution stops if the step execution
failed or succeeded.


=head2 MaxAttempts => Int

  The maximum number of tries to run the action of the step. The default
value is 1.


=head2 NextStep => Str

  Specifies which step in an Automation to process next after
successfully completing a step.


=head2 OnFailure => Str

  The action to take if the step fails. The default value is Abort.


=head2 Outputs => L<Paws::SSM::AutomationParameterMap>

  Returned values from the execution of the step.


=head2 OverriddenParameters => L<Paws::SSM::AutomationParameterMap>

  A user-specified list of parameters to override when executing a step.


=head2 Response => Str

  A message associated with the response code for an execution.


=head2 ResponseCode => Str

  The response code returned by the execution of the step.


=head2 StepExecutionId => Str

  The unique ID of a step execution.


=head2 StepName => Str

  The name of this execution step.


=head2 StepStatus => Str

  The execution status for this step. Valid values include: Pending,
InProgress, Success, Cancelled, Failed, and TimedOut.


=head2 TimeoutSeconds => Int

  The timeout seconds of the step.


=head2 ValidNextSteps => ArrayRef[Str|Undef]

  ValidNextSteps offer different strategies for managing an Automation
workflow when a step finishes. Automation dynamically processes
ValidNextSteps when a step is completed. For example, you can specify
C<Abort> to stop the Automation when a step fails or C<Continue> to
ignore the failure of the current step and allow Automation to continue
processing the next step. You can also specify C<step:I<step_name> > to
jump to a designated step after a step succeeds. The result of the
current step dynamically determines the ValidNextSteps. If a step
finishes and no ValidNextStep is designated, then the Automation stops.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

