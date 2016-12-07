package Paws::SSM::AutomationExecution;
  use Moose;
  has AutomationExecutionId => (is => 'ro', isa => 'Str');
  has AutomationExecutionStatus => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has ExecutionEndTime => (is => 'ro', isa => 'Str');
  has ExecutionStartTime => (is => 'ro', isa => 'Str');
  has FailureMessage => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has StepExecutions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::StepExecution]');
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

  $service_obj->Method(Att1 => { AutomationExecutionId => $value, ..., StepExecutions => $value  });

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


=head2 DocumentName => Str

  The name of the Automation document used during the execution.


=head2 DocumentVersion => Str

  The version of the document to use during execution.


=head2 ExecutionEndTime => Str

  The time the execution finished.


=head2 ExecutionStartTime => Str

  The time the execution started.


=head2 FailureMessage => Str

  A message describing why an execution has failed, if the status is set
to Failed.


=head2 Outputs => L<Paws::SSM::AutomationParameterMap>

  The list of execution outputs as defined in the automation document.


=head2 Parameters => L<Paws::SSM::AutomationParameterMap>

  The key-value map of execution parameters, which were supplied when
calling C<StartAutomationExecution>.


=head2 StepExecutions => ArrayRef[L<Paws::SSM::StepExecution>]

  A list of details about the current state of all steps that comprise an
execution. An Automation document contains a list of steps that are
executed in order.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

