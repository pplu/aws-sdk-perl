package Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes;
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has lambdaRole => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList');
  has taskPriority => (is => 'ro', isa => 'Str');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowTypeVersion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes object:

  $service_obj->Method(Att1 => { childPolicy => $value, ..., workflowTypeVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->childPolicy

=head1 ATTRIBUTES

=head2 childPolicy => Str

  

If set, specifies the policy to use for the child workflow executions
of the new execution if it is terminated by calling the
TerminateWorkflowExecution action explicitly or due to an expired
timeout. This policy overrides the default child policy specified when
registering the workflow type using RegisterWorkflowType.

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

A child policy for this workflow execution must be specified either as
a default for the workflow type or through this parameter. If neither
this parameter is set nor a default child policy was specified at
registration time then a fault will be returned.










=head2 executionStartToCloseTimeout => Str

  

If set, specifies the total duration for this workflow execution. This
overrides the C<defaultExecutionStartToCloseTimeout> specified when
registering the workflow type.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

An execution start-to-close timeout for this workflow execution must be
specified either as a default for the workflow type or through this
field. If neither this field is set nor a default execution
start-to-close timeout was specified at registration time then a fault
will be returned.










=head2 input => Str

  

The input provided to the new workflow execution.










=head2 lambdaRole => Str

  

The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda
functions.

In order for this workflow execution to invoke AWS Lambda functions, an
appropriate IAM role must be specified either as a default for the
workflow type or through this field.










=head2 tagList => ArrayRef[Str]

  

The list of tags to associate with the new workflow execution. A
maximum of 5 tags can be specified. You can list workflow executions
with a specific tag by calling ListOpenWorkflowExecutions or
ListClosedWorkflowExecutions and specifying a TagFilter.










=head2 taskList => Paws::SimpleWorkflow::TaskList

  

=head2 taskPriority => Str

  

I<Optional.> The task priority that, if set, specifies the priority for
the decision tasks for this workflow execution. This overrides the
defaultTaskPriority specified when registering the workflow type. Valid
values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority in the I<Amazon Simple Workflow Developer Guide>.










=head2 taskStartToCloseTimeout => Str

  

Specifies the maximum duration of decision tasks for the new workflow
execution. This parameter overrides the
C<defaultTaskStartToCloseTimout> specified when registering the
workflow type using RegisterWorkflowType.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

A task start-to-close timeout for the new workflow execution must be
specified either as a default for the workflow type or through this
parameter. If neither this parameter is set nor a default task
start-to-close timeout was specified at registration time then a fault
will be returned.










=head2 workflowTypeVersion => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

