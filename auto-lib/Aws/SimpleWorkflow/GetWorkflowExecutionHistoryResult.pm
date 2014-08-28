
package Aws::SimpleWorkflow::GetWorkflowExecutionHistoryResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
1;
