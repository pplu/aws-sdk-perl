package Paws::SimpleWorkflow::WorkflowTypeConfiguration;
  use Moose;
  has DefaultChildPolicy => (is => 'ro', isa => 'Str', request_name => 'defaultChildPolicy', traits => ['NameInRequest']);
  has DefaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'defaultExecutionStartToCloseTimeout', traits => ['NameInRequest']);
  has DefaultLambdaRole => (is => 'ro', isa => 'Str', request_name => 'defaultLambdaRole', traits => ['NameInRequest']);
  has DefaultTaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', request_name => 'defaultTaskList', traits => ['NameInRequest']);
  has DefaultTaskPriority => (is => 'ro', isa => 'Str', request_name => 'defaultTaskPriority', traits => ['NameInRequest']);
  has DefaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'defaultTaskStartToCloseTimeout', traits => ['NameInRequest']);
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

  The default policy to use for the child workflow executions when a
workflow execution of this type is terminated, by calling the
TerminateWorkflowExecution action explicitly or due to an expired
timeout. This default can be overridden when starting a workflow
execution using the StartWorkflowExecution action or the
C<StartChildWorkflowExecution> Decision.

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



=head2 DefaultExecutionStartToCloseTimeout => Str

  The default maximum duration, specified when registering the workflow
type, for executions of this workflow type. This default can be
overridden when starting a workflow execution using the
StartWorkflowExecution action or the C<StartChildWorkflowExecution>
Decision.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 DefaultLambdaRole => Str

  The default IAM role attached to this workflow type.

Executions of this workflow type need IAM roles to invoke Lambda
functions. If you don't specify an IAM role when starting this workflow
type, the default Lambda role is attached to the execution. For more
information, see
http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html)
in the I<Amazon SWF Developer Guide>.


=head2 DefaultTaskList => L<Paws::SimpleWorkflow::TaskList>

  The default task list, specified when registering the workflow type,
for decisions tasks scheduled for workflow executions of this type.
This default can be overridden when starting a workflow execution using
the StartWorkflowExecution action or the C<StartChildWorkflowExecution>
Decision.


=head2 DefaultTaskPriority => Str

  The default task priority, specified when registering the workflow
type, for all decision tasks of this workflow type. This default can be
overridden when starting a workflow execution using the
StartWorkflowExecution action or the C<StartChildWorkflowExecution>
decision.

Valid values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<Amazon SWF Developer Guide>.


=head2 DefaultTaskStartToCloseTimeout => Str

  The default maximum duration, specified when registering the workflow
type, that a decision task for executions of this workflow type might
take before returning completion or failure. If the task doesn'tdo
close in the specified time then the task is automatically timed out
and rescheduled. If the decider eventually reports a completion or
failure, it is ignored. This default can be overridden when starting a
workflow execution using the StartWorkflowExecution action or the
C<StartChildWorkflowExecution> Decision.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

