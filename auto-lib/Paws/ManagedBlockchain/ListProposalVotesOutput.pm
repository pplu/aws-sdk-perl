
package Paws::ManagedBlockchain::ListProposalVotesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProposalVotes => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchain::VoteSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListProposalVotesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 ProposalVotes => ArrayRef[L<Paws::ManagedBlockchain::VoteSummary>]

The listing of votes.


=head2 _request_id => Str


=cut

