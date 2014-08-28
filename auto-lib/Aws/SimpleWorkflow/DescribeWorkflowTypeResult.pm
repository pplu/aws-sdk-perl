
package Aws::SimpleWorkflow::DescribeWorkflowTypeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeInfo', required => 1);

}
1;
