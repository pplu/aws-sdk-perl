
package Paws::Route53Resolver::CreateResolverEndpointResponse;
  use Moose;
  has ResolverEndpoint => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateResolverEndpointResponse

=head1 ATTRIBUTES


=head2 ResolverEndpoint => L<Paws::Route53Resolver::ResolverEndpoint>

Information about the C<CreateResolverEndpoint> request, including the
status of the request.


=head2 _request_id => Str


=cut

1;