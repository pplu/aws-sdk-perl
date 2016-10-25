package Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes;
  use Moose;
  has ChildPolicy => (is => 'ro', isa => 'Str', xmlname => 'childPolicy', request_name => 'childPolicy', traits => ['Unwrapped','NameInRequest'], required => 1);
  has ContinuedExecutionRunId => (is => 'ro', isa => 'Str', xmlname => 'continuedExecutionRunId', request_name => 'continuedExecutionRunId', traits => ['Unwrapped','NameInRequest']);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str', xmlname => 'executionStartToCloseTimeout', request_name => 'executionStartToCloseTimeout', traits => ['Unwrapped','NameInRequest']);
  has Input => (is => 'ro', isa => 'Str', xmlname => 'input', request_name => 'input', traits => ['Unwrapped','NameInRequest']);
  has LambdaRole => (is => 'ro', isa => 'Str', xmlname => 'lambdaRole', request_name => 'lambdaRole', traits => ['Unwrapped','NameInRequest']);
  has ParentInitiatedEventId => (is => 'ro', isa => 'Int', xmlname => 'parentInitiatedEventId', request_name => 'parentInitiatedEventId', traits => ['Unwrapped','NameInRequest']);
  has ParentWorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', xmlname => 'parentWorkflowExecution', request_name => 'parentWorkflowExecution', traits => ['Unwrapped','NameInRequest']);
  has TagList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'tagList', request_name => 'tagList', traits => ['Unwrapped','NameInRequest']);
  has TaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', xmlname => 'taskList', request_name => 'taskList', traits => ['Unwrapped','NameInRequest'], required => 1);
  has TaskPriority => (is => 'ro', isa => 'Str', xmlname => 'taskPriority', request_name => 'taskPriority', traits => ['Unwrapped','NameInRequest']);
  has TaskStartToCloseTimeout => (is => 'ro', isa => 'Str', xmlname => 'taskStartToCloseTimeout', request_name => 'taskStartToCloseTimeout', traits => ['Unwrapped','NameInRequest']);
  has WorkflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', xmlname => 'workflowType', request_name => 'workflowType', traits => ['Unwrapped','NameInRequest'], required => 1);
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

=item * B<TERMINATE:> the child executions will be terminated.

=item * B<REQUEST_CANCEL:> a request to cancel will be attempted for
each child execution by recording a C<WorkflowExecutionCancelRequested>
event in its history. It is up to the decider to take appropriate
actions when it receives an execution history with this event.

=item * B<ABANDON:> no action will be taken. The child executions will
continue to run.

=back



=head2 ContinuedExecutionRunId => Str

  If this workflow execution was started due to a
C<ContinueAsNewWorkflowExecution> decision, then it contains the
C<runId> of the previous workflow execution that was closed and
continued as this execution.


=head2 ExecutionStartToCloseTimeout => Str

  The maximum duration for this workflow execution.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.


=head2 Input => Str

  The input provided to the workflow execution (if any).


=head2 LambdaRole => Str

  The IAM role attached to this workflow execution to use when invoking
AWS Lambda functions.


=head2 ParentInitiatedEventId => Int

  The ID of the C<StartChildWorkflowExecutionInitiated> event
corresponding to the C<StartChildWorkflowExecution> decision to start
this workflow execution. The source event with this ID can be found in
the history of the source workflow execution. This information can be
useful for diagnosing problems by tracing back the chain of events
leading up to this event.


=head2 ParentWorkflowExecution => L<Paws::SimpleWorkflow::WorkflowExecution>

  The source workflow execution that started this workflow execution. The
member is not set if the workflow execution was not started by a
workflow.


=head2 TagList => ArrayRef[Str|Undef]

  The list of tags associated with this workflow execution. An execution
can have up to 5 tags.


=head2 B<REQUIRED> TaskList => L<Paws::SimpleWorkflow::TaskList>

  The name of the task list for scheduling the decision tasks for this
workflow execution.


=head2 TaskPriority => Str

  


=head2 TaskStartToCloseTimeout => Str

  The maximum duration of decision tasks for this workflow type.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.


=head2 B<REQUIRED> WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>

  The workflow type of this execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

