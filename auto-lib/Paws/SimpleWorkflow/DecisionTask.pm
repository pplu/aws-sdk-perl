
package Paws::SimpleWorkflow::DecisionTask;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::HistoryEvent]', traits => ['NameInRequest'], request_name => 'events' , required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has PreviousStartedEventId => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'previousStartedEventId' );
  has StartedEventId => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'startedEventId' , required => 1);
  has TaskToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskToken' , required => 1);
  has WorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', traits => ['NameInRequest'], request_name => 'workflowExecution' , required => 1);
  has WorkflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', traits => ['NameInRequest'], request_name => 'workflowType' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DecisionTask

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[L<Paws::SimpleWorkflow::HistoryEvent>]

A paginated list of history events of the workflow execution. The
decider uses this during the processing of the decision task.


=head2 NextPageToken => Str

If a C<NextPageToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextPageToken>. Keep all other
arguments unchanged.

The configured C<maximumPageSize> determines how many results can be
returned in a single call.


=head2 PreviousStartedEventId => Int

The ID of the DecisionTaskStarted event of the previous decision task
of this workflow execution that was processed by the decider. This can
be used to determine the events in the history new since the last
decision task received by the decider.


=head2 B<REQUIRED> StartedEventId => Int

The ID of the C<DecisionTaskStarted> event recorded in the history.


=head2 B<REQUIRED> TaskToken => Str

The opaque string used as a handle on the task. This token is used by
workers to communicate progress and response information back to the
system about the task.


=head2 B<REQUIRED> WorkflowExecution => L<Paws::SimpleWorkflow::WorkflowExecution>

The workflow execution for which this decision task was created.


=head2 B<REQUIRED> WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>

The type of the workflow execution for which this decision task was
created.


=head2 _request_id => Str


=cut

1;