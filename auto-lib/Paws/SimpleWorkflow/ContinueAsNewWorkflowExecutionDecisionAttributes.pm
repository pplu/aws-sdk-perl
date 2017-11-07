package Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes;
  use Moose;
  has ChildPolicy => (is => 'ro', isa => 'Str', request_name => 'childPolicy', traits => ['NameInRequest']);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'executionStartToCloseTimeout', traits => ['NameInRequest']);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has LambdaRole => (is => 'ro', isa => 'Str', request_name => 'lambdaRole', traits => ['NameInRequest']);
  has TagList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'tagList', traits => ['NameInRequest']);
  has TaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', request_name => 'taskList', traits => ['NameInRequest']);
  has TaskPriority => (is => 'ro', isa => 'Str', request_name => 'taskPriority', traits => ['NameInRequest']);
  has TaskStartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'taskStartToCloseTimeout', traits => ['NameInRequest']);
  has WorkflowTypeVersion => (is => 'ro', isa => 'Str', request_name => 'workflowTypeVersion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes object:

  $service_obj->Method(Att1 => { ChildPolicy => $value, ..., WorkflowTypeVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildPolicy

=head1 DESCRIPTION

Provides the details of the C<ContinueAsNewWorkflowExecution> decision.

B<Access Control>

You can use IAM policies to control this decision's access to Amazon
SWF resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<tag> E<ndash> A tag used to identify the workflow execution

=item *

C<taskList> E<ndash> String constraint. The key is
C<swf:taskList.name>.

=item *

C<workflowType.version> E<ndash> String constraint. The key is
C<swf:workflowType.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.

=head1 ATTRIBUTES


=head2 ChildPolicy => Str

  If set, specifies the policy to use for the child workflow executions
of the new execution if it is terminated by calling the
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


=head2 ExecutionStartToCloseTimeout => Str

  If set, specifies the total duration for this workflow execution. This
overrides the C<defaultExecutionStartToCloseTimeout> specified when
registering the workflow type.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.

An execution start-to-close timeout for this workflow execution must be
specified either as a default for the workflow type or through this
field. If neither this field is set nor a default execution
start-to-close timeout was specified at registration time then a fault
is returned.


=head2 Input => Str

  The input provided to the new workflow execution.


=head2 LambdaRole => Str

  The IAM role to attach to the new (continued) execution.


=head2 TagList => ArrayRef[Str|Undef]

  The list of tags to associate with the new workflow execution. A
maximum of 5 tags can be specified. You can list workflow executions
with a specific tag by calling ListOpenWorkflowExecutions or
ListClosedWorkflowExecutions and specifying a TagFilter.


=head2 TaskList => L<Paws::SimpleWorkflow::TaskList>

  The task list to use for the decisions of the new (continued) workflow
execution.


=head2 TaskPriority => Str

  The task priority that, if set, specifies the priority for the decision
tasks for this workflow execution. This overrides the
defaultTaskPriority specified when registering the workflow type. Valid
values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<Amazon SWF Developer Guide>.


=head2 TaskStartToCloseTimeout => Str

  Specifies the maximum duration of decision tasks for the new workflow
execution. This parameter overrides the
C<defaultTaskStartToCloseTimout> specified when registering the
workflow type using RegisterWorkflowType.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.

A task start-to-close timeout for the new workflow execution must be
specified either as a default for the workflow type or through this
parameter. If neither this parameter is set nor a default task
start-to-close timeout was specified at registration time then a fault
is returned.


=head2 WorkflowTypeVersion => Str

  The version of the workflow to start.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

