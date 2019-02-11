package Paws::SSM::AutomationExecution;
  use Moose;
  has AutomationExecutionId => (is => 'ro', isa => 'Str');
  has AutomationExecutionStatus => (is => 'ro', isa => 'Str');
  has CurrentAction => (is => 'ro', isa => 'Str');
  has CurrentStepName => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has ExecutedBy => (is => 'ro', isa => 'Str');
  has ExecutionEndTime => (is => 'ro', isa => 'Str');
  has ExecutionStartTime => (is => 'ro', isa => 'Str');
  has FailureMessage => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has ParentAutomationExecutionId => (is => 'ro', isa => 'Str');
  has ProgressCounters => (is => 'ro', isa => 'Paws::SSM::ProgressCounters');
  has ResolvedTargets => (is => 'ro', isa => 'Paws::SSM::ResolvedTargets');
  has StepExecutions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::StepExecution]');
  has StepExecutionsTruncated => (is => 'ro', isa => 'Bool');
  has Target => (is => 'ro', isa => 'Str');
  has TargetLocations => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetLocation]');
  has TargetMaps => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetMap]');
  has TargetParameterName => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AutomationExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AutomationExecution object:

  $service_obj->Method(Att1 => { AutomationExecutionId => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AutomationExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomationExecutionId

=head1 DESCRIPTION

Detailed information about the current state of an individual
Automation execution.

=head1 ATTRIBUTES


=head2 AutomationExecutionId => Str

  The execution ID.


=head2 AutomationExecutionStatus => Str

  The execution status of the Automation.


=head2 CurrentAction => Str

  The action of the currently executing step.


=head2 CurrentStepName => Str

  The name of the currently executing step.


=head2 DocumentName => Str

  The name of the Automation document used during the execution.


=head2 DocumentVersion => Str

  The version of the document to use during execution.


=head2 ExecutedBy => Str

  The Amazon Resource Name (ARN) of the user who executed the automation.


=head2 ExecutionEndTime => Str

  The time the execution finished.


=head2 ExecutionStartTime => Str

  The time the execution started.


=head2 FailureMessage => Str

  A message describing why an execution has failed, if the status is set
to Failed.


=head2 MaxConcurrency => Str

  The MaxConcurrency value specified by the user when the execution
started.


=head2 MaxErrors => Str

  The MaxErrors value specified by the user when the execution started.


=head2 Mode => Str

  The automation execution mode.


=head2 Outputs => L<Paws::SSM::AutomationParameterMap>

  The list of execution outputs as defined in the automation document.


=head2 Parameters => L<Paws::SSM::AutomationParameterMap>

  The key-value map of execution parameters, which were supplied when
calling StartAutomationExecution.


=head2 ParentAutomationExecutionId => Str

  The AutomationExecutionId of the parent automation.


=head2 ProgressCounters => L<Paws::SSM::ProgressCounters>

  An aggregate of step execution statuses displayed in the AWS Console
for a multi-Region and multi-account Automation execution.


=head2 ResolvedTargets => L<Paws::SSM::ResolvedTargets>

  A list of resolved targets in the rate control execution.


=head2 StepExecutions => ArrayRef[L<Paws::SSM::StepExecution>]

  A list of details about the current state of all steps that comprise an
execution. An Automation document contains a list of steps that are
executed in order.


=head2 StepExecutionsTruncated => Bool

  A boolean value that indicates if the response contains the full list
of the Automation step executions. If true, use the
DescribeAutomationStepExecutions API action to get the full list of
step executions.


=head2 Target => Str

  The target of the execution.


=head2 TargetLocations => ArrayRef[L<Paws::SSM::TargetLocation>]

  The combination of AWS Regions and/or AWS accounts where you want to
execute the Automation.


=head2 TargetMaps => ArrayRef[L<Paws::SSM::TargetMap>]

  The specified key-value mapping of document parameters to target
resources.


=head2 TargetParameterName => Str

  The parameter name.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

  The specified targets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

