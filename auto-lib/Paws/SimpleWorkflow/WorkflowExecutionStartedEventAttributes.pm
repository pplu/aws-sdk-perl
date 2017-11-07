package Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes;
  use Moose;
  has ChildPolicy => (is => 'ro', isa => 'Str', request_name => 'childPolicy', traits => ['NameInRequest'], required => 1);
  has ContinuedExecutionRunId => (is => 'ro', isa => 'Str', request_name => 'continuedExecutionRunId', traits => ['NameInRequest']);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'executionStartToCloseTimeout', traits => ['NameInRequest']);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has LambdaRole => (is => 'ro', isa => 'Str', request_name => 'lambdaRole', traits => ['NameInRequest']);
  has ParentInitiatedEventId => (is => 'ro', isa => 'Int', request_name => 'parentInitiatedEventId', traits => ['NameInRequest']);
  has ParentWorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', request_name => 'parentWorkflowExecution', traits => ['NameInRequest']);
  has TagList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'tagList', traits => ['NameInRequest']);
  has TaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', request_name => 'taskList', traits => ['NameInRequest'], required => 1);
  has TaskPriority => (is => 'ro', isa => 'Str', request_name => 'taskPriority', traits => ['NameInRequest']);
  has TaskStartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'taskStartToCloseTimeout', traits => ['NameInRequest']);
  has WorkflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', request_name => 'workflowType', traits => ['NameInRequest'], required => 1);
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


=head2 ParentWorkflowExecution => L<Paws::SimpleWorkflow::WorkflowExecution>

  The source workflow execution that started this workflow execution. The
member isn't set if the workflow execution was not started by a
workflow.


=head2 TagList => ArrayRef[Str|Undef]

  The list of tags associated with this workflow execution. An execution
can have up to 5 tags.


=head2 B<REQUIRED> TaskList => L<Paws::SimpleWorkflow::TaskList>

  The name of the task list for scheduling the decision tasks for this
workflow execution.


=head2 TaskPriority => Str

  The priority of the decision tasks in the workflow execution.


=head2 TaskStartToCloseTimeout => Str

  The maximum duration of decision tasks for this workflow type.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 B<REQUIRED> WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>

  The workflow type of this execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

