
package Paws::NetworkManager::DescribeGlobalNetworksResponse;
  use Moose;
  has GlobalNetworks => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::GlobalNetwork]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DescribeGlobalNetworksResponse

=head1 ATTRIBUTES


=head2 GlobalNetworks => ArrayRef[L<Paws::NetworkManager::GlobalNetwork>]

Information about the global networks.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

