# Generated from default/object.tt
package Paws::GameLift::GameSessionQueue;
  use Moo;
  use Types::Standard qw/ArrayRef Str Int/;
  use Paws::GameLift::Types qw/GameLift_PlayerLatencyPolicy GameLift_GameSessionQueueDestination/;
  has Destinations => (is => 'ro', isa => ArrayRef[GameLift_GameSessionQueueDestination]);
  has GameSessionQueueArn => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has PlayerLatencyPolicies => (is => 'ro', isa => ArrayRef[GameLift_PlayerLatencyPolicy]);
  has TimeoutInSeconds => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimeoutInSeconds' => {
                                       'type' => 'Int'
                                     },
               'GameSessionQueueArn' => {
                                          'type' => 'Str'
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
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameSessionQueue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameSessionQueue object:

  $service_obj->Method(Att1 => { Destinations => $value, ..., TimeoutInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameSessionQueue object:

  $result = $service_obj->Method(...);
  $result->Att1->Destinations

=head1 DESCRIPTION

Configuration of a queue that is used to process game session placement
requests. The queue configuration identifies several game features:

=over

=item *

The destinations where a new game session can potentially be hosted.
Amazon GameLift tries these destinations in an order based on either
the queue's default order or player latency information, if provided in
a placement request. With latency information, Amazon GameLift can
place game sessions where the majority of players are reporting the
lowest possible latency.

=item *

The length of time that placement requests can wait in the queue before
timing out.

=item *

A set of optional latency policies that protect individual players from
high latencies, preventing game sessions from being placed where any
individual player is reporting latency higher than a policy's maximum.

=back

=over

=item *

CreateGameSessionQueue

=item *

DescribeGameSessionQueues

=item *

UpdateGameSessionQueue

=item *

DeleteGameSessionQueue

=back


=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[GameLift_GameSessionQueueDestination]

  List of fleets that can be used to fulfill game session placement
requests in the queue. Fleets are identified by either a fleet ARN or a
fleet alias ARN. Destinations are listed in default preference order.


=head2 GameSessionQueueArn => Str

  Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a game session queue and uniquely identifies it.
Format is C<arn:aws:gamelift:E<lt>regionE<gt>:E<lt>aws
accountE<gt>:gamesessionqueue/E<lt>queue nameE<gt>>.


=head2 Name => Str

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
of the placement.


=head2 TimeoutInSeconds => Int

  Maximum time, in seconds, that a new game session placement request
remains in the queue. When a request exceeds this time, the game
session placement changes to a C<TIMED_OUT> status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

