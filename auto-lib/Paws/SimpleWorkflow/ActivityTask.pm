# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::ActivityTask;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowExecution SimpleWorkflow_ActivityType/;
  has ActivityId => (is => 'ro', isa => Str, required => 1);
  has ActivityType => (is => 'ro', isa => SimpleWorkflow_ActivityType, required => 1);
  has Input => (is => 'ro', isa => Str);
  has StartedEventId => (is => 'ro', isa => Int, required => 1);
  has TaskToken => (is => 'ro', isa => Str, required => 1);
  has WorkflowExecution => (is => 'ro', isa => SimpleWorkflow_WorkflowExecution, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartedEventId' => {
                                     'type' => 'Int'
                                   },
               'ActivityType' => {
                                   'class' => 'Paws::SimpleWorkflow::ActivityType',
                                   'type' => 'SimpleWorkflow_ActivityType'
                                 },
               'ActivityId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WorkflowExecution' => {
                                        'class' => 'Paws::SimpleWorkflow::WorkflowExecution',
                                        'type' => 'SimpleWorkflow_WorkflowExecution'
                                      },
               'Input' => {
                            'type' => 'Str'
                          },
               'TaskToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'StartedEventId' => 'startedEventId',
                       'ActivityType' => 'activityType',
                       'ActivityId' => 'activityId',
                       'WorkflowExecution' => 'workflowExecution',
                       'Input' => 'input',
                       'TaskToken' => 'taskToken'
                     },
  'IsRequired' => {
                    'StartedEventId' => 1,
                    'ActivityType' => 1,
                    'ActivityId' => 1,
                    'WorkflowExecution' => 1,
                    'TaskToken' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTask

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityId => Str

The unique ID of the task.


=head2 B<REQUIRED> ActivityType => SimpleWorkflow_ActivityType

The type of this activity task.


=head2 Input => Str

The inputs provided when the activity task was scheduled. The form of
the input is user defined and should be meaningful to the activity
implementation.


=head2 B<REQUIRED> StartedEventId => Int

The ID of the C<ActivityTaskStarted> event recorded in the history.


=head2 B<REQUIRED> TaskToken => Str

The opaque string used as a handle on the task. This token is used by
workers to communicate progress and response information back to the
system about the task.


=head2 B<REQUIRED> WorkflowExecution => SimpleWorkflow_WorkflowExecution

The workflow execution that started this activity task.


=head2 _request_id => Str


=cut

1;