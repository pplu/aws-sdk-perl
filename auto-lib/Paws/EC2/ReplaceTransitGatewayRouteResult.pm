
package Paws::EC2::ReplaceTransitGatewayRouteResult;
  use Moose;
  has Route => (is => 'ro', isa => 'Paws::EC2::TransitGatewayRoute', request_name => 'route', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceTransitGatewayRouteResult

=head1 ATTRIBUTES


=head2 Route => L<Paws::EC2::TransitGatewayRoute>

Information about the modified route.


=head2 _request_id => Str


=cut

