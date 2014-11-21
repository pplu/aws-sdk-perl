
package Aws::ELB::AttachLoadBalancerToSubnetsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;