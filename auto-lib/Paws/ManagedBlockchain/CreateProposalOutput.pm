
package Paws::ManagedBlockchain::CreateProposalOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has ProposalId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProposalId' => {
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

Paws::ManagedBlockchain::CreateProposalOutput

=head1 ATTRIBUTES


=head2 ProposalId => Str

The unique identifier of the proposal.


=head2 _request_id => Str


=cut

