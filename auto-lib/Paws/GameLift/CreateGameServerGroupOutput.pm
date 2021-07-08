
package Paws::GameLift::CreateGameServerGroupOutput;
  use Moose;
  has GameServerGroup => (is => 'ro', isa => 'Paws::GameLift::GameServerGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateGameServerGroupOutput

=head1 ATTRIBUTES


=head2 GameServerGroup => L<Paws::GameLift::GameServerGroup>

The newly created game server group object, including the new ARN value
for the GameLift FleetIQ game server group and the object's status. The
EC2 Auto Scaling group ARN is initially null, since the group has not
yet been created. This value is added once the game server group status
reaches C<ACTIVE>.


=head2 _request_id => Str


=cut

1;