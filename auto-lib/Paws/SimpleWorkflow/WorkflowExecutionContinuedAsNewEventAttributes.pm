# Generated from default/object.tt
package Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowType SimpleWorkflow_TaskList/;
  has ChildPolicy => (is => 'ro', isa => Str, required => 1);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => Int, required => 1);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => Str);
  has Input => (is => 'ro', isa => Str);
  has LambdaRole => (is => 'ro', isa => Str);
  has NewExecutionRunId => (is => 'ro', isa => Str, required => 1);
  has TagList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TaskList => (is => 'ro', isa => SimpleWorkflow_TaskList, required => 1);
  has TaskPriority => (is => 'ro', isa => Str);
  has TaskStartToCloseTimeout => (is => 'ro', isa => Str);
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
               'NewExecutionRunId' => {
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
               'Input' => {
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
                       'NewExecutionRunId' => 'newExecutionRunId',
                       'ChildPolicy' => 'childPolicy',
                       'TaskPriority' => 'taskPriority',
                       'ExecutionStartToCloseTimeout' => 'executionStartToCloseTimeout',
                       'WorkflowType' => 'workflowType',
                       'TagList' => 'tagList',
                       'Input' => 'input',
                       'DecisionTaskCompletedEventId' => 'decisionTaskCompletedEventId'
                     },
  'IsRequired' => {
                    'WorkflowType' => 1,
                    'TaskList' => 1,
                    'NewExecutionRunId' => 1,
                    'ChildPolicy' => 1,
                    'DecisionTaskCompletedEventId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes object:

  $service_obj->Method(Att1 => { ChildPolicy => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildPolicy

=head1 DESCRIPTION

Provides the details of the C<WorkflowExecutionContinuedAsNew> event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChildPolicy => Str

  The policy to use for the child workflow executions of the new
execution if it is terminated by calling the TerminateWorkflowExecution
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



=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<ContinueAsNewWorkflowExecution>
decision that started this execution. This information can be useful
for diagnosing problems by tracing back the chain of events leading up
to this event.


=head2 ExecutionStartToCloseTimeout => Str

  The total duration allowed for the new workflow execution.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 Input => Str

  The input provided to the new workflow execution.


=head2 LambdaRole => Str

  The IAM role to attach to the new (continued) workflow execution.


=head2 B<REQUIRED> NewExecutionRunId => Str

  The C<runId> of the new workflow execution.


=head2 TagList => ArrayRef[Str|Undef]

  The list of tags associated with the new workflow execution.


=head2 B<REQUIRED> TaskList => SimpleWorkflow_TaskList

  The task list to use for the decisions of the new (continued) workflow
execution.


=head2 TaskPriority => Str

  The priority of the task to use for the decisions of the new
(continued) workflow execution.


=head2 TaskStartToCloseTimeout => Str

  The maximum duration of decision tasks for the new workflow execution.

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

