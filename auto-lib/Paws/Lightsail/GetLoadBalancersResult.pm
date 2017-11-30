
package Paws::Lightsail::GetLoadBalancersResult;
  use Moose;
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::LoadBalancer]', traits => ['NameInRequest'], request_name => 'loadBalancers' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancersResult

=head1 ATTRIBUTES


=head2 LoadBalancers => ArrayRef[L<Paws::Lightsail::LoadBalancer>]

An array of LoadBalancer objects describing your load balancers.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your
GetLoadBalancers request.


=head2 _request_id => Str


=cut

1;