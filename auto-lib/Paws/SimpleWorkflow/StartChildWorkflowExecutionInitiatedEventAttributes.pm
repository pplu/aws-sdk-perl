# Generated from default/object.tt
package Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowType SimpleWorkflow_TaskList/;
  has ChildPolicy => (is => 'ro', isa => Str, required => 1);
  has Control => (is => 'ro', isa => Str);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => Int, required => 1);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => Str);
  has Input => (is => 'ro', isa => Str);
  has LambdaRole => (is => 'ro', isa => Str);
  has TagList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TaskList => (is => 'ro', isa => SimpleWorkflow_TaskList, required => 1);
  has TaskPriority => (is => 'ro', isa => Str);
  has TaskStartToCloseTimeout => (is => 'ro', isa => Str);
  has WorkflowId => (is => 'ro', isa => Str, required => 1);
  has WorkflowType => (is => 'ro', isa => SimpleWorkflow_WorkflowType, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskList' => {
                               'class' => 'Paws::SimpleWorkflow::TaskList',
                               'type' => 'SimpleWorkflow_TaskList'
                             },
               'LambdaRole' => {
                                 'type' => 'Str'
                               },
               'TaskStartToCloseTimeout' => {
                                              'type' => 'Str'
                                            },
               'ChildPolicy' => {
                                  'type' => 'Str'
                                },
               'TaskPriority' => {
                                   'type' => 'Str'
                                 },
               'ExecutionStartToCloseTimeout' => {
                                                   'type' => 'Str'
                                                 },
               'WorkflowType' => {
                                   'class' => 'Paws::SimpleWorkflow::WorkflowType',
                                   'type' => 'SimpleWorkflow_WorkflowType'
                                 },
               'TagList' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'Control' => {
                              'type' => 'Str'
                            },
               'Input' => {
                            'type' => 'Str'
                          },
               'WorkflowId' => {
                                 'type' => 'Str'
                               },
               'DecisionTaskCompletedEventId' => {
                                                   'type' => 'Int'
                                                 }
             },
  'NameInRequest' => {
                       'TaskList' => 'taskList',
                       'LambdaRole' => 'lambdaRole',
                       'TaskStartToCloseTimeout' => 'taskStartToCloseTimeout',
                       'ChildPolicy' => 'childPolicy',
                       'TaskPriority' => 'taskPriority',
                       'ExecutionStartToCloseTimeout' => 'executionStartToCloseTimeout',
                       'WorkflowType' => 'workflowType',
                       'TagList' => 'tagList',
                       'Control' => 'control',
                       'Input' => 'input',
                       'WorkflowId' => 'workflowId',
                       'DecisionTaskCompletedEventId' => 'decisionTaskCompletedEventId'
                     },
  'IsRequired' => {
                    'WorkflowType' => 1,
                    'TaskList' => 1,
                    'ChildPolicy' => 1,
                    'WorkflowId' => 1,
                    'DecisionTaskCompletedEventId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes object:

  $service_obj->Method(Att1 => { ChildPolicy => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildPolicy

=head1 DESCRIPTION

Provides the details of the C<StartChildWorkflowExecutionInitiated>
event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChildPolicy => Str

  The policy to use for the child workflow executions if this execution
gets terminated by explicitly calling the TerminateWorkflowExecution
action or due to an expired timeout.

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



=head2 Control => Str

  Data attached to the event that can be used by the decider in
subsequent decision tasks. This data isn't sent to the activity.


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<StartChildWorkflowExecution>
Decision to request this child workflow execution. This information can
be useful for diagnosing problems by tracing back the cause of events.


=head2 ExecutionStartToCloseTimeout => Str

  The maximum duration for the child workflow execution. If the workflow
execution isn't closed within this duration, it is timed out and
force-terminated.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 Input => Str

  The inputs provided to the child workflow execution.


=head2 LambdaRole => Str

  The IAM role to attach to the child workflow execution.


=head2 TagList => ArrayRef[Str|Undef]

  The list of tags to associated with the child workflow execution.


=head2 B<REQUIRED> TaskList => SimpleWorkflow_TaskList

  The name of the task list used for the decision tasks of the child
workflow execution.


=head2 TaskPriority => Str

  The priority assigned for the decision tasks for this workflow
execution. Valid values are integers that range from Java's
C<Integer.MIN_VALUE> (-2147483648) to C<Integer.MAX_VALUE>
(2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<Amazon SWF Developer Guide>.


=head2 TaskStartToCloseTimeout => Str

  The maximum duration allowed for the decision tasks for this workflow
execution.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 B<REQUIRED> WorkflowId => Str

  The C<workflowId> of the child workflow execution.


=head2 B<REQUIRED> WorkflowType => SimpleWorkflow_WorkflowType

  The type of the child workflow execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

