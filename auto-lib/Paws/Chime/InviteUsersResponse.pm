
package Paws::Chime::InviteUsersResponse;
  use Moose;
  has Invites => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Invite]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::InviteUsersResponse

=head1 ATTRIBUTES


=head2 Invites => ArrayRef[L<Paws::Chime::Invite>]

The invite details.


=head2 _request_id => Str


=cut

