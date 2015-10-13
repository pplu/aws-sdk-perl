package Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes;
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Int', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has lambdaRole => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', required => 1);
  has taskPriority => (is => 'ro', isa => 'Str');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', required => 1);
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

  $service_obj->Method(Att1 => { childPolicy => $value, ..., workflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->childPolicy

=head1 DESCRIPTION

Provides details of the C<StartChildWorkflowExecutionInitiated> event.

=head1 ATTRIBUTES

=head2 B<REQUIRED> childPolicy => Str

  The policy to use for the child workflow executions if this execution
gets terminated by explicitly calling the TerminateWorkflowExecution
action or due to an expired timeout.

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


=head2 control => Str

  I<Optional.> Data attached to the event that can be used by the decider
in subsequent decision tasks. This data is not sent to the activity.

=head2 B<REQUIRED> decisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<StartChildWorkflowExecution>
decision to request this child workflow execution. This information can
be useful for diagnosing problems by tracing back the cause of events.

=head2 executionStartToCloseTimeout => Str

  The maximum duration for the child workflow execution. If the workflow
execution is not closed within this duration, it will be timed out and
force terminated.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

=head2 input => Str

  The inputs provided to the child workflow execution (if any).

=head2 lambdaRole => Str

  The IAM role attached to this workflow execution to use when invoking
AWS Lambda functions.

=head2 tagList => ArrayRef[Str]

  The list of tags to associated with the child workflow execution.

=head2 B<REQUIRED> taskList => L<Paws::SimpleWorkflow::TaskList>

  The name of the task list used for the decision tasks of the child
workflow execution.

=head2 taskPriority => Str

  I<Optional.> The priority assigned for the decision tasks for this
workflow execution. Valid values are integers that range from Java's
C<Integer.MIN_VALUE> (-2147483648) to C<Integer.MAX_VALUE>
(2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see Setting Task
Priority in the I<Amazon Simple Workflow Developer Guide>.

=head2 taskStartToCloseTimeout => Str

  The maximum duration allowed for the decision tasks for this workflow
execution.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

=head2 B<REQUIRED> workflowId => Str

  The C<workflowId> of the child workflow execution.

=head2 B<REQUIRED> workflowType => L<Paws::SimpleWorkflow::WorkflowType>

  The type of the child workflow execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

