
package Paws::GameLift::CreateGameSessionQueue;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameSessionQueueDestination]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PlayerLatencyPolicies => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerLatencyPolicy]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]');
  has TimeoutInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGameSessionQueue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateGameSessionQueueOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateGameSessionQueue - Arguments for method CreateGameSessionQueue on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGameSessionQueue on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateGameSessionQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGameSessionQueue.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateGameSessionQueueOutput = $gamelift->CreateGameSessionQueue(
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
      Tags => [
        {
          Key   => 'MyTagKey',                                # min: 1, max: 128
          Value => 'MyTagValue',                              # max: 256

        },
        ...
      ],                                                      # OPTIONAL
      TimeoutInSeconds => 1,                                  # OPTIONAL
    );

    # Results:
    my $GameSessionQueue = $CreateGameSessionQueueOutput->GameSessionQueue;

    # Returns a L<Paws::GameLift::CreateGameSessionQueueOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01>

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::GameLift::GameSessionQueueDestination>]

A list of fleets that can be used to fulfill game session placement
requests in the queue. Fleets are identified by either a fleet ARN or a
fleet alias ARN. Destinations are listed in default preference order.



=head2 B<REQUIRED> Name => Str

A descriptive label that is associated with game session queue. Queue
names must be unique within each Region.



=head2 PlayerLatencyPolicies => ArrayRef[L<Paws::GameLift::PlayerLatencyPolicy>]

A collection of latency policies to apply when processing game sessions
placement requests with player latency information. Multiple policies
are evaluated in order of the maximum latency value, starting with the
lowest latency values. With just one policy, the policy is enforced at
the start of the game session placement for the duration period. With
multiple policies, each policy is enforced consecutively for its
duration period. For example, a queue might enforce a 60-second policy
followed by a 120-second policy, and then no policy for the remainder
of the placement. A player latency policy must set a value for
C<MaximumIndividualPlayerLatencyMilliseconds>. If none is set, this API
request fails.



=head2 Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of labels to assign to the new game session queue resource. Tags
are developer-defined key-value pairs. Tagging AWS resources are useful
for resource management, access management and cost allocation. For
more information, see Tagging AWS Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference>. Once the resource is created, you can use
TagResource, UntagResource, and ListTagsForResource to add, remove, and
view tags. The maximum tag limit may be lower than stated. See the AWS
General Reference for actual tagging limits.



=head2 TimeoutInSeconds => Int

The maximum time, in seconds, that a new game session placement request
remains in the queue. When a request exceeds this time, the game
session placement changes to a C<TIMED_OUT> status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGameSessionQueue in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

