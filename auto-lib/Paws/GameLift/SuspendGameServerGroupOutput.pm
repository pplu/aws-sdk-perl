
package Paws::GameLift::SuspendGameServerGroupOutput;
  use Moose;
  has GameServerGroup => (is => 'ro', isa => 'Paws::GameLift::GameServerGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::SuspendGameServerGroupOutput

=head1 ATTRIBUTES


=head2 GameServerGroup => L<Paws::GameLift::GameServerGroup>

An object that describes the game server group resource, with the
C<SuspendedActions> property updated to reflect the suspended activity.


=head2 _request_id => Str


=cut

1;