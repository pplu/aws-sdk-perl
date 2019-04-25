
package Paws::SimpleWorkflow::StartWorkflowExecution;
  use Moose;
  has ChildPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'childPolicy' );
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionStartToCloseTimeout' );
  has Input => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'input' );
  has LambdaRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lambdaRole' );
  has TagList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tagList' );
  has TaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', traits => ['NameInRequest'], request_name => 'taskList' );
  has TaskPriority => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskPriority' );
  has TaskStartToCloseTimeout => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskStartToCloseTimeout' );
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId' , required => 1);
  has WorkflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', traits => ['NameInRequest'], request_name => 'workflowType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::Run');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::StartWorkflowExecution - Arguments for method StartWorkflowExecution on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartWorkflowExecution on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method StartWorkflowExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartWorkflowExecution.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $Run = $swf->StartWorkflowExecution(
      Domain       => 'MyDomainName',
      WorkflowId   => 'MyWorkflowId',
      WorkflowType => {
        Name    => 'MyName',       # min: 1, max: 256
        Version => 'MyVersion',    # min: 1, max: 64

      },
      ChildPolicy                  => 'TERMINATE',                    # OPTIONAL
      ExecutionStartToCloseTimeout => 'MyDurationInSecondsOptional',  # OPTIONAL
      Input                        => 'MyData',                       # OPTIONAL
      LambdaRole                   => 'MyArn',                        # OPTIONAL
      TagList                      => [
        'MyTag', ...                                                  # max: 256
      ],                                                              # OPTIONAL
      TaskList => {
        Name => 'MyName',    # min: 1, max: 256

      },    # OPTIONAL
      TaskPriority            => 'MyTaskPriority',                 # OPTIONAL
      TaskStartToCloseTimeout => 'MyDurationInSecondsOptional',    # OPTIONAL
    );

    # Results:
    my $RunId = $Run->RunId;

    # Returns a L<Paws::SimpleWorkflow::Run> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/StartWorkflowExecution>

=head1 ATTRIBUTES


=head2 ChildPolicy => Str

If set, specifies the policy to use for the child workflow executions
of this workflow execution if it is terminated, by calling the
TerminateWorkflowExecution action explicitly or due to an expired
timeout. This policy overrides the default child policy specified when
registering the workflow type using RegisterWorkflowType.

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

=head2 B<REQUIRED> Domain => Str

The name of the domain in which the workflow execution is created.



=head2 ExecutionStartToCloseTimeout => Str

The total duration for this workflow execution. This overrides the
defaultExecutionStartToCloseTimeout specified when registering the
workflow type.

The duration is specified in seconds; an integer greater than or equal
to C<0>. Exceeding this limit causes the workflow execution to time
out. Unlike some of the other timeout parameters in Amazon SWF, you
cannot specify a value of "NONE" for this timeout; there is a one-year
max limit on the time that a workflow execution can run.

An execution start-to-close timeout must be specified either through
this parameter or as a default when the workflow type is registered. If
neither this parameter nor a default execution start-to-close timeout
is specified, a fault is returned.



=head2 Input => Str

The input for the workflow execution. This is a free form string which
should be meaningful to the workflow you are starting. This C<input> is
made available to the new workflow execution in the
C<WorkflowExecutionStarted> history event.



=head2 LambdaRole => Str

The IAM role to attach to this workflow execution.

Executions of this workflow type need IAM roles to invoke Lambda
functions. If you don't attach an IAM role, any attempt to schedule a
Lambda task fails. This results in a C<ScheduleLambdaFunctionFailed>
history event. For more information, see
http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html)
in the I<Amazon SWF Developer Guide>.



=head2 TagList => ArrayRef[Str|Undef]

The list of tags to associate with the workflow execution. You can
specify a maximum of 5 tags. You can list workflow executions with a
specific tag by calling ListOpenWorkflowExecutions or
ListClosedWorkflowExecutions and specifying a TagFilter.



=head2 TaskList => L<Paws::SimpleWorkflow::TaskList>

The task list to use for the decision tasks generated for this workflow
execution. This overrides the C<defaultTaskList> specified when
registering the workflow type.

A task list for this workflow execution must be specified either as a
default for the workflow type or through this parameter. If neither
this parameter is set nor a default task list was specified at
registration time then a fault is returned.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.



=head2 TaskPriority => Str

The task priority to use for this workflow execution. This overrides
any default priority that was assigned when the workflow type was
registered. If not set, then the default task priority for the workflow
type is used. Valid values are integers that range from Java's
C<Integer.MIN_VALUE> (-2147483648) to C<Integer.MAX_VALUE>
(2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<Amazon SWF Developer Guide>.



=head2 TaskStartToCloseTimeout => Str

Specifies the maximum duration of decision tasks for this workflow
execution. This parameter overrides the
C<defaultTaskStartToCloseTimout> specified when registering the
workflow type using RegisterWorkflowType.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.

A task start-to-close timeout for this workflow execution must be
specified either as a default for the workflow type or through this
parameter. If neither this parameter is set nor a default task
start-to-close timeout was specified at registration time then a fault
is returned.



=head2 B<REQUIRED> WorkflowId => Str

The user defined identifier associated with the workflow execution. You
can use this to associate a custom identifier with the workflow
execution. You may specify the same identifier if a workflow execution
is logically a I<restart> of a previous execution. You cannot have two
open workflow executions with the same C<workflowId> at the same time.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.



=head2 B<REQUIRED> WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>

The type of the workflow to start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartWorkflowExecution in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

