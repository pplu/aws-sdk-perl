
package Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

}
1;
