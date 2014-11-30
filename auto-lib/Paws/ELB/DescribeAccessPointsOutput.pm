
package Paws::ELB::DescribeAccessPointsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has LoadBalancerDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::LoadBalancerDescription]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeAccessPointsOutput

=head1 ATTRIBUTES

=head2 LoadBalancerDescriptions => ArrayRef[Paws::ELB::LoadBalancerDescription]

  

A list of load balancer description structures.









=head2 NextMarker => Str

  

Specifies the value of next marker if the request returned more than
one page of results.











=cut

