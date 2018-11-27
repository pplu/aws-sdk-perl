
package Paws::EC2::DisableTransitGatewayRouteTablePropagationResult;
  use Moose;
  has Propagation => (is => 'ro', isa => 'Paws::EC2::TransitGatewayPropagation', request_name => 'propagation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableTransitGatewayRouteTablePropagationResult

=head1 ATTRIBUTES


=head2 Propagation => L<Paws::EC2::TransitGatewayPropagation>

Information about route propagation.


=head2 _request_id => Str


=cut

