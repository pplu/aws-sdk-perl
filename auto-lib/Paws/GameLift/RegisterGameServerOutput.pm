
package Paws::GameLift::RegisterGameServerOutput;
  use Moose;
  has GameServer => (is => 'ro', isa => 'Paws::GameLift::GameServer');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::RegisterGameServerOutput

=head1 ATTRIBUTES


=head2 GameServer => L<Paws::GameLift::GameServer>

Object that describes the newly registered game server.


=head2 _request_id => Str


=cut

1;