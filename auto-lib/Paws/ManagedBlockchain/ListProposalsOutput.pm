
package Paws::ManagedBlockchain::ListProposalsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Proposals => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchain::ProposalSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListProposalsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 Proposals => ArrayRef[L<Paws::ManagedBlockchain::ProposalSummary>]

The summary of each proposal made on the network.


=head2 _request_id => Str


=cut

