
package Paws::ManagedBlockchain::GetProposalOutput;
  use Moose;
  has Proposal => (is => 'ro', isa => 'Paws::ManagedBlockchain::Proposal');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetProposalOutput

=head1 ATTRIBUTES


=head2 Proposal => L<Paws::ManagedBlockchain::Proposal>

Information about a proposal.


=head2 _request_id => Str


=cut

