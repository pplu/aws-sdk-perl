# Generated from default/object.tt
package Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int Undef ArrayRef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowExecution SimpleWorkflow_WorkflowType SimpleWorkflow_TaskList/;
  has ChildPolicy => (is => 'ro', isa => Str, required => 1);
  has ContinuedExecutionRunId => (is => 'ro', isa => Str);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => Str);
  has Input => (is => 'ro', isa => Str);
  has LambdaRole => (is => 'ro', isa => Str);
  has ParentInitiatedEventId => (is => 'ro', isa => Int);
  has ParentWorkflowExecution => (is => 'ro', isa => SimpleWorkflow_WorkflowExecution);
  has TagList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TaskList => (is => 'ro', isa => SimpleWorkflow_TaskList, required => 1);
  has TaskPriority => (is => 'ro', isa => Str);
  has TaskStartToCloseTimeout => (is => 'ro', isa => Str);
  has WorkflowType => (is => 'ro', isa => SimpleWorkflow_WorkflowType, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ChildPolicy' => 1,
                    'WorkflowType' => 1,
                    'TaskList' => 1
                  },
  'NameInRequest' => {
                       'Input' => 'input',
                       'ParentWorkflowExecution' => 'parentWorkflowExecution',
                       'ContinuedExecutionRunId' => 'continuedExecutionRunId',
                       'TaskPriority' => 'taskPriority',
                       'ExecutionStartToCloseTimeout' => 'executionStartToCloseTimeout',
                       'ChildPolicy' => 'childPolicy',
                       'ParentInitiatedEventId' => 'parentInitiatedEventId',
                       'TaskStartToCloseTimeout' => 'taskStartToCloseTimeout',
                       'TagList' => 'tagList',
                       'TaskList' => 'taskList',
                       'WorkflowType' => 'workflowType',
                       'LambdaRole' => 'lambdaRole'
                     },
  'types' => {
               'ParentInitiatedEventId' => {
                                             'type' => 'Int'
                                           },
               'TaskStartToCloseTimeout' => {
                                              'type' => 'Str'
                                            },
               'ChildPolicy' => {
                                  'type' => 'Str'
                                },
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
               'TaskPriority' => {
                                   'type' => 'Str'
                                 },
               'ContinuedExecutionRunId' => {
                                              'type' => 'Str'
                                            },
               'ParentWorkflowExecution' => {
                                              'class' => 'Paws::SimpleWorkflow::WorkflowExecution',
                                              'type' => 'SimpleWorkflow_WorkflowExecution'
                                            },
               'Input' => {
                            'type' => 'Str'
                          },
               'ExecutionStartToCloseTimeout' => {
                                                   'type' => 'Str'
                                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes object:

  $service_obj->Method(Att1 => { ChildPolicy => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildPolicy

=head1 DESCRIPTION

Provides details of C<WorkflowExecutionStarted> event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChildPolicy => Str

  The policy to use for the child workflow executions if this workflow
execution is terminated, by calling the TerminateWorkflowExecution
action explicitly or due to an expired timeout.

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



=head2 ContinuedExecutionRunId => Str

  If this workflow execution was started due to a
C<ContinueAsNewWorkflowExecution> decision, then it contains the
C<runId> of the previous workflow execution that was closed and
continued as this execution.


=head2 ExecutionStartToCloseTimeout => Str

  The maximum duration for this workflow execution.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 Input => Str

  The input provided to the workflow execution.


=head2 LambdaRole => Str

  The IAM role attached to the workflow execution.


=head2 ParentInitiatedEventId => Int

  The ID of the C<StartChildWorkflowExecutionInitiated> event
corresponding to the C<StartChildWorkflowExecution> Decision to start
this workflow execution. The source event with this ID can be found in
the history of the source workflow execution. This information can be
useful for diagnosing problems by tracing back the chain of events
leading up to this event.


=head2 ParentWorkflowExecution => SimpleWorkflow_WorkflowExecution

  The source workflow execution that started this workflow execution. The
member isn't set if the workflow execution was not started by a
workflow.


=head2 TagList => ArrayRef[Str|Undef]

  The list of tags associated with this workflow execution. An execution
can have up to 5 tags.


=head2 B<REQUIRED> TaskList => SimpleWorkflow_TaskList

  The name of the task list for scheduling the decision tasks for this
workflow execution.


=head2 TaskPriority => Str

  The priority of the decision tasks in the workflow execution.


=head2 TaskStartToCloseTimeout => Str

  The maximum duration of decision tasks for this workflow type.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 B<REQUIRED> WorkflowType => SimpleWorkflow_WorkflowType

  The workflow type of this execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

