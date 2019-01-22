package Paws::SSM::AutomationExecutionMetadata;
  use Moose;
  has AutomationExecutionId => (is => 'ro', isa => 'Str');
  has AutomationExecutionStatus => (is => 'ro', isa => 'Str');
  has AutomationType => (is => 'ro', isa => 'Str');
  has CurrentAction => (is => 'ro', isa => 'Str');
  has CurrentStepName => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has ExecutedBy => (is => 'ro', isa => 'Str');
  has ExecutionEndTime => (is => 'ro', isa => 'Str');
  has ExecutionStartTime => (is => 'ro', isa => 'Str');
  has FailureMessage => (is => 'ro', isa => 'Str');
  has LogFile => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has ParentAutomationExecutionId => (is => 'ro', isa => 'Str');
  has ResolvedTargets => (is => 'ro', isa => 'Paws::SSM::ResolvedTargets');
  has Target => (is => 'ro', isa => 'Str');
  has TargetMaps => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetMap]');
  has TargetParameterName => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AutomationExecutionMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AutomationExecutionMetadata object:

  $service_obj->Method(Att1 => { AutomationExecutionId => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AutomationExecutionMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomationExecutionId

=head1 DESCRIPTION

Details about a specific Automation execution.

=head1 ATTRIBUTES


=head2 AutomationExecutionId => Str

  The execution ID.


=head2 AutomationExecutionStatus => Str

  The status of the execution. Valid values include: Running, Succeeded,
Failed, Timed out, or Cancelled.


=head2 AutomationType => Str

  Use this filter with DescribeAutomationExecutions. Specify either Local
or CrossAccount. CrossAccount is an Automation that executes in
multiple AWS Regions and accounts. For more information, see
Concurrently Executing Automations in Multiple AWS Regions and Accounts
(http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html)
in the I<AWS Systems Manager User Guide>.


=head2 CurrentAction => Str

  The action of the currently executing step.


=head2 CurrentStepName => Str

  The name of the currently executing step.


=head2 DocumentName => Str

  The name of the Automation document used during execution.


=head2 DocumentVersion => Str

  The document version used during the execution.


=head2 ExecutedBy => Str

  The IAM role ARN of the user who executed the Automation.


=head2 ExecutionEndTime => Str

  The time the execution finished. This is not populated if the execution
is still in progress.


=head2 ExecutionStartTime => Str

  The time the execution started.E<gt>


=head2 FailureMessage => Str

  The list of execution outputs as defined in the Automation document.


=head2 LogFile => Str

  An Amazon S3 bucket where execution information is stored.


=head2 MaxConcurrency => Str

  The MaxConcurrency value specified by the user when starting the
Automation.


=head2 MaxErrors => Str

  The MaxErrors value specified by the user when starting the Automation.


=head2 Mode => Str

  The Automation execution mode.


=head2 Outputs => L<Paws::SSM::AutomationParameterMap>

  The list of execution outputs as defined in the Automation document.


=head2 ParentAutomationExecutionId => Str

  The ExecutionId of the parent Automation.


=head2 ResolvedTargets => L<Paws::SSM::ResolvedTargets>

  A list of targets that resolved during the execution.


=head2 Target => Str

  The list of execution outputs as defined in the Automation document.


=head2 TargetMaps => ArrayRef[L<Paws::SSM::TargetMap>]

  The specified key-value mapping of document parameters to target
resources.


=head2 TargetParameterName => Str

  The list of execution outputs as defined in the Automation document.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

  The targets defined by the user when starting the Automation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

