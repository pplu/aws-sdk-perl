
package Paws::ELBv2::DescribeLoadBalancersOutput;
  use Moose;
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::LoadBalancer]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeLoadBalancersOutput

=head1 ATTRIBUTES


=head2 LoadBalancers => ArrayRef[L<Paws::ELBv2::LoadBalancer>]

Information about the load balancers.


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 _request_id => Str


=cut

