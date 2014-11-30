
package Paws::SimpleWorkflow::DecisionTask {
  use Moose;
  with 'Paws::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');
  has previousStartedEventId => (is => 'ro', isa => 'Num');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', required => 1);

}

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DecisionTask

=head1 ATTRIBUTES

=head2 B<REQUIRED> events => ArrayRef[Paws::SimpleWorkflow::HistoryEvent]

  

A paginated list of history events of the workflow execution. The
decider uses this during the processing of the decision task.









=head2 nextPageToken => Str

  

Returns a value if the results are paginated. To get the next page of
results, repeat the request specifying this token and all other
arguments unchanged.









=head2 previousStartedEventId => Num

  

The id of the DecisionTaskStarted event of the previous decision task
of this workflow execution that was processed by the decider. This can
be used to determine the events in the history new since the last
decision task received by the decider.









=head2 B<REQUIRED> startedEventId => Num

  

The id of the C<DecisionTaskStarted> event recorded in the history.









=head2 B<REQUIRED> taskToken => Str

  

The opaque string used as a handle on the task. This token is used by
workers to communicate progress and response information back to the
system about the task.









=head2 B<REQUIRED> workflowExecution => Paws::SimpleWorkflow::WorkflowExecution

  

The workflow execution for which this decision task was created.









=head2 B<REQUIRED> workflowType => Paws::SimpleWorkflow::WorkflowType

  

The type of the workflow execution for which this decision task was
created.











=cut

1;