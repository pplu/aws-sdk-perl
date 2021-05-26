
package Paws::NetworkManager::AssociateCustomerGatewayResponse;
  use Moose;
  has CustomerGatewayAssociation => (is => 'ro', isa => 'Paws::NetworkManager::CustomerGatewayAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::AssociateCustomerGatewayResponse

=head1 ATTRIBUTES


=head2 CustomerGatewayAssociation => L<Paws::NetworkManager::CustomerGatewayAssociation>

The customer gateway association.


=head2 _request_id => Str


=cut

