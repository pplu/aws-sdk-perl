
package Paws::SimpleWorkflow::WorkflowExecutionDetail;
  use Moose;
  has ExecutionConfiguration => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionConfiguration', traits => ['NameInRequest'], request_name => 'executionConfiguration' , required => 1);
  has ExecutionInfo => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionInfo', traits => ['NameInRequest'], request_name => 'executionInfo' , required => 1);
  has LatestActivityTaskTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'latestActivityTaskTimestamp' );
  has LatestExecutionContext => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'latestExecutionContext' );
  has OpenCounts => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionOpenCounts', traits => ['NameInRequest'], request_name => 'openCounts' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionDetail

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionConfiguration => L<Paws::SimpleWorkflow::WorkflowExecutionConfiguration>

The configuration settings for this workflow execution including
timeout values, tasklist etc.


=head2 B<REQUIRED> ExecutionInfo => L<Paws::SimpleWorkflow::WorkflowExecutionInfo>

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


=head2 B<REQUIRED> OpenCounts => L<Paws::SimpleWorkflow::WorkflowExecutionOpenCounts>

The number of tasks for this workflow execution. This includes open and
closed tasks of all types.


=head2 _request_id => Str


=cut

1;