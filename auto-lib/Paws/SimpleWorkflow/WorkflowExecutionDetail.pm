# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::WorkflowExecutionDetail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowExecutionInfo SimpleWorkflow_WorkflowExecutionConfiguration SimpleWorkflow_WorkflowExecutionOpenCounts/;
  has ExecutionConfiguration => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionConfiguration, required => 1);
  has ExecutionInfo => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionInfo, required => 1);
  has LatestActivityTaskTimestamp => (is => 'ro', isa => Str);
  has LatestExecutionContext => (is => 'ro', isa => Str);
  has OpenCounts => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionOpenCounts, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExecutionInfo' => {
                                    'type' => 'SimpleWorkflow_WorkflowExecutionInfo',
                                    'class' => 'Paws::SimpleWorkflow::WorkflowExecutionInfo'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExecutionConfiguration' => {
                                             'class' => 'Paws::SimpleWorkflow::WorkflowExecutionConfiguration',
                                             'type' => 'SimpleWorkflow_WorkflowExecutionConfiguration'
                                           },
               'OpenCounts' => {
                                 'class' => 'Paws::SimpleWorkflow::WorkflowExecutionOpenCounts',
                                 'type' => 'SimpleWorkflow_WorkflowExecutionOpenCounts'
                               },
               'LatestExecutionContext' => {
                                             'type' => 'Str'
                                           },
               'LatestActivityTaskTimestamp' => {
                                                  'type' => 'Str'
                                                }
             },
  'NameInRequest' => {
                       'ExecutionInfo' => 'executionInfo',
                       'ExecutionConfiguration' => 'executionConfiguration',
                       'OpenCounts' => 'openCounts',
                       'LatestExecutionContext' => 'latestExecutionContext',
                       'LatestActivityTaskTimestamp' => 'latestActivityTaskTimestamp'
                     },
  'IsRequired' => {
                    'OpenCounts' => 1,
                    'ExecutionConfiguration' => 1,
                    'ExecutionInfo' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionDetail

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionConfiguration => SimpleWorkflow_WorkflowExecutionConfiguration

The configuration settings for this workflow execution including
timeout values, tasklist etc.


=head2 B<REQUIRED> ExecutionInfo => SimpleWorkflow_WorkflowExecutionInfo

Information about the workflow execution.


=head2 LatestActivityTaskTimestamp => Str

The time when the last activity task was scheduled for this workflow
execution. You can use this information to determine if the workflow
has not made progress for an unusually long period of time and might
require a corrective action.


=head2 LatestExecutionContext => Str

The latest executionContext provided by the decider for this workflow
execution. A decider can provide an executionContext (a free-form
string) when closing a decision task using
RespondDecisionTaskCompleted.


=head2 B<REQUIRED> OpenCounts => SimpleWorkflow_WorkflowExecutionOpenCounts

The number of tasks for this workflow execution. This includes open and
closed tasks of all types.


=head2 _request_id => Str


=cut

1;