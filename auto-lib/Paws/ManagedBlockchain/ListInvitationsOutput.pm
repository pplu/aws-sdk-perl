
package Paws::ManagedBlockchain::ListInvitationsOutput;
  use Moose;
  has Invitations => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchain::Invitation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListInvitationsOutput

=head1 ATTRIBUTES


=head2 Invitations => ArrayRef[L<Paws::ManagedBlockchain::Invitation>]

The invitations for the network.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

