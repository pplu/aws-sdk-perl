
package Paws::Lightsail::GetLoadBalancerResult;
  use Moose;
  has LoadBalancer => (is => 'ro', isa => 'Paws::Lightsail::LoadBalancer', traits => ['NameInRequest'], request_name => 'loadBalancer' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancerResult

=head1 ATTRIBUTES


=head2 LoadBalancer => L<Paws::Lightsail::LoadBalancer>

An object containing information about your load balancer.


=head2 _request_id => Str


=cut

1;