package Paws::GameLift::GameSessionPlacement;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionArn => (is => 'ro', isa => 'Str');
  has GameSessionName => (is => 'ro', isa => 'Str');
  has GameSessionQueueName => (is => 'ro', isa => 'Str');
  has GameSessionRegion => (is => 'ro', isa => 'Str');
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int');
  has PlacementId => (is => 'ro', isa => 'Str');
  has PlayerLatencies => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerLatency]');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameSessionPlacement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameSessionPlacement object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameSessionPlacement object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Object that describes a StartGameSessionPlacement request. This object
includes the full details of the original request plus the current
status and start/end time stamps.

Game session placement-related operations include:

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back


=head1 ATTRIBUTES


=head2 EndTime => Str

  Time stamp indicating when this request was completed, cancelled, or
timed out.


=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

  Set of developer-defined properties for a game session. These
properties are passed to the server process hosting the game session.


=head2 GameSessionArn => Str

  Identifier for the game session created by this placement request. This
value exists only if the game session placement status is Completed.
This identifier is unique across all regions.


=head2 GameSessionName => Str

  Descriptive label that is associated with a game session. Session names
do not need to be unique.


=head2 GameSessionQueueName => Str

  Descriptive label that is associated with queue. Queue names must be
unique within each region.


=head2 GameSessionRegion => Str

  Name of the region where the game session created by this placement
request is running. This value exists only if the game session
placement status is Completed.


=head2 MaximumPlayerSessionCount => Int

  Maximum number of players that can be connected simultaneously to the
game session.


=head2 PlacementId => Str

  Unique identifier for a game session placement.


=head2 PlayerLatencies => ArrayRef[L<Paws::GameLift::PlayerLatency>]

  Set of values, expressed in milliseconds, indicating the amount of
latency that players experience when connected to AWS regions.


=head2 StartTime => Str

  Time stamp indicating when this request was placed in the queue. Format
is a number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 Status => Str

  Current status of the game session placement request.

=over

=item *

B<PENDING> E<ndash> The placement request is currently in the queue
waiting to be processed.

=item *

B<FULFILLED> E<ndash> A new game session and player sessions (if
requested) have been successfully created. Values for I<GameSessionArn>
and I<GameSessionRegion> are available.

=item *

B<CANCELLED> E<ndash> The placement request was cancelled with a call
to StopGameSessionPlacement.

=item *

B<TIMED_OUT> E<ndash> A new game session was not successfully created
before the time limit expired. You can resubmit the placement request
as needed.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

