
package Aws::EMR::DescribeJobFlowsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has JobFlows => (is => 'ro', isa => 'ArrayRef[Aws::EMR::JobFlowDetail]');

}
1;
