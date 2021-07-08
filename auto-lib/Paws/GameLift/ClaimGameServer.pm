
package Paws::GameLift::ClaimGameServer;
  use Moose;
  has GameServerData => (is => 'ro', isa => 'Str');
  has GameServerGroupName => (is => 'ro', isa => 'Str', required => 1);
  has GameServerId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ClaimGameServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::ClaimGameServerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ClaimGameServer - Arguments for method ClaimGameServer on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ClaimGameServer on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method ClaimGameServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ClaimGameServer.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $ClaimGameServerOutput = $gamelift->ClaimGameServer(
      GameServerGroupName => 'MyGameServerGroupNameOrArn',
      GameServerData      => 'MyGameServerData',             # OPTIONAL
      GameServerId        => 'MyGameServerId',               # OPTIONAL
    );

    # Results:
    my $GameServer = $ClaimGameServerOutput->GameServer;

    # Returns a L<Paws::GameLift::ClaimGameServerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/ClaimGameServer>

=head1 ATTRIBUTES


=head2 GameServerData => Str

A set of custom game server properties, formatted as a single string
value. This data is passed to a game client or service when it requests
information on game servers using ListGameServers or ClaimGameServer.



=head2 B<REQUIRED> GameServerGroupName => Str

A unique identifier for the game server group where the game server is
running. Use either the GameServerGroup name or ARN value. If you are
not specifying a game server to claim, this value identifies where you
want GameLift FleetIQ to look for an available game server to claim.



=head2 GameServerId => Str

A custom string that uniquely identifies the game server to claim. If
this parameter is left empty, GameLift FleetIQ searches for an
available game server in the specified game server group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ClaimGameServer in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

