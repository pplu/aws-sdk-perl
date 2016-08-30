package Paws::GameLift::GameSession;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has CurrentPlayerSessionCount => (is => 'ro', isa => 'Int');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has PlayerSessionCreationPolicy => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has TerminationTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameSession object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TerminationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameSession object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Properties describing a game session.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (ex: "1469498468.057".


=head2 CurrentPlayerSessionCount => Int

  Number of players currently in the game session.


=head2 FleetId => Str

  Unique identifier for a fleet.


=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

  Set of custom properties for the game session.


=head2 GameSessionId => Str

  Unique identifier for a game session.


=head2 IpAddress => Str

  IP address of the game session. To connect to a GameLift server
process, an app needs both the IP address and port number.


=head2 MaximumPlayerSessionCount => Int

  Maximum number of players allowed in the game session.


=head2 Name => Str

  Descriptive label associated with a game session. Session names do not
need to be unique.


=head2 PlayerSessionCreationPolicy => Str

  Indicates whether or not the game session is accepting new players.


=head2 Port => Int

  Port number for the game session. To connect to a GameLift server
process, an app needs both the IP address and port number.


=head2 Status => Str

  Current status of the game session. A game session must be in an
C<ACTIVE> status to have player sessions.


=head2 TerminationTime => Str

  Time stamp indicating when this data object was terminated. Format is a
number expressed in Unix time as milliseconds (ex: "1469498468.057".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

