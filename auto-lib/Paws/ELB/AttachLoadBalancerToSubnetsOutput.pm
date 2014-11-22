
package Paws::ELB::AttachLoadBalancerToSubnetsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;