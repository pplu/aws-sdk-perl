
package Paws::ELB::DescribeAccessPointsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has LoadBalancerDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::LoadBalancerDescription]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
1;