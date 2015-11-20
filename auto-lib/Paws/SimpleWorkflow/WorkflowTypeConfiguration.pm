package Paws::SimpleWorkflow::WorkflowTypeConfiguration;
  use Moose;
  has DefaultChildPolicy => (is => 'ro', isa => 'Str', xmlname => 'defaultChildPolicy', request_name => 'defaultChildPolicy', traits => ['Unwrapped','NameInRequest']);
  has DefaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str', xmlname => 'defaultExecutionStartToCloseTimeout', request_name => 'defaultExecutionStartToCloseTimeout', traits => ['Unwrapped','NameInRequest']);
  has DefaultLambdaRole => (is => 'ro', isa => 'Str', xmlname => 'defaultLambdaRole', request_name => 'defaultLambdaRole', traits => ['Unwrapped','NameInRequest']);
  has DefaultTaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', xmlname => 'defaultTaskList', request_name => 'defaultTaskList', traits => ['Unwrapped','NameInRequest']);
  has DefaultTaskPriority => (is => 'ro', isa => 'Str', xmlname => 'defaultTaskPriority', request_name => 'defaultTaskPriority', traits => ['Unwrapped','NameInRequest']);
  has DefaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str', xmlname => 'defaultTaskStartToCloseTimeout', request_name => 'defaultTaskStartToCloseTimeout', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowTypeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowTypeConfiguration object:

  $service_obj->Method(Att1 => { DefaultChildPolicy => $value, ..., DefaultTaskStartToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowTypeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultChildPolicy

=head1 DESCRIPTION

The configuration settings of a workflow type.

=head1 ATTRIBUTES


=head2 DefaultChildPolicy => Str

  I<Optional.> The default policy to use for the child workflow
executions when a workflow execution of this type is terminated, by
calling the TerminateWorkflowExecution action explicitly or due to an
expired timeout. This default can be overridden when starting a
workflow execution using the StartWorkflowExecution action or the
C<StartChildWorkflowExecution> decision.

The supported child policies are:

=over

=item * B<TERMINATE:> the child executions will be terminated.

=item * B<REQUEST_CANCEL:> a request to cancel will be attempted for
each child execution by recording a C<WorkflowExecutionCancelRequested>
event in its history. It is up to the decider to take appropriate
actions when it receives an execution history with this event.

=item * B<ABANDON:> no action will be taken. The child executions will
continue to run.

=back



=head2 DefaultExecutionStartToCloseTimeout => Str

  I<Optional.> The default maximum duration, specified when registering
the workflow type, for executions of this workflow type. This default
can be overridden when starting a workflow execution using the
StartWorkflowExecution action or the C<StartChildWorkflowExecution>
decision.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.


=head2 DefaultLambdaRole => Str

  The default IAM role to use when a workflow execution invokes a AWS
Lambda function.


=head2 DefaultTaskList => L<Paws::SimpleWorkflow::TaskList>

  I<Optional.> The default task list, specified when registering the
workflow type, for decisions tasks scheduled for workflow executions of
this type. This default can be overridden when starting a workflow
execution using the StartWorkflowExecution action or the
C<StartChildWorkflowExecution> decision.


=head2 DefaultTaskPriority => Str

  I<Optional.> The default task priority, specified when registering the
workflow type, for all decision tasks of this workflow type. This
default can be overridden when starting a workflow execution using the
StartWorkflowExecution action or the C<StartChildWorkflowExecution>
decision.

Valid values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority in the I<Amazon Simple Workflow Developer Guide>.


=head2 DefaultTaskStartToCloseTimeout => Str

  I<Optional.> The default maximum duration, specified when registering
the workflow type, that a decision task for executions of this workflow
type might take before returning completion or failure. If the task
does not close in the specified time then the task is automatically
timed out and rescheduled. If the decider eventually reports a
completion or failure, it is ignored. This default can be overridden
when starting a workflow execution using the StartWorkflowExecution
action or the C<StartChildWorkflowExecution> decision.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

