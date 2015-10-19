package Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes;
  use Moose;
  has Control => (is => 'ro', isa => 'Str', xmlname => 'control', request_name => 'control', traits => ['Unwrapped','NameInRequest']);
  has Input => (is => 'ro', isa => 'Str', xmlname => 'input', request_name => 'input', traits => ['Unwrapped','NameInRequest']);
  has RunId => (is => 'ro', isa => 'Str', xmlname => 'runId', request_name => 'runId', traits => ['Unwrapped','NameInRequest']);
  has SignalName => (is => 'ro', isa => 'Str', xmlname => 'signalName', request_name => 'signalName', traits => ['Unwrapped','NameInRequest'], required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', xmlname => 'workflowId', request_name => 'workflowId', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes object:

  $service_obj->Method(Att1 => { Control => $value, ..., WorkflowId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Control

=head1 DESCRIPTION

Provides details of the C<SignalExternalWorkflowExecution> decision.

B<Access Control>

You can use IAM policies to control this decision's access to Amazon
SWF resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails. The associated event attribute's B<cause> parameter
will be set to OPERATION_NOT_PERMITTED. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows.

=head1 ATTRIBUTES

=head2 Control => Str

  I<Optional.> Data attached to the event that can be used by the decider
in subsequent decision tasks.

=head2 Input => Str

  I<Optional.> Input data to be provided with the signal. The target
workflow execution will use the signal name and input data to process
the signal.

=head2 RunId => Str

  The C<runId> of the workflow execution to be signaled.

=head2 B<REQUIRED> SignalName => Str

  B<Required.> The name of the signal.The target workflow execution will
use the signal name and input to process the signal.

=head2 B<REQUIRED> WorkflowId => Str

  B<Required.> The C<workflowId> of the workflow execution to be
signaled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

