
package Paws::NetworkManager::GetLinksResponse;
  use Moose;
  has Links => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Link]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetLinksResponse

=head1 ATTRIBUTES


=head2 Links => ArrayRef[L<Paws::NetworkManager::Link>]

The links.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

