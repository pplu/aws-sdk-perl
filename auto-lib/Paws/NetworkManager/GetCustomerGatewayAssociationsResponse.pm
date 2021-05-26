
package Paws::NetworkManager::GetCustomerGatewayAssociationsResponse;
  use Moose;
  has CustomerGatewayAssociations => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::CustomerGatewayAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetCustomerGatewayAssociationsResponse

=head1 ATTRIBUTES


=head2 CustomerGatewayAssociations => ArrayRef[L<Paws::NetworkManager::CustomerGatewayAssociation>]

The customer gateway associations.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

