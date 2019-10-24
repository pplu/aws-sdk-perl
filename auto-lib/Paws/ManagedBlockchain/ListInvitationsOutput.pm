
package Paws::ManagedBlockchain::ListInvitationsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_Invitation/;
  has Invitations => (is => 'ro', isa => ArrayRef[ManagedBlockchain_Invitation]);
  has NextToken => (is => 'ro', isa => Str);

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
               'Invitations' => {
                                  'class' => 'Paws::ManagedBlockchain::Invitation',
                                  'type' => 'ArrayRef[ManagedBlockchain_Invitation]'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListInvitationsOutput

=head1 ATTRIBUTES


=head2 Invitations => ArrayRef[ManagedBlockchain_Invitation]

The invitations for the network.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

