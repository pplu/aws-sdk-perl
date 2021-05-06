
package Paws::GuardDuty::GetInvitationsCountResponse;
  use Moose;
  has InvitationsCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'invitationsCount');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetInvitationsCountResponse

=head1 ATTRIBUTES


=head2 InvitationsCount => Int

The number of received invitations.


=head2 _request_id => Str


=cut

