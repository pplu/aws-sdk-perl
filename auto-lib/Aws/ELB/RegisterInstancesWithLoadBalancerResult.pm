
package Aws::ELB::RegisterInstancesWithLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');

}
1;