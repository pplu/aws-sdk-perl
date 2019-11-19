# Generated from json/callresult_class.tt

package Paws::Route53Resolver::AssociateResolverEndpointIpAddressResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_ResolverEndpoint/;
  has ResolverEndpoint => (is => 'ro', isa => Route53Resolver_ResolverEndpoint);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResolverEndpoint' => {
                                       'type' => 'Route53Resolver_ResolverEndpoint',
                                       'class' => 'Paws::Route53Resolver::ResolverEndpoint'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::AssociateResolverEndpointIpAddressResponse

=head1 ATTRIBUTES


=head2 ResolverEndpoint => Route53Resolver_ResolverEndpoint

The response to an C<AssociateResolverEndpointIpAddress> request.


=head2 _request_id => Str


=cut

1;