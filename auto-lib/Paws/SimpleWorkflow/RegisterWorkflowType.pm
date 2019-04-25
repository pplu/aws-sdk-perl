
package Paws::SimpleWorkflow::RegisterWorkflowType;
  use Moose;
  has DefaultChildPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultChildPolicy' );
  has DefaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultExecutionStartToCloseTimeout' );
  has DefaultLambdaRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultLambdaRole' );
  has DefaultTaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', traits => ['NameInRequest'], request_name => 'defaultTaskList' );
  has DefaultTaskPriority => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultTaskPriority' );
  has DefaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultTaskStartToCloseTimeout' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterWorkflowType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::RegisterWorkflowType - Arguments for method RegisterWorkflowType on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterWorkflowType on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method RegisterWorkflowType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterWorkflowType.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    $swf->RegisterWorkflowType(
      Domain             => 'MyDomainName',
      Name               => 'MyName',
      Version            => 'MyVersion',
      DefaultChildPolicy => 'TERMINATE',      # OPTIONAL
      DefaultExecutionStartToCloseTimeout =>
        'MyDurationInSecondsOptional',        # OPTIONAL
      DefaultLambdaRole => 'MyArn',           # OPTIONAL
      DefaultTaskList   => {
        Name => 'MyName',                     # min: 1, max: 256

      },    # OPTIONAL
      DefaultTaskPriority => 'MyTaskPriority',    # OPTIONAL
      DefaultTaskStartToCloseTimeout =>
        'MyDurationInSecondsOptional',            # OPTIONAL
      Description => 'MyDescription',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/RegisterWorkflowType>

=head1 ATTRIBUTES


=head2 DefaultChildPolicy => Str

If set, specifies the default policy to use for the child workflow
executions when a workflow execution of this type is terminated, by
calling the TerminateWorkflowExecution action explicitly or due to an
expired timeout. This default can be overridden when starting a
workflow execution using the StartWorkflowExecution action or the
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


Valid values are: C<"TERMINATE">, C<"REQUEST_CANCEL">, C<"ABANDON">

=head2 DefaultExecutionStartToCloseTimeout => Str

If set, specifies the default maximum duration for executions of this
workflow type. You can override this default when starting an execution
through the StartWorkflowExecution Action or
C<StartChildWorkflowExecution> Decision.

The duration is specified in seconds; an integer greater than or equal
to 0. Unlike some of the other timeout parameters in Amazon SWF, you
cannot specify a value of "NONE" for
C<defaultExecutionStartToCloseTimeout>; there is a one-year max limit
on the time that a workflow execution can run. Exceeding this limit
always causes the workflow execution to time out.



=head2 DefaultLambdaRole => Str

The default IAM role attached to this workflow type.

Executions of this workflow type need IAM roles to invoke Lambda
functions. If you don't specify an IAM role when you start this
workflow type, the default Lambda role is attached to the execution.
For more information, see
http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html)
in the I<Amazon SWF Developer Guide>.



=head2 DefaultTaskList => L<Paws::SimpleWorkflow::TaskList>

If set, specifies the default task list to use for scheduling decision
tasks for executions of this workflow type. This default is used only
if a task list isn't provided when starting the execution through the
StartWorkflowExecution Action or C<StartChildWorkflowExecution>
Decision.



=head2 DefaultTaskPriority => Str

The default task priority to assign to the workflow type. If not
assigned, then C<0> is used. Valid values are integers that range from
Java's C<Integer.MIN_VALUE> (-2147483648) to C<Integer.MAX_VALUE>
(2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<Amazon SWF Developer Guide>.



=head2 DefaultTaskStartToCloseTimeout => Str

If set, specifies the default maximum duration of decision tasks for
this workflow type. This default can be overridden when starting a
workflow execution using the StartWorkflowExecution action or the
C<StartChildWorkflowExecution> Decision.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.



=head2 Description => Str

Textual description of the workflow type.



=head2 B<REQUIRED> Domain => Str

The name of the domain in which to register the workflow type.



=head2 B<REQUIRED> Name => Str

The name of the workflow type.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.



=head2 B<REQUIRED> Version => Str

The version of the workflow type.

The workflow type consists of the name and version, the combination of
which must be unique within the domain. To get a list of all currently
registered workflow types, use the ListWorkflowTypes action.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterWorkflowType in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

