# Generated from json/callresult_class.tt

package Paws::Route53Resolver::ListResolverEndpointIpAddressesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_IpAddressResponse/;
  has IpAddresses => (is => 'ro', isa => ArrayRef[Route53Resolver_IpAddressResponse]);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'IpAddresses' => {
                                  'class' => 'Paws::Route53Resolver::IpAddressResponse',
                                  'type' => 'ArrayRef[Route53Resolver_IpAddressResponse]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverEndpointIpAddressesResponse

=head1 ATTRIBUTES


=head2 IpAddresses => ArrayRef[Route53Resolver_IpAddressResponse]

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