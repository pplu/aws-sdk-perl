
package Paws::GameLift::CreateFleet;
  use Moose;
  has BuildId => (is => 'ro', isa => 'Str');
  has CertificateConfiguration => (is => 'ro', isa => 'Paws::GameLift::CertificateConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has EC2InboundPermissions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');
  has EC2InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has FleetType => (is => 'ro', isa => 'Str');
  has InstanceRoleArn => (is => 'ro', isa => 'Str');
  has Locations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::LocationConfiguration]');
  has LogPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');
  has PeerVpcAwsAccountId => (is => 'ro', isa => 'Str');
  has PeerVpcId => (is => 'ro', isa => 'Str');
  has ResourceCreationLimitPolicy => (is => 'ro', isa => 'Paws::GameLift::ResourceCreationLimitPolicy');
  has RuntimeConfiguration => (is => 'ro', isa => 'Paws::GameLift::RuntimeConfiguration');
  has ScriptId => (is => 'ro', isa => 'Str');
  has ServerLaunchParameters => (is => 'ro', isa => 'Str');
  has ServerLaunchPath => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]');

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
      EC2InstanceType          => 't2.micro',
      Name                     => 'MyNonZeroAndMaxString',
      BuildId                  => 'MyBuildIdOrArn',          # OPTIONAL
      CertificateConfiguration => {
        CertificateType => 'DISABLED',    # values: DISABLED, GENERATED

      },    # OPTIONAL
      Description           => 'MyNonZeroAndMaxString',    # OPTIONAL
      EC2InboundPermissions => [
        {
          FromPort => 1,                    # min: 1, max: 60000
          IpRange  => 'MyNonBlankString',
          Protocol => 'TCP',                # values: TCP, UDP
          ToPort   => 1,                    # min: 1, max: 60000

        },
        ...
      ],    # OPTIONAL
      FleetType       => 'ON_DEMAND',           # OPTIONAL
      InstanceRoleArn => 'MyNonEmptyString',    # OPTIONAL
      Locations       => [
        {
          Location => 'MyLocationStringModel',    # min: 1, max: 64; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      LogPaths => [
        'MyNonZeroAndMaxString', ...    # min: 1, max: 1024
      ],    # OPTIONAL
      MetricGroups => [
        'MyMetricGroup', ...    # min: 1, max: 255
      ],    # OPTIONAL
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
      ScriptId               => 'MyScriptIdOrArn',          # OPTIONAL
      ServerLaunchParameters => 'MyNonZeroAndMaxString',    # OPTIONAL
      ServerLaunchPath       => 'MyNonZeroAndMaxString',    # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $FleetAttributes = $CreateFleetOutput->FleetAttributes;
    my $LocationStates  = $CreateFleetOutput->LocationStates;

    # Returns a L<Paws::GameLift::CreateFleetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateFleet>

=head1 ATTRIBUTES


=head2 BuildId => Str

The unique identifier for a custom game server build to be deployed on
fleet instances. You can use either the build ID or ARN. The build must
be uploaded to GameLift and in C<READY> status. This fleet property
cannot be changed later.



=head2 CertificateConfiguration => L<Paws::GameLift::CertificateConfiguration>

Prompts GameLift to generate a TLS/SSL certificate for the fleet. TLS
certificates are used for encrypting traffic between game clients and
the game servers that are running on GameLift. By default, the
C<CertificateConfiguration> is set to C<DISABLED>. Learn more at
Securing Client/Server Communication
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-howitworks.html#gamelift-howitworks-security).
This property cannot be changed after the fleet is created.

Note: This feature requires the AWS Certificate Manager (ACM) service,
which is not available in all AWS regions. When working in a region
that does not support this feature, a fleet creation request with
certificate generation fails with a 4xx error.



=head2 Description => Str

A human-readable description of the fleet.



=head2 EC2InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]

The allowed IP address ranges and port settings that allow inbound
traffic to access game sessions on this fleet. If the fleet is hosting
a custom game build, this property must be set before players can
connect to game sessions. For Realtime Servers fleets, GameLift
automatically sets TCP and UDP ranges.



=head2 B<REQUIRED> EC2InstanceType => Str

The GameLift-supported EC2 instance type to use for all fleet
instances. Instance type determines the computing resources that will
be used to host your game servers, including CPU, memory, storage, and
networking capacity. See Amazon EC2 Instance Types
(http://aws.amazon.com/ec2/instance-types/) for detailed descriptions
of EC2 instance types.

Valid values are: C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"c5.large">, C<"c5.xlarge">, C<"c5.2xlarge">, C<"c5.4xlarge">, C<"c5.9xlarge">, C<"c5.12xlarge">, C<"c5.18xlarge">, C<"c5.24xlarge">, C<"c5a.large">, C<"c5a.xlarge">, C<"c5a.2xlarge">, C<"c5a.4xlarge">, C<"c5a.8xlarge">, C<"c5a.12xlarge">, C<"c5a.16xlarge">, C<"c5a.24xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"r4.large">, C<"r4.xlarge">, C<"r4.2xlarge">, C<"r4.4xlarge">, C<"r4.8xlarge">, C<"r4.16xlarge">, C<"r5.large">, C<"r5.xlarge">, C<"r5.2xlarge">, C<"r5.4xlarge">, C<"r5.8xlarge">, C<"r5.12xlarge">, C<"r5.16xlarge">, C<"r5.24xlarge">, C<"r5a.large">, C<"r5a.xlarge">, C<"r5a.2xlarge">, C<"r5a.4xlarge">, C<"r5a.8xlarge">, C<"r5a.12xlarge">, C<"r5a.16xlarge">, C<"r5a.24xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">, C<"m5.large">, C<"m5.xlarge">, C<"m5.2xlarge">, C<"m5.4xlarge">, C<"m5.8xlarge">, C<"m5.12xlarge">, C<"m5.16xlarge">, C<"m5.24xlarge">, C<"m5a.large">, C<"m5a.xlarge">, C<"m5a.2xlarge">, C<"m5a.4xlarge">, C<"m5a.8xlarge">, C<"m5a.12xlarge">, C<"m5a.16xlarge">, C<"m5a.24xlarge">

=head2 FleetType => Str

Indicates whether to use On-Demand or Spot instances for this fleet. By
default, this property is set to C<ON_DEMAND>. Learn more about when to
use On-Demand versus Spot Instances
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot).
This property cannot be changed after the fleet is created.

