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
  has TargetLocation => (is => 'ro', isa => 'Paws::SSM::TargetLocation');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
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

  The flag which can be used to help decide whether the failure of
current step leads to the Automation failure.


=head2 IsEnd => Bool

  The flag which can be used to end automation no matter whether the step
succeeds or fails.


=head2 MaxAttempts => Int

  The maximum number of tries to run the action of the step. The default
value is 1.


=head2 NextStep => Str

  The next step after the step succeeds.


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


=head2 TargetLocation => L<Paws::SSM::TargetLocation>

  The combination of AWS Regions and accounts targeted by the current
Automation execution.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

  The targets for the step execution.


=head2 TimeoutSeconds => Int

  The timeout seconds of the step.


=head2 ValidNextSteps => ArrayRef[Str|Undef]

  Strategies used when step fails, we support Continue and Abort. Abort
will fail the automation when the step fails. Continue will ignore the
failure of current step and allow automation to execute the next step.
With conditional branching, we add step:stepName to support the
automation to go to another specific step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

