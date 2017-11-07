package Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes;
  use Moose;
  has ChildPolicy => (is => 'ro', isa => 'Str', request_name => 'childPolicy', traits => ['NameInRequest'], required => 1);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => 'Int', request_name => 'decisionTaskCompletedEventId', traits => ['NameInRequest'], required => 1);
  has ExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'executionStartToCloseTimeout', traits => ['NameInRequest']);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has LambdaRole => (is => 'ro', isa => 'Str', request_name => 'lambdaRole', traits => ['NameInRequest']);
  has NewExecutionRunId => (is => 'ro', isa => 'Str', request_name => 'newExecutionRunId', traits => ['NameInRequest'], required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'tagList', traits => ['NameInRequest']);
  has TaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', request_name => 'taskList', traits => ['NameInRequest'], required => 1);
  has TaskPriority => (is => 'ro', isa => 'Str', request_name => 'taskPriority', traits => ['NameInRequest']);
  has TaskStartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'taskStartToCloseTimeout', traits => ['NameInRequest']);
  has WorkflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', request_name => 'workflowType', traits => ['NameInRequest'], required => 1);
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


=head2 B<REQUIRED> TaskList => L<Paws::SimpleWorkflow::TaskList>

  The task list to use for the decisions of the new (continued) workflow
execution.


=head2 TaskPriority => Str

  The priority of the task to use for the decisions of the new
(continued) workflow execution.


=head2 TaskStartToCloseTimeout => Str

  The maximum duration of decision tasks for the new workflow execution.

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

