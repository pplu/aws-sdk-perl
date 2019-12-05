
package Paws::EC2::DeleteLocalGatewayRouteResult;
  use Moose;
  has Route => (is => 'ro', isa => 'Paws::EC2::LocalGatewayRoute', request_name => 'route', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteLocalGatewayRouteResult

=head1 ATTRIBUTES


=head2 Route => L<Paws::EC2::LocalGatewayRoute>

Information about the route.


=head2 _request_id => Str


=cut

