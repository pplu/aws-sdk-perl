
package Paws::EC2::CreateTransitGatewayRouteTableResult;
  use Moose;
  has TransitGatewayRouteTable => (is => 'ro', isa => 'Paws::EC2::TransitGatewayRouteTable', request_name => 'transitGatewayRouteTable', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayRouteTableResult

=head1 ATTRIBUTES


=head2 TransitGatewayRouteTable => L<Paws::EC2::TransitGatewayRouteTable>

Information about the transit gateway route table.


=head2 _request_id => Str


=cut

