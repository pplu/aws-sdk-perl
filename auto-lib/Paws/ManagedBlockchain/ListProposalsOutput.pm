
package Paws::ManagedBlockchain::ListProposalsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_ProposalSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Proposals => (is => 'ro', isa => ArrayRef[ManagedBlockchain_ProposalSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Proposals' => {
                                'class' => 'Paws::ManagedBlockchain::ProposalSummary',
                                'type' => 'ArrayRef[ManagedBlockchain_ProposalSummary]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListProposalsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 Proposals => ArrayRef[ManagedBlockchain_ProposalSummary]

The summary of each proposal made on the network.


=head2 _request_id => Str


=cut

