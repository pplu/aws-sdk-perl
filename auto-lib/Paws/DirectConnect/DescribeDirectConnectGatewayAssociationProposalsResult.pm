
package Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposalsResult;
  use Moose;
  has DirectConnectGatewayAssociationProposals => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::DirectConnectGatewayAssociationProposal]', traits => ['NameInRequest'], request_name => 'directConnectGatewayAssociationProposals' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposalsResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociationProposals => ArrayRef[L<Paws::DirectConnect::DirectConnectGatewayAssociationProposal>]

Describes the Direct Connect gateway association proposals.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;