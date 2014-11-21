
package Aws::ELB::DetachLoadBalancerFromSubnetsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;