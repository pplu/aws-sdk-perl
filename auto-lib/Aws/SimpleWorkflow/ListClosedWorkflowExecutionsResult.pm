
package Aws::SimpleWorkflow::ListClosedWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has executionInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
1;