Valid values are: C<"ON_DEMAND">, C<"SPOT">

=head2 InstanceRoleArn => Str

A unique identifier for an AWS IAM role that manages access to your AWS
services. With an instance role ARN set, any application that runs on
an instance in this fleet can assume the role, including install
scripts, server processes, and daemons (background processes). Create a
role or look up a role's ARN by using the IAM dashboard
(https://console.aws.amazon.com/iam/) in the AWS Management Console.
Learn more about using on-box credentials for your game servers at
Access external resources from a game server
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html).
This property cannot be changed after the fleet is created.



=head2 Locations => ArrayRef[L<Paws::GameLift::LocationConfiguration>]

A set of remote locations to deploy additional instances to and manage
as part of the fleet. This parameter can only be used when creating
fleets in AWS Regions that support multiple locations. You can add any
GameLift-supported AWS Region as a remote location, in the form of an
AWS Region code such as C<us-west-2>. To create a fleet with instances
in the home Region only, omit this parameter.



=head2 LogPaths => ArrayRef[Str|Undef]

B<This parameter is no longer used.> To specify where GameLift should
store log files once a server process shuts down, use the GameLift
server API C<ProcessReady()> and specify one or more directory paths in
C<logParameters>. See more information in the Server API Reference
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process).



=head2 MetricGroups => ArrayRef[Str|Undef]

The name of an AWS CloudWatch metric group to add this fleet to. A
metric group is used to aggregate the metrics for multiple fleets. You
can specify an existing metric group name or set a new name to create a
new metric group. A fleet can be included in only one metric group at a
time.



=head2 B<REQUIRED> Name => Str

A descriptive label that is associated with a fleet. Fleet names do not
need to be unique.



=head2 NewGameSessionProtectionPolicy => Str

The status of termination protection for active game sessions on the
fleet. By default, this property is set to C<NoProtection>. You can
also set game session protection for an individual game session by
calling UpdateGameSession.

=over

=item *

B<NoProtection> - Game sessions can be terminated during active
gameplay as a result of a scale-down event.

=item *

B<FullProtection> - Game sessions in C<ACTIVE> status cannot be
terminated during a scale-down event.

=back


Valid values are: C<"NoProtection">, C<"FullProtection">

=head2 PeerVpcAwsAccountId => Str

Used when peering your GameLift fleet with a VPC, the unique identifier
for the AWS account that owns the VPC. You can find your account ID in
the AWS Management Console under account settings.



=head2 PeerVpcId => Str

A unique identifier for a VPC with resources to be accessed by your
GameLift fleet. The VPC must be in the same Region as your fleet. To
look up a VPC ID, use the VPC Dashboard
(https://console.aws.amazon.com/vpc/) in the AWS Management Console.
Learn more about VPC peering in VPC Peering with GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).



=head2 ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>

A policy that limits the number of game sessions that an individual
player can create on instances in this fleet within a specified span of
time.



=head2 RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>

Instructions for how to launch and maintain server processes on
instances in the fleet. The runtime configuration defines one or more
server process configurations, each identifying a build executable or
Realtime script file and the number of processes of that type to run
concurrently.

The C<RuntimeConfiguration> parameter is required unless the fleet is
being configured using the older parameters C<ServerLaunchPath> and
C<ServerLaunchParameters>, which are still supported for backward
compatibility.



=head2 ScriptId => Str

The unique identifier for a Realtime configuration script to be
deployed on fleet instances. You can use either the script ID or ARN.
Scripts must be uploaded to GameLift prior to creating the fleet. This
fleet property cannot be changed later.



=head2 ServerLaunchParameters => Str

B<This parameter is no longer used.> Specify server launch parameters
using the C<RuntimeConfiguration> parameter. Requests that use this
parameter instead continue to be valid.



=head2 ServerLaunchPath => Str

B<This parameter is no longer used.> Specify a server launch path using
the C<RuntimeConfiguration> parameter. Requests that use this parameter
instead continue to be valid.



=head2 Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of labels to assign to the new fleet resource. Tags are
developer-defined key-value pairs. Tagging AWS resources are useful for
resource management, access management and cost allocation. For more
information, see Tagging AWS Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference>. Once the fleet is created, you can use
TagResource, UntagResource, and ListTagsForResource to add, remove, and
view tags. The maximum tag limit may be lower than stated. See the
I<AWS General Reference> for actual tagging limits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

