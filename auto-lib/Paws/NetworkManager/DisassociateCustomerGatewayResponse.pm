
package Paws::NetworkManager::DisassociateCustomerGatewayResponse;
  use Moose;
  has CustomerGatewayAssociation => (is => 'ro', isa => 'Paws::NetworkManager::CustomerGatewayAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DisassociateCustomerGatewayResponse

=head1 ATTRIBUTES


=head2 CustomerGatewayAssociation => L<Paws::NetworkManager::CustomerGatewayAssociation>

Information about the customer gateway association.


=head2 _request_id => Str


=cut

