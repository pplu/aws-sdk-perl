
package Paws::NetworkManager::GetSitesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Sites => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Site]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetSitesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 Sites => ArrayRef[L<Paws::NetworkManager::Site>]

The sites.


=head2 _request_id => Str


=cut

