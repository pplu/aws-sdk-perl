
package Aws::OpsWorks::DescribeStacksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Stacks => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Stack]');

}
1;
