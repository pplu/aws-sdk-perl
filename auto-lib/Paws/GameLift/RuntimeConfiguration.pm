package Paws::GameLift::RuntimeConfiguration;
  use Moose;
  has GameSessionActivationTimeoutSeconds => (is => 'ro', isa => 'Int');
  has MaxConcurrentGameSessionActivations => (is => 'ro', isa => 'Int');
  has ServerProcesses => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::ServerProcess]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::RuntimeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::RuntimeConfiguration object:

  $service_obj->Method(Att1 => { GameSessionActivationTimeoutSeconds => $value, ..., ServerProcesses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::RuntimeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->GameSessionActivationTimeoutSeconds

=head1 DESCRIPTION

A collection of server process configurations that describe what
processes to run on each instance in a fleet. Server processes run
either a custom game build executable or a Realtime Servers script.
Each instance in the fleet starts the specified server processes and
continues to start new processes as existing processes end. Each
instance regularly checks for an updated runtime configuration.

The runtime configuration enables the instances in a fleet to run
multiple processes simultaneously. Learn more about Running Multiple
Processes on a Fleet
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html).

A Amazon GameLift instance is limited to 50 processes running
simultaneously. To calculate the total number of processes in a runtime
configuration, add the values of the C<ConcurrentExecutions> parameter
for each ServerProcess object.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

DescribeFleetAttributes

=item *

UpdateFleetAttributes

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back


=head1 ATTRIBUTES


=head2 GameSessionActivationTimeoutSeconds => Int

  The maximum amount of time (in seconds) that a game session can remain
in status C<ACTIVATING>. If the game session is not active before the
timeout, activation is terminated and the game session status is
changed to C<TERMINATED>.


=head2 MaxConcurrentGameSessionActivations => Int

  The maximum number of game sessions with status C<ACTIVATING> to allow
on an instance simultaneously. This setting limits the amount of
instance resources that can be used for new game activations at any one
time.


=head2 ServerProcesses => ArrayRef[L<Paws::GameLift::ServerProcess>]

  A collection of server process configurations that describe which
server processes to run on each instance in a fleet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

