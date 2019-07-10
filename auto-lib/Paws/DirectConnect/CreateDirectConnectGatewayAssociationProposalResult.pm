
package Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposalResult;
  use Moose;
  has DirectConnectGatewayAssociationProposal => (is => 'ro', isa => 'Paws::DirectConnect::DirectConnectGatewayAssociationProposal', traits => ['NameInRequest'], request_name => 'directConnectGatewayAssociationProposal' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposalResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociationProposal => L<Paws::DirectConnect::DirectConnectGatewayAssociationProposal>

Information about the Direct Connect gateway proposal.


=head2 _request_id => Str


=cut

1;