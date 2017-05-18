
package Paws::GameLift::CreateFleet;
  use Moose;
  has BuildId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EC2InboundPermissions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');
  has EC2InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has LogPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');
  has ResourceCreationLimitPolicy => (is => 'ro', isa => 'Paws::GameLift::ResourceCreationLimitPolicy');
  has RuntimeConfiguration => (is => 'ro', isa => 'Paws::GameLift::RuntimeConfiguration');
  has ServerLaunchParameters => (is => 'ro', isa => 'Str');
  has ServerLaunchPath => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateFleetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateFleet - Arguments for method CreateFleet on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

As an example:

  $service_obj->CreateFleet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BuildId => Str

Unique identifier for a build to be deployed on the new fleet. The
build must have been successfully uploaded to Amazon GameLift and be in
a C<READY> status. This fleet setting cannot be changed once the fleet
is created.



=head2 Description => Str

Human-readable description of a fleet.



=head2 EC2InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]

Range of IP addresses and port settings that permit inbound traffic to
access server processes running on the fleet. If no inbound permissions
are set, including both IP address range and port range, the server
processes in the fleet cannot accept connections. You can specify one
or more sets of permissions for a fleet.



=head2 B<REQUIRED> EC2InstanceType => Str

Name of an EC2 instance type that is supported in Amazon GameLift. A
fleet instance type determines the computing resources of each instance
in the fleet, including CPU, memory, storage, and networking capacity.
Amazon GameLift supports the following EC2 instance types. See Amazon
EC2 Instance Types for detailed descriptions.

Valid values are: C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">

=head2 LogPaths => ArrayRef[Str|Undef]

This parameter is no longer used. Instead, to specify where Amazon
GameLift should store log files once a server process shuts down, use
the Amazon GameLift server API C<ProcessReady()> and specify one or
more directory paths in C<logParameters>. See more information in the
Server API Reference.



=head2 MetricGroups => ArrayRef[Str|Undef]

Names of metric groups to add this fleet to. Use an existing metric
group name to add this fleet to the group, or use a new name to create
a new metric group. Currently, a fleet can only be included in one
metric group at a time.



=head2 B<REQUIRED> Name => Str

Descriptive label that is associated with a fleet. Fleet names do not
need to be unique.



=head2 NewGameSessionProtectionPolicy => Str

Game session protection policy to apply to all instances in this fleet.
If this parameter is not set, instances in this fleet default to no
protection. You can change a fleet's protection policy using
UpdateFleetAttributes, but this change will only affect sessions
created after the policy change. You can also set protection for
individual instances using UpdateGameSession.

=over

=item *

B<NoProtection> E<ndash> The game session can be terminated during a
scale-down event.

=item *

B<FullProtection> E<ndash> If the game session is in an C<ACTIVE>
status, it cannot be terminated during a scale-down event.

=back


Valid values are: C<"NoProtection">, C<"FullProtection">

=head2 ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>

Policy that limits the number of game sessions an individual player can
create over a span of time for this fleet.



=head2 RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>

Instructions for launching server processes on each instance in the
fleet. The runtime configuration for a fleet has a collection of server
process configurations, one for each type of server process to run on
an instance. A server process configuration specifies the location of
the server executable, launch parameters, and the number of concurrent
processes with that configuration to maintain on each instance. A
CreateFleet request must include a runtime configuration with at least
one server process configuration; otherwise the request will fail with
an invalid request exception. (This parameter replaces the parameters
C<ServerLaunchPath> and C<ServerLaunchParameters>; requests that
contain values for these parameters instead of a runtime configuration
will continue to work.)



=head2 ServerLaunchParameters => Str

This parameter is no longer used. Instead, specify server launch
parameters in the C<RuntimeConfiguration> parameter. (Requests that
specify a server launch path and launch parameters instead of a runtime
configuration will continue to work.)



=head2 ServerLaunchPath => Str

This parameter is no longer used. Instead, specify a server launch path
using the C<RuntimeConfiguration> parameter. (Requests that specify a
server launch path and launch parameters instead of a runtime
configuration will continue to work.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

