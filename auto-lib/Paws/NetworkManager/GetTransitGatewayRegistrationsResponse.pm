
package Paws::NetworkManager::GetTransitGatewayRegistrationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TransitGatewayRegistrations => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::TransitGatewayRegistration]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetTransitGatewayRegistrationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 TransitGatewayRegistrations => ArrayRef[L<Paws::NetworkManager::TransitGatewayRegistration>]

The transit gateway registrations.


=head2 _request_id => Str


=cut

