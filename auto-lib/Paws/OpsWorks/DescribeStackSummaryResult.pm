
package Paws::OpsWorks::DescribeStackSummaryResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has StackSummary => (is => 'ro', isa => 'Paws::OpsWorks::StackSummary');

}
1;