
package Paws::ManagedBlockchain::CreateProposalOutput;
  use Moose;
  has ProposalId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateProposalOutput

=head1 ATTRIBUTES


=head2 ProposalId => Str

The unique identifier of the proposal.


=head2 _request_id => Str


=cut

