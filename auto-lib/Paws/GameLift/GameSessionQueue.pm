package Paws::GameLift::GameSessionQueue;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameSessionQueueDestination]');
  has Name => (is => 'ro', isa => 'Str');
  has TimeoutInSeconds => (is => 'ro', isa => 'Int');
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

Configuration of a queue used to process game session placement
requests. The queue configuration identifies the fleets that new game
session can be placed on, given available resources, and the length of
time a request can remain in the queue waiting for placement.

Queue-related operations include:

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


=head2 Destinations => ArrayRef[L<Paws::GameLift::GameSessionQueueDestination>]

  List of fleets that can be used to fulfill game session placement
requests in the queue. Fleets are identified by either a fleet ARN or a
fleet alias ARN. Destinations are listed in default preference order.


=head2 Name => Str

  Descriptive label that is associated with queue. Queue names must be
unique within each region.


=head2 TimeoutInSeconds => Int

  Maximum time, in seconds, that a new game session placement request
remains in the queue. When a request exceeds this time, the game
session placement changes to a TIMED_OUT status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

