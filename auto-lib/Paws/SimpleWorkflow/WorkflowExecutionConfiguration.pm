# Generated from default/object.tt
package Paws::SimpleWorkflow::WorkflowExecutionConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_TaskList/;
  has ChildPolicy => (is => 'ro', isa => Str, required => 1);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => Str, required => 1);
  has LambdaRole => (is => 'ro', isa => Str);
  has TaskList => (is => 'ro', isa => SimpleWorkflow_TaskList, required => 1);
  has TaskPriority => (is => 'ro', isa => Str);
  has TaskStartToCloseTimeout => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TaskStartToCloseTimeout' => 1,
                    'TaskList' => 1,
                    'ChildPolicy' => 1,
                    'ExecutionStartToCloseTimeout' => 1
                  },
  'NameInRequest' => {
                       'ExecutionStartToCloseTimeout' => 'executionStartToCloseTimeout',
                       'TaskList' => 'taskList',
                       'ChildPolicy' => 'childPolicy',
                       'TaskStartToCloseTimeout' => 'taskStartToCloseTimeout',
                       'TaskPriority' => 'taskPriority',
                       'LambdaRole' => 'lambdaRole'
                     },
  'types' => {
               'TaskStartToCloseTimeout' => {
                                              'type' => 'Str'
                                            },
               'TaskPriority' => {
                                   'type' => 'Str'
                                 },
               'LambdaRole' => {
                                 'type' => 'Str'
                               },
               'ExecutionStartToCloseTimeout' => {
                                                   'type' => 'Str'
                                                 },
               'TaskList' => {
                               'class' => 'Paws::SimpleWorkflow::TaskList',
                               'type' => 'SimpleWorkflow_TaskList'
                             },
               'ChildPolicy' => {
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

Paws::SimpleWorkflow::WorkflowExecutionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionConfiguration object:

  $service_obj->Method(Att1 => { ChildPolicy => $value, ..., TaskStartToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildPolicy

=head1 DESCRIPTION

The configuration settings for a workflow execution including timeout
values, tasklist etc. These configuration settings are determined from
the defaults specified when registering the workflow type and those
specified when starting the workflow execution.

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



=head2 B<REQUIRED> ExecutionStartToCloseTimeout => Str

  The total duration for this workflow execution.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 LambdaRole => Str

  The IAM role attached to the child workflow execution.


=head2 B<REQUIRED> TaskList => SimpleWorkflow_TaskList

  The task list used for the decision tasks generated for this workflow
execution.


=head2 TaskPriority => Str

  The priority assigned to decision tasks for this workflow execution.
Valid values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<Amazon SWF Developer Guide>.


=head2 B<REQUIRED> TaskStartToCloseTimeout => Str

  The maximum duration allowed for decision tasks for this workflow
execution.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

