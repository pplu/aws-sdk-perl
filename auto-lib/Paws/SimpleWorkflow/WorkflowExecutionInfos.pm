
package Paws::SimpleWorkflow::WorkflowExecutionInfos {
  use Moose;
  with 'Paws::API::ResultParser';
  has executionInfos => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
1;