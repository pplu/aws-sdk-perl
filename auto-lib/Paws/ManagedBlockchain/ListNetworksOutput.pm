
package Paws::ManagedBlockchain::ListNetworksOutput;
  use Moose;
  has Networks => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchain::NetworkSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListNetworksOutput

=head1 ATTRIBUTES


=head2 Networks => ArrayRef[L<Paws::ManagedBlockchain::NetworkSummary>]

An array of C<NetworkSummary> objects that contain configuration
properties for each network.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

