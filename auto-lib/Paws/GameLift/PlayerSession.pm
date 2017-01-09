package Paws::GameLift::PlayerSession;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has PlayerId => (is => 'ro', isa => 'Str');
  has PlayerSessionId => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has TerminationTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::PlayerSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::PlayerSession object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TerminationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::PlayerSession object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Properties describing a player session.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (ex: "1469498468.057").


=head2 FleetId => Str

  Unique identifier for a fleet.


=head2 GameSessionId => Str

  Unique identifier for the game session that the player session is
connected to.


=head2 IpAddress => Str

  Game session IP address. All player sessions reference the game session
location.


=head2 PlayerId => Str

  Unique identifier for a player.


=head2 PlayerSessionId => Str

  Unique identifier for a player session.


=head2 Port => Int

  Port number for the game session. To connect to a GameLift server
process, an app needs both the IP address and port number.


=head2 Status => Str

  Current status of the player session.

Possible player session statuses include the following:

=over

=item *

B<RESERVED> E<ndash> The player session request has been received, but
the player has not yet connected to the server process and/or been
validated.

=item *

B<ACTIVE> E<ndash> The player has been validated by the server process
and is currently connected.

=item *

B<COMPLETED> E<ndash> The player connection has been dropped.

=item *

B<TIMEDOUT> E<ndash> A player session request was received, but the
player did not connect and/or was not validated within the time-out
limit (60 seconds).

=back



=head2 TerminationTime => Str

  Time stamp indicating when this data object was terminated. Format is a
number expressed in Unix time as milliseconds (ex: "1469498468.057").



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

