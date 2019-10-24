# Generated from json/callargs_class.tt

package Paws::GameLift::UpdateGameSessionQueue;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::GameLift::Types qw/GameLift_PlayerLatencyPolicy GameLift_GameSessionQueueDestination/;
  has Destinations => (is => 'ro', isa => ArrayRef[GameLift_GameSessionQueueDestination], predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PlayerLatencyPolicies => (is => 'ro', isa => ArrayRef[GameLift_PlayerLatencyPolicy], predicate => 1);
  has TimeoutInSeconds => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateGameSessionQueue');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GameLift::UpdateGameSessionQueueOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimeoutInSeconds' => {
                                       'type' => 'Int'
                                     },
               'PlayerLatencyPolicies' => {
                                            'class' => 'Paws::GameLift::PlayerLatencyPolicy',
                                            'type' => 'ArrayRef[GameLift_PlayerLatencyPolicy]'
                                          },
               'Destinations' => {
                                   'class' => 'Paws::GameLift::GameSessionQueueDestination',
                                   'type' => 'ArrayRef[GameLift_GameSessionQueueDestination]'
                                 },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

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
      Name         => 'MyGameSessionQueueName',
      Destinations => [
        {
          DestinationArn => 'MyArnStringModel',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],                                           # OPTIONAL
      PlayerLatencyPolicies => [
        {
          MaximumIndividualPlayerLatencyMilliseconds => 1,    # OPTIONAL
          PolicyDurationSeconds                      => 1,    # OPTIONAL
        },
        ...
      ],                                                      # OPTIONAL
      TimeoutInSeconds => 1,                                  # OPTIONAL
    );

    # Results:
    my $GameSessionQueue = $UpdateGameSessionQueueOutput->GameSessionQueue;

    # Returns a L<Paws::GameLift::UpdateGameSessionQueueOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateGameSessionQueue>

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[GameLift_GameSessionQueueDestination]

List of fleets that can be used to fulfill game session placement
requests in the queue. Fleets are identified by either a fleet ARN or a
fleet alias ARN. Destinations are listed in default preference order.
When updating this list, provide a complete list of destinations.



=head2 B<REQUIRED> Name => Str

Descriptive label that is associated with game session queue. Queue
names must be unique within each region.



=head2 PlayerLatencyPolicies => ArrayRef[GameLift_PlayerLatencyPolicy]

Collection of latency policies to apply when processing game sessions
placement requests with player latency information. Multiple policies
are evaluated in order of the maximum latency value, starting with the
lowest latency values. With just one policy, it is enforced at the
start of the game session placement for the duration period. With
multiple policies, each policy is enforced consecutively for its
duration period. For example, a queue might enforce a 60-second policy
followed by a 120-second policy, and then no policy for the remainder
of the placement. When updating policies, provide a complete collection
of policies.



=head2 TimeoutInSeconds => Int

Maximum time, in seconds, that a new game session placement request
remains in the queue. When a request exceeds this time, the game
session placement changes to a C<TIMED_OUT> status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGameSessionQueue in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

