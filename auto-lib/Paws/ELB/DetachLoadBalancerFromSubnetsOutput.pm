
package Paws::ELB::DetachLoadBalancerFromSubnetsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;