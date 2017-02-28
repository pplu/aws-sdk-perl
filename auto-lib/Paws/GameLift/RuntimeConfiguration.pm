package Paws::GameLift::RuntimeConfiguration;
  use Moose;
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

  $service_obj->Method(Att1 => { ServerProcesses => $value, ..., ServerProcesses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::RuntimeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ServerProcesses

=head1 DESCRIPTION

Collection of server process configurations that describe what
processes should be run on each instance in a fleet. An instance can
launch and maintain multiple server processes based on the runtime
configuration; it regularly checks for an updated runtime configuration
and starts new server processes to match the latest version.

The key purpose of a runtime configuration with multiple server process
configurations is to be able to run more than one kind of game server
in a single fleet. You can include configurations for more than one
server executable in order to run two or more different programs to run
on the same instance. This option might be useful, for example, to run
more than one version of your game server on the same fleet. Another
option is to specify configurations for the same server executable but
with different launch parameters.

A Amazon GameLift instance is limited to 50 processes running
simultaneously. To calculate the total number of processes specified in
a runtime configuration, add the values of the C<ConcurrentExecutions>
parameter for each C< ServerProcess > object in the runtime
configuration.

=head1 ATTRIBUTES


=head2 ServerProcesses => ArrayRef[L<Paws::GameLift::ServerProcess>]

  Collection of server process configurations describing what server
processes to run on each instance in a fleet



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

