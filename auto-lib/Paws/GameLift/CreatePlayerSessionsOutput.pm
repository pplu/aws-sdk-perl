
package Paws::GameLift::CreatePlayerSessionsOutput;
  use Moose;
  has PlayerSessions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerSession]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreatePlayerSessionsOutput

=head1 ATTRIBUTES


=head2 PlayerSessions => ArrayRef[L<Paws::GameLift::PlayerSession>]

Collection of player session objects created for the added players.


=head2 _request_id => Str


=cut

1;