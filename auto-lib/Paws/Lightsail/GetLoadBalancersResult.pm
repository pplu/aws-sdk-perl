
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

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetLoadBalancers>
request and specify the next page token using the C<pageToken>
parameter.


=head2 _request_id => Str


=cut

1;