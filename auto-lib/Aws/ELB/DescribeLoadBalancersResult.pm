
package Aws::ELB::DescribeLoadBalancersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBalancerDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::LoadBalancerDescription]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
1;