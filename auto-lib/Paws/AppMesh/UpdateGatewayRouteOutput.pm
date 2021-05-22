
package Paws::AppMesh::UpdateGatewayRouteOutput;
  use Moose;
  has GatewayRoute => (is => 'ro', isa => 'Paws::AppMesh::GatewayRouteData', traits => ['NameInRequest'], request_name => 'gatewayRoute', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GatewayRoute');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateGatewayRouteOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayRoute => L<Paws::AppMesh::GatewayRouteData>

A full description of the gateway route that was updated.


=head2 _request_id => Str


=cut

