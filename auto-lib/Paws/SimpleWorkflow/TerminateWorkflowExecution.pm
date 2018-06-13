
package Paws::SimpleWorkflow::TerminateWorkflowExecution;
  use Moose;
  has ChildPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'childPolicy' );
  has Details => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'details' );
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason' );
  has RunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runId' );
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::TerminateWorkflowExecution - Arguments for method TerminateWorkflowExecution on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateWorkflowExecution on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method TerminateWorkflowExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateWorkflowExecution.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    $swf->TerminateWorkflowExecution(
      Domain      => 'MyDomainName',
      WorkflowId  => 'MyWorkflowId',
      ChildPolicy => 'TERMINATE',                  # OPTIONAL
      Details     => 'MyData',                     # OPTIONAL
      Reason      => 'MyTerminateReason',          # OPTIONAL
      RunId       => 'MyWorkflowRunIdOptional',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/TerminateWorkflowExecution>

=head1 ATTRIBUTES


=head2 ChildPolicy => Str

If set, specifies the policy to use for the child workflow executions
of the workflow execution being terminated. This policy overrides the
child policy specified for the workflow execution at registration time
or when starting the execution.

The supported child policies are:

=over

=item *

C<TERMINATE> E<ndash> The child executions are terminated.

=item *

C<REQUEST_CANCEL> E<ndash> A request to cancel is attempted for each
child execution by recording a C<WorkflowExecutionCancelRequested>
event in its history. It is up to the decider to take appropriate
actions when it receives an execution history with this event.

=item *

C<ABANDON> E<ndash> No action is taken. The child executions continue
to run.

=back

A child policy for this workflow execution must be specified either as
a default for the workflow type or through this parameter. If neither
this parameter is set nor a default child policy was specified at
registration time then a fault is returned.

Valid values are: C<"TERMINATE">, C<"REQUEST_CANCEL">, C<"ABANDON">

=head2 Details => Str

Details for terminating the workflow execution.



=head2 B<REQUIRED> Domain => Str

The domain of the workflow execution to terminate.



=head2 Reason => Str

A descriptive reason for terminating the workflow execution.



=head2 RunId => Str

The runId of the workflow execution to terminate.



=head2 B<REQUIRED> WorkflowId => Str

The workflowId of the workflow execution to terminate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateWorkflowExecution in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

