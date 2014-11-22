
package Paws::SimpleWorkflow::ActivityTask {
  use Moose;
  with 'Paws::API::ResultParser';
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', required => 1);

}
1;