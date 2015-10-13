package Paws::SimpleWorkflow::WorkflowExecutionConfiguration;
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
  has lambdaRole => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', required => 1);
  has taskPriority => (is => 'ro', isa => 'Str');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str', required => 1);
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

  $service_obj->Method(Att1 => { childPolicy => $value, ..., taskStartToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->childPolicy

=head1 DESCRIPTION

The configuration settings for a workflow execution including timeout
values, tasklist etc. These configuration settings are determined from
the defaults specified when registering the workflow type and those
specified when starting the workflow execution.

=head1 ATTRIBUTES

=head2 B<REQUIRED> childPolicy => Str

  The policy to use for the child workflow executions if this workflow
execution is terminated, by calling the TerminateWorkflowExecution
action explicitly or due to an expired timeout.

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

=head2 B<REQUIRED> executionStartToCloseTimeout => Str

  The total duration for this workflow execution.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

=head2 lambdaRole => Str

  The IAM role used by this workflow execution when invoking AWS Lambda
functions.

=head2 B<REQUIRED> taskList => L<Paws::SimpleWorkflow::TaskList>

  The task list used for the decision tasks generated for this workflow
execution.

=head2 taskPriority => Str

  The priority assigned to decision tasks for this workflow execution.
Valid values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority in the I<Amazon Simple Workflow Developer Guide>.

=head2 B<REQUIRED> taskStartToCloseTimeout => Str

  The maximum duration allowed for decision tasks for this workflow
execution.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

