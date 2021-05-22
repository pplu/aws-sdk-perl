
package Paws::GameLift::RegisterGameServer;
  use Moose;
  has ConnectionInfo => (is => 'ro', isa => 'Str');
  has GameServerData => (is => 'ro', isa => 'Str');
  has GameServerGroupName => (is => 'ro', isa => 'Str', required => 1);
  has GameServerId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterGameServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::RegisterGameServerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::RegisterGameServer - Arguments for method RegisterGameServer on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterGameServer on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method RegisterGameServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterGameServer.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $RegisterGameServerOutput = $gamelift->RegisterGameServer(
      GameServerGroupName => 'MyGameServerGroupNameOrArn',
      GameServerId        => 'MyGameServerId',
      InstanceId          => 'MyGameServerInstanceId',
      ConnectionInfo      => 'MyGameServerConnectionInfo',    # OPTIONAL
      GameServerData      => 'MyGameServerData',              # OPTIONAL
    );

    # Results:
    my $GameServer = $RegisterGameServerOutput->GameServer;

    # Returns a L<Paws::GameLift::RegisterGameServerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/RegisterGameServer>

=head1 ATTRIBUTES


=head2 ConnectionInfo => Str

Information that is needed to make inbound client connections to the
game server. This might include the IP address and port, DNS name, and
other information.



=head2 GameServerData => Str

A set of custom game server properties, formatted as a single string
value. This data is passed to a game client or service when it requests
information on game servers using ListGameServers or ClaimGameServer.



=head2 B<REQUIRED> GameServerGroupName => Str

A unique identifier for the game server group where the game server is
running. Use either the GameServerGroup name or ARN value.



=head2 B<REQUIRED> GameServerId => Str

A custom string that uniquely identifies the game server to register.
Game server IDs are developer-defined and must be unique across all
game server groups in your AWS account.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier for the instance where the game server is
running. This ID is available in the instance metadata. EC2 instance
IDs use a 17-character format, for example: C<i-1234567890abcdef0>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterGameServer in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

