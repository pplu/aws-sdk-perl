package Paws::GameLift::ServerProcess;
  use Moose;
  has ConcurrentExecutions => (is => 'ro', isa => 'Int', required => 1);
  has LaunchPath => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ServerProcess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::ServerProcess object:

  $service_obj->Method(Att1 => { ConcurrentExecutions => $value, ..., Parameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::ServerProcess object:

  $result = $service_obj->Method(...);
  $result->Att1->ConcurrentExecutions

=head1 DESCRIPTION

A set of instructions for launching server processes on each instance
in a fleet. Server processes run either a custom game build executable
or a Realtime Servers script. Each instruction set identifies the
location of the custom game build executable or Realtime launch script,
optional launch parameters, and the number of server processes with
this configuration to maintain concurrently on the instance. Server
process configurations make up a fleet's C< RuntimeConfiguration >.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConcurrentExecutions => Int

  Number of server processes using this configuration to run concurrently
on an instance.


=head2 B<REQUIRED> LaunchPath => Str

  Location of the server executable in a custom game build or the name of
the Realtime script file that contains the C<Init()> function. Game
builds and Realtime scripts are installed on instances at the root:

=over

=item *

Windows (for custom game builds only): C<C:\game>. Example:
"C<C:\game\MyGame\server.exe>"

=item *

Linux: C</local/game>. Examples: "C</local/game/MyGame/server.exe>" or
"C</local/game/MyRealtimeScript.js>"

=back



=head2 Parameters => Str

  Optional list of parameters to pass to the server executable or
Realtime script on launch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

