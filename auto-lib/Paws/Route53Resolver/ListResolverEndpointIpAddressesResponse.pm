
package Paws::Route53Resolver::ListResolverEndpointIpAddressesResponse;
  use Moose;
  has IpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::IpAddressResponse]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverEndpointIpAddressesResponse

=head1 ATTRIBUTES


=head2 IpAddresses => ArrayRef[L<Paws::Route53Resolver::IpAddressResponse>]

The IP addresses that DNS queries pass through on their way to your
network (outbound endpoint) or on the way to Resolver (inbound
endpoint).


=head2 MaxResults => Int

The value that you specified for C<MaxResults> in the request.


=head2 NextToken => Str

If the specified endpoint has more than C<MaxResults> IP addresses, you
can submit another C<ListResolverEndpointIpAddresses> request to get
the next group of IP addresses. In the next request, specify the value
of C<NextToken> from the previous response.


=head2 _request_id => Str


=cut

1;