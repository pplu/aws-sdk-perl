
package Paws::ManagedBlockchain::GetProposalOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_Proposal/;
  has Proposal => (is => 'ro', isa => ManagedBlockchain_Proposal);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Proposal' => {
                               'class' => 'Paws::ManagedBlockchain::Proposal',
                               'type' => 'ManagedBlockchain_Proposal'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetProposalOutput

=head1 ATTRIBUTES


=head2 Proposal => ManagedBlockchain_Proposal

Information about a proposal.


=head2 _request_id => Str


=cut

