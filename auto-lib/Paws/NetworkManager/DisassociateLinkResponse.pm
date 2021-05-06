
package Paws::NetworkManager::DisassociateLinkResponse;
  use Moose;
  has LinkAssociation => (is => 'ro', isa => 'Paws::NetworkManager::LinkAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DisassociateLinkResponse

=head1 ATTRIBUTES


=head2 LinkAssociation => L<Paws::NetworkManager::LinkAssociation>

Information about the link association.


=head2 _request_id => Str


=cut

