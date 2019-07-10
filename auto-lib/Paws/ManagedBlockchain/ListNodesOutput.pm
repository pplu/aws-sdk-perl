
package Paws::ManagedBlockchain::ListNodesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Nodes => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchain::NodeSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListNodesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 Nodes => ArrayRef[L<Paws::ManagedBlockchain::NodeSummary>]

An array of C<NodeSummary> objects that contain configuration
properties for each node.


=head2 _request_id => Str


=cut

