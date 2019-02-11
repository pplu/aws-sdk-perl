
package Paws::GameLift::CreateFleet;
  use Moose;
  has BuildId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EC2InboundPermissions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');
  has EC2InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has FleetType => (is => 'ro', isa => 'Str');
  has LogPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');
  has PeerVpcAwsAccountId => (is => 'ro', isa => 'Str');
  has PeerVpcId => (is => 'ro', isa => 'Str');
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

Paws::GameLift::CreateFleet - Arguments for method CreateFleet on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateFleetOutput = $gamelift->CreateFleet(
      BuildId               => 'MyBuildId',
      EC2InstanceType       => 't2.micro',
      Name                  => 'MyNonZeroAndMaxString',
      Description           => 'MyNonZeroAndMaxString',    # OPTIONAL
      EC2InboundPermissions => [
        {
          FromPort => 1,                                   # min: 1, max: 60000
          IpRange  => 'MyNonBlankString',
          Protocol => 'TCP',                               # values: TCP, UDP
          ToPort   => 1,                                   # min: 1, max: 60000

        },
        ...
      ],                                                   # OPTIONAL
      FleetType => 'ON_DEMAND',                            # OPTIONAL
      LogPaths  => [
        'MyNonZeroAndMaxString', ...                       # min: 1, max: 1024
      ],                                                   # OPTIONAL
      MetricGroups => [
        'MyMetricGroup', ...                               # min: 1, max: 255
      ],                                                   # OPTIONAL
      NewGameSessionProtectionPolicy => 'NoProtection',             # OPTIONAL
      PeerVpcAwsAccountId            => 'MyNonZeroAndMaxString',    # OPTIONAL
      PeerVpcId                      => 'MyNonZeroAndMaxString',    # OPTIONAL
      ResourceCreationLimitPolicy    => {
        NewGameSessionsPerCreator => 1,                             # OPTIONAL
        PolicyPeriodInMinutes     => 1,                             # OPTIONAL
      },    # OPTIONAL
      RuntimeConfiguration => {
        GameSessionActivationTimeoutSeconds => 1,   # min: 1, max: 600; OPTIONAL
        MaxConcurrentGameSessionActivations =>
          1,    # min: 1, max: 2147483647; OPTIONAL
        ServerProcesses => [
          {
            ConcurrentExecutions => 1,                       # min: 1
            LaunchPath           => 'MyNonZeroAndMaxString', # min: 1, max: 1024
            Parameters           => 'MyNonZeroAndMaxString', # min: 1, max: 1024
          },
          ...
        ],    # min: 1, max: 50; OPTIONAL
      },    # OPTIONAL
      ServerLaunchParameters => 'MyNonZeroAndMaxString',    # OPTIONAL
      ServerLaunchPath       => 'MyNonZeroAndMaxString',    # OPTIONAL
    );

    # Results:
    my $FleetAttributes = $CreateFleetOutput->FleetAttributes;

    # Returns a L<Paws::GameLift::CreateFleetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateFleet>

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
EC2 Instance Types (http://aws.amazon.com/ec2/instance-types/) for
detailed descriptions.

Valid values are: C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"r4.large">, C<"r4.xlarge">, C<"r4.2xlarge">, C<"r4.4xlarge">, C<"r4.8xlarge">, C<"r4.16xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">

=head2 FleetType => Str

Indicates whether to use on-demand instances or spot instances for this
fleet. If empty, the default is ON_DEMAND. Both categories of instances
use identical hardware and configurations, based on the instance type
selected for this fleet. You can acquire on-demand instances at any
time for a fixed price and keep them as long as you need them. Spot
instances have lower prices, but spot pricing is variable, and while in
use they can be interrupted (with a two-minute notification). Learn
more about Amazon GameLift spot instances with at Set up Access to
External Services
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-credentials.html).

Valid values are: C<"ON_DEMAND">, C<"SPOT">

=head2 LogPaths => ArrayRef[Str|Undef]

This parameter is no longer used. Instead, to specify where Amazon
GameLift should store log files once a server process shuts down, use
the Amazon GameLift server API C<ProcessReady()> and specify one or
more directory paths in C<logParameters>. See more information in the
Server API Reference
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process).



=head2 MetricGroups => ArrayRef[Str|Undef]

Name of an Amazon CloudWatch metric group to add this fleet to. A
metric group aggregates the metrics for all fleets in the group.
Specify an existing metric group name, or provide a new name to create
a new metric group. A fleet can only be included in one metric group at
a time.



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

B<NoProtection> -- The game session can be terminated during a
scale-down event.

=item *

B<FullProtection> -- If the game session is in an C<ACTIVE> status, it
cannot be terminated during a scale-down event.

=back


Valid values are: C<"NoProtection">, C<"FullProtection">

=head2 PeerVpcAwsAccountId => Str

Unique identifier for the AWS account with the VPC that you want to
peer your Amazon GameLift fleet with. You can find your Account ID in
the AWS Management Console under account settings.



=head2 PeerVpcId => Str

Unique identifier for a VPC with resources to be accessed by your
Amazon GameLift fleet. The VPC must be in the same region where your
fleet is deployed. Look up a VPC ID using the VPC Dashboard
(https://console.aws.amazon.com/vpc/) in the AWS Management Console.
Learn more about VPC peering in VPC Peering with Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).



=head2 ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>

Policy that limits the number of game sessions an individual player can
create over a span of time for this fleet.



=head2 RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>

Instructions for launching server processes on each instance in the
fleet. The run-time configuration for a fleet has a collection of
server process configurations, one for each type of server process to
run on an instance. A server process configuration specifies the
location of the server executable, launch parameters, and the number of
concurrent processes with that configuration to maintain on each
instance. A CreateFleet request must include a run-time configuration
with at least one server process configuration; otherwise the request
fails with an invalid request exception. (This parameter replaces the
parameters C<ServerLaunchPath> and C<ServerLaunchParameters>; requests
that contain values for these parameters instead of a run-time
configuration will continue to work.)



=head2 ServerLaunchParameters => Str

This parameter is no longer used. Instead, specify server launch
parameters in the C<RuntimeConfiguration> parameter. (Requests that
specify a server launch path and launch parameters instead of a
run-time configuration will continue to work.)



=head2 ServerLaunchPath => Str

This parameter is no longer used. Instead, specify a server launch path
using the C<RuntimeConfiguration> parameter. (Requests that specify a
server launch path and launch parameters instead of a run-time
configuration will continue to work.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

