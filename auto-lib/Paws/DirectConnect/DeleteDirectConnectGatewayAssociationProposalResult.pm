
package Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposalResult;
  use Moose;
  has DirectConnectGatewayAssociationProposal => (is => 'ro', isa => 'Paws::DirectConnect::DirectConnectGatewayAssociationProposal', traits => ['NameInRequest'], request_name => 'directConnectGatewayAssociationProposal' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposalResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociationProposal => L<Paws::DirectConnect::DirectConnectGatewayAssociationProposal>

The ID of the associated gateway.


=head2 _request_id => Str


=cut

1;