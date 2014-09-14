
package Aws::OpsWorks::DescribeStackSummaryResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackSummary => (is => 'ro', isa => 'Aws::OpsWorks::StackSummary');

}
1;
