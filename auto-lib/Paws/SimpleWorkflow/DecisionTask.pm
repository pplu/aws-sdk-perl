# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::DecisionTask;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowType SimpleWorkflow_HistoryEvent SimpleWorkflow_WorkflowExecution/;
  has Events => (is => 'ro', isa => ArrayRef[SimpleWorkflow_HistoryEvent], required => 1);
  has NextPageToken => (is => 'ro', isa => Str);
  has PreviousStartedEventId => (is => 'ro', isa => Int);
  has StartedEventId => (is => 'ro', isa => Int, required => 1);
  has TaskToken => (is => 'ro', isa => Str, required => 1);
  has WorkflowExecution => (is => 'ro', isa => SimpleWorkflow_WorkflowExecution, required => 1);
  has WorkflowType => (is => 'ro', isa => SimpleWorkflow_WorkflowType, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartedEventId' => {
                                     'type' => 'Int'
                                   },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'PreviousStartedEventId' => {
                                             'type' => 'Int'
                                           },
               'TaskToken' => {
                                'type' => 'Str'
                              },
               'WorkflowType' => {
                                   'class' => 'Paws::SimpleWorkflow::WorkflowType',
                                   'type' => 'SimpleWorkflow_WorkflowType'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Events' => {
                             'class' => 'Paws::SimpleWorkflow::HistoryEvent',
                             'type' => 'ArrayRef[SimpleWorkflow_HistoryEvent]'
                           },
               'WorkflowExecution' => {
                                        'class' => 'Paws::SimpleWorkflow::WorkflowExecution',
                                        'type' => 'SimpleWorkflow_WorkflowExecution'
                                      }
             },
  'NameInRequest' => {
                       'StartedEventId' => 'startedEventId',
                       'WorkflowType' => 'workflowType',
                       'NextPageToken' => 'nextPageToken',
                       'Events' => 'events',
                       'PreviousStartedEventId' => 'previousStartedEventId',
                       'WorkflowExecution' => 'workflowExecution',
                       'TaskToken' => 'taskToken'
                     },
  'IsRequired' => {
                    'StartedEventId' => 1,
                    'WorkflowType' => 1,
                    'Events' => 1,
                    'WorkflowExecution' => 1,
                    'TaskToken' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DecisionTask

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[SimpleWorkflow_HistoryEvent]

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


=head2 B<REQUIRED> WorkflowExecution => SimpleWorkflow_WorkflowExecution

The workflow execution for which this decision task was created.


=head2 B<REQUIRED> WorkflowType => SimpleWorkflow_WorkflowType

The type of the workflow execution for which this decision task was
created.


=head2 _request_id => Str


=cut

1;