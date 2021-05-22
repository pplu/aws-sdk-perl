
package Paws::AppMesh::DescribeGatewayRouteOutput;
  use Moose;
  has GatewayRoute => (is => 'ro', isa => 'Paws::AppMesh::GatewayRouteData', traits => ['NameInRequest'], request_name => 'gatewayRoute', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GatewayRoute');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DescribeGatewayRouteOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayRoute => L<Paws::AppMesh::GatewayRouteData>

The full description of your gateway route.


=head2 _request_id => Str


=cut

