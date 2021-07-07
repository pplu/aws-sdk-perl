
package Paws::GameLift::UpdateGameSessionQueue;
  use Moose;
  has CustomEventData => (is => 'ro', isa => 'Str');
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameSessionQueueDestination]');
  has FilterConfiguration => (is => 'ro', isa => 'Paws::GameLift::FilterConfiguration');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NotificationTarget => (is => 'ro', isa => 'Str');
  has PlayerLatencyPolicies => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerLatencyPolicy]');
  has PriorityConfiguration => (is => 'ro', isa => 'Paws::GameLift::PriorityConfiguration');
  has TimeoutInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGameSessionQueue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateGameSessionQueueOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateGameSessionQueue - Arguments for method UpdateGameSessionQueue on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGameSessionQueue on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateGameSessionQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGameSessionQueue.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateGameSessionQueueOutput = $gamelift->UpdateGameSessionQueue(
      Name            => 'MyGameSessionQueueNameOrArn',
      CustomEventData => 'MyQueueCustomEventData',        # OPTIONAL
      Destinations    => [
        {
          DestinationArn => 'MyArnStringModel',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      FilterConfiguration => {
        AllowedLocations => [
          'MyLocationStringModel', ...    # min: 1, max: 64
        ],    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      NotificationTarget    => 'MyQueueSnsArnStringModel',    # OPTIONAL
      PlayerLatencyPolicies => [
        {
          MaximumIndividualPlayerLatencyMilliseconds => 1,    # OPTIONAL
          PolicyDurationSeconds                      => 1,    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      PriorityConfiguration => {
        LocationOrder => [
          'MyLocationStringModel', ...    # min: 1, max: 64
        ],    # min: 1, max: 100; OPTIONAL
        PriorityOrder => [
          'LATENCY', ...    # values: LATENCY, COST, DESTINATION, LOCATION
        ],    # min: 1, max: 4; OPTIONAL
      },    # OPTIONAL
      TimeoutInSeconds => 1,    # OPTIONAL
    );

    # Results:
    my $GameSessionQueue = $UpdateGameSessionQueueOutput->GameSessionQueue;

    # Returns a L<Paws::GameLift::UpdateGameSessionQueueOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateGameSessionQueue>

=head1 ATTRIBUTES


=head2 CustomEventData => Str

Information to be added to all events that are related to this game
session queue.



=head2 Destinations => ArrayRef[L<Paws::GameLift::GameSessionQueueDestination>]

A list of fleets and/or fleet aliases that can be used to fulfill game
session placement requests in the queue. Destinations are identified by
either a fleet ARN or a fleet alias ARN, and are listed in order of
placement preference. When updating this list, provide a complete list
of destinations.



=head2 FilterConfiguration => L<Paws::GameLift::FilterConfiguration>

A list of locations where a queue is allowed to place new game
sessions. Locations are specified in the form of AWS Region codes, such
as C<us-west-2>. If this parameter is not set, game sessions can be
placed in any queue location. To remove an existing filter
configuration, pass in an empty set.



=head2 B<REQUIRED> Name => Str

A descriptive label that is associated with game session queue. Queue
names must be unique within each Region. You can use either the queue
ID or ARN value.



=head2 NotificationTarget => Str

An SNS topic ARN that is set up to receive game session placement
notifications. See Setting up notifications for game session placement
(https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html).



=head2 PlayerLatencyPolicies => ArrayRef[L<Paws::GameLift::PlayerLatencyPolicy>]

A set of policies that act as a sliding cap on player latency. FleetIQ
works to deliver low latency for most players in a game session. These
policies ensure that no individual player can be placed into a game
with unreasonably high latency. Use multiple policies to gradually
relax latency requirements a step at a time. Multiple policies are
applied based on their maximum allowed latency, starting with the
lowest value. When updating policies, provide a complete collection of
policies.



=head2 PriorityConfiguration => L<Paws::GameLift::PriorityConfiguration>

Custom settings to use when prioritizing destinations and locations for
game session placements. This configuration replaces the FleetIQ
default prioritization process. Priority types that are not explicitly
named will be automatically applied at the end of the prioritization
process. To remove an existing priority configuration, pass in an empty
set.



=head2 TimeoutInSeconds => Int

The maximum time, in seconds, that a new game session placement request
remains in the queue. When a request exceeds this time, the game
session placement changes to a C<TIMED_OUT> status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGameSessionQueue in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

