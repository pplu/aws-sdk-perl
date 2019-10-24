
package Paws::ManagedBlockchain::ListProposalVotesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_VoteSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has ProposalVotes => (is => 'ro', isa => ArrayRef[ManagedBlockchain_VoteSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProposalVotes' => {
                                    'class' => 'Paws::ManagedBlockchain::VoteSummary',
                                    'type' => 'ArrayRef[ManagedBlockchain_VoteSummary]'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListProposalVotesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 ProposalVotes => ArrayRef[ManagedBlockchain_VoteSummary]

The listing of votes.


=head2 _request_id => Str


=cut

