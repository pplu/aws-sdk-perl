package Paws::GameLift::GameSessionConnectionInfo;
  use Moose;
  has GameSessionArn => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has MatchedPlayerSessions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::MatchedPlayerSession]');
  has Port => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameSessionConnectionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameSessionConnectionInfo object:

  $service_obj->Method(Att1 => { GameSessionArn => $value, ..., Port => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameSessionConnectionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->GameSessionArn

=head1 DESCRIPTION

Connection information for the new game session that is created with
matchmaking. (with StartMatchmaking). Once a match is set, the
FlexMatch engine places the match and creates a new game session for
it. This information, including the game session endpoint and player
sessions for each player in the original matchmaking request, is added
to the MatchmakingTicket, which can be retrieved by calling
DescribeMatchmaking.

=head1 ATTRIBUTES


=head2 GameSessionArn => Str

  Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a game session and uniquely identifies it.


=head2 IpAddress => Str

  IP address of the game session. To connect to a Amazon GameLift game
server, an app needs both the IP address and port number.


=head2 MatchedPlayerSessions => ArrayRef[L<Paws::GameLift::MatchedPlayerSession>]

  Collection of player session IDs, one for each player ID that was
included in the original matchmaking request.


=head2 Port => Int

  Port number for the game session. To connect to a Amazon GameLift game
server, an app needs both the IP address and port number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

