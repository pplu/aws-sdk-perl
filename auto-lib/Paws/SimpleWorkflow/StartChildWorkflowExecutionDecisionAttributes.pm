# Generated from default/object.tt
package Paws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowType SimpleWorkflow_TaskList/;
  has ChildPolicy => (is => 'ro', isa => Str);
  has Control => (is => 'ro', isa => Str);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => Str);
  has Input => (is => 'ro', isa => Str);
  has LambdaRole => (is => 'ro', isa => Str);
  has TagList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TaskList => (is => 'ro', isa => SimpleWorkflow_TaskList);
  has TaskPriority => (is => 'ro', isa => Str);
  has TaskStartToCloseTimeout => (is => 'ro', isa => Str);
  has WorkflowId => (is => 'ro', isa => Str, required => 1);
  has WorkflowType => (is => 'ro', isa => SimpleWorkflow_WorkflowType, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LambdaRole' => {
                                 'type' => 'Str'
                               },
               'TaskList' => {
                               'type' => 'SimpleWorkflow_TaskList',
                               'class' => 'Paws::SimpleWorkflow::TaskList'
                             },
               'WorkflowType' => {
                                   'class' => 'Paws::SimpleWorkflow::WorkflowType',
                                   'type' => 'SimpleWorkflow_WorkflowType'
                                 },
               'TagList' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'ExecutionStartToCloseTimeout' => {
                                                   'type' => 'Str'
                                                 },
               'TaskPriority' => {
                                   'type' => 'Str'
                                 },
               'TaskStartToCloseTimeout' => {
                                              'type' => 'Str'
                                            },
               'Control' => {
                              'type' => 'Str'
                            },
               'WorkflowId' => {
                                 'type' => 'Str'
                               },
               'ChildPolicy' => {
                                  'type' => 'Str'
                                },
               'Input' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'WorkflowId' => 1,
                    'WorkflowType' => 1
                  },
  'NameInRequest' => {
                       'LambdaRole' => 'lambdaRole',
                       'WorkflowType' => 'workflowType',
                       'TaskList' => 'taskList',
                       'TagList' => 'tagList',
                       'ExecutionStartToCloseTimeout' => 'executionStartToCloseTimeout',
                       'TaskPriority' => 'taskPriority',
                       'WorkflowId' => 'workflowId',
                       'Control' => 'control',
                       'TaskStartToCloseTimeout' => 'taskStartToCloseTimeout',
                       'ChildPolicy' => 'childPolicy',
                       'Input' => 'input'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes object:

  $service_obj->Method(Att1 => { ChildPolicy => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::StartChildWorkflowExecutionDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildPolicy

=head1 DESCRIPTION

Provides the details of the C<StartChildWorkflowExecution> decision.

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

C<tagList.member.N> E<ndash> The key is "swf:tagList.N" where N is the
tag number from 0 to 4, inclusive.

=item *

C<taskList> E<ndash> String constraint. The key is
C<swf:taskList.name>.

=item *

C<workflowType.name> E<ndash> String constraint. The key is
C<swf:workflowType.name>.

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
(https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.

=head1 ATTRIBUTES


=head2 ChildPolicy => Str

  If set, specifies the policy to use for the child workflow executions
if the workflow execution being started is terminated by calling the
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


=head2 Control => Str

  The data attached to the event that can be used by the decider in
subsequent workflow tasks. This data isn't sent to the child workflow
execution.


=head2 ExecutionStartToCloseTimeout => Str

  The total duration for this workflow execution. This overrides the
defaultExecutionStartToCloseTimeout specified when registering the
workflow type.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.

An execution start-to-close timeout for this workflow execution must be
specified either as a default for the workflow type or through this
parameter. If neither this parameter is set nor a default execution
start-to-close timeout was specified at registration time then a fault
is returned.


=head2 Input => Str

  The input to be provided to the workflow execution.


=head2 LambdaRole => Str

  The IAM role attached to the child workflow execution.


=head2 TagList => ArrayRef[Str|Undef]

  The list of tags to associate with the child workflow execution. A
maximum of 5 tags can be specified. You can list workflow executions
with a specific tag by calling ListOpenWorkflowExecutions or
ListClosedWorkflowExecutions and specifying a TagFilter.


=head2 TaskList => SimpleWorkflow_TaskList

  The name of the task list to be used for decision tasks of the child
workflow execution.

A task list for this workflow execution must be specified either as a
default for the workflow type or through this parameter. If neither
this parameter is set nor a default task list was specified at
registration time then a fault is returned.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.


=head2 TaskPriority => Str

  A task priority that, if set, specifies the priority for a decision
task of this workflow execution. This overrides the defaultTaskPriority
specified when registering the workflow type. Valid values are integers
that range from Java's C<Integer.MIN_VALUE> (-2147483648) to
C<Integer.MAX_VALUE> (2147483647). Higher numbers indicate higher
priority.

For more information about setting task priority, see Setting Task
Priority
(https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
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

  The C<workflowId> of the workflow execution.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.


=head2 B<REQUIRED> WorkflowType => SimpleWorkflow_WorkflowType

  The type of the workflow execution to be started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

