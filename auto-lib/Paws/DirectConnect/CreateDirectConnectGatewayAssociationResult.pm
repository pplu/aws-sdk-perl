
package Paws::DirectConnect::CreateDirectConnectGatewayAssociationResult;
  use Moose;
  has DirectConnectGatewayAssociation => (is => 'ro', isa => 'Paws::DirectConnect::DirectConnectGatewayAssociation', traits => ['NameInRequest'], request_name => 'directConnectGatewayAssociation' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateDirectConnectGatewayAssociationResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociation => L<Paws::DirectConnect::DirectConnectGatewayAssociation>

The association to be created.


=head2 _request_id => Str


=cut

1;