
package Paws::EMR::DescribeJobFlowsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has JobFlows => (is => 'ro', isa => 'ArrayRef[Paws::EMR::JobFlowDetail]');

}
1;