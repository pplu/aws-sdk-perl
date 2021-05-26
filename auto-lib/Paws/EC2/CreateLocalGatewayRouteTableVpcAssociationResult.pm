
package Paws::EC2::CreateLocalGatewayRouteTableVpcAssociationResult;
  use Moose;
  has LocalGatewayRouteTableVpcAssociation => (is => 'ro', isa => 'Paws::EC2::LocalGatewayRouteTableVpcAssociation', request_name => 'localGatewayRouteTableVpcAssociation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLocalGatewayRouteTableVpcAssociationResult

=head1 ATTRIBUTES


=head2 LocalGatewayRouteTableVpcAssociation => L<Paws::EC2::LocalGatewayRouteTableVpcAssociation>

Information about the association.


=head2 _request_id => Str


=cut

