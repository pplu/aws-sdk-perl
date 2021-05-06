
package Paws::Robomaker::DescribeRobotResponse;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'architecture');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has FleetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleetArn');
  has GreengrassGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'greengrassGroupId');
  has LastDeploymentJob => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastDeploymentJob');
  has LastDeploymentTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastDeploymentTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeRobotResponse

=head1 ATTRIBUTES


=head2 Architecture => Str

The target architecture of the robot application.

Valid values are: C<"X86_64">, C<"ARM64">, C<"ARMHF">
=head2 Arn => Str

The Amazon Resource Name (ARN) of the robot.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the robot was created.


=head2 FleetArn => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 GreengrassGroupId => Str

The Greengrass group id.


=head2 LastDeploymentJob => Str

The Amazon Resource Name (ARN) of the last deployment job.


=head2 LastDeploymentTime => Str

The time of the last deployment job.


=head2 Name => Str

The name of the robot.


=head2 Status => Str

The status of the fleet.

Valid values are: C<"Available">, C<"Registered">, C<"PendingNewDeployment">, C<"Deploying">, C<"Failed">, C<"InSync">, C<"NoResponse">
=head2 Tags => L<Paws::Robomaker::TagMap>

The list of all tags added to the specified robot.


=head2 _request_id => Str


=cut

