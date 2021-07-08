
package Paws::GameLift::DeleteGameServerGroupOutput;
  use Moose;
  has GameServerGroup => (is => 'ro', isa => 'Paws::GameLift::GameServerGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeleteGameServerGroupOutput

=head1 ATTRIBUTES


=head2 GameServerGroup => L<Paws::GameLift::GameServerGroup>

An object that describes the deleted game server group resource, with
status updated to C<DELETE_SCHEDULED>.


=head2 _request_id => Str


=cut

1;