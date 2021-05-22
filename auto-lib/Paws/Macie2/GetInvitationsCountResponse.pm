
package Paws::Macie2::GetInvitationsCountResponse;
  use Moose;
  has InvitationsCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'invitationsCount');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetInvitationsCountResponse

=head1 ATTRIBUTES


=head2 InvitationsCount => Int

The total number of invitations that were received by the account, not
including the currently accepted invitation.


=head2 _request_id => Str


=cut

