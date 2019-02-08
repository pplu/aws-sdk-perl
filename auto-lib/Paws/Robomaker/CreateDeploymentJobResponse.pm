
package Paws::Robomaker::CreateDeploymentJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DeploymentApplicationConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::DeploymentApplicationConfig]', traits => ['NameInRequest'], request_name => 'deploymentApplicationConfigs');
  has DeploymentConfig => (is => 'ro', isa => 'Paws::Robomaker::DeploymentConfig', traits => ['NameInRequest'], request_name => 'deploymentConfig');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Fleet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleet');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateDeploymentJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the deployment job.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the fleet was created.


=head2 DeploymentApplicationConfigs => ArrayRef[L<Paws::Robomaker::DeploymentApplicationConfig>]

The deployment application configuration.


=head2 DeploymentConfig => L<Paws::Robomaker::DeploymentConfig>

The deployment configuration.


=head2 FailureCode => Str

The failure code of the simulation job if it failed:

=over

=item BadPermissionError

AWS Greengrass requires a service-level role permission to access other
services. The role must include the
C<AWSGreengrassResourceAccessRolePolicy> managed policy
(https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy$jsonEditor).

=item ExtractingBundleFailure

The robot application could not be extracted from the bundle.

=item FailureThresholdBreached

The percentage of robots that could not be updated exceeded the
percentage set for the deployment.

=item GreengrassDeploymentFailed

The robot application could not be deployed to the robot.

=item GreengrassGroupVersionDoesNotExist

The AWS Greengrass group or version associated with a robot is missing.

=item InternalServerError

An internal error has occurred. Retry your request, but if the problem
persists, contact us with details.

=item MissingRobotApplicationArchitecture

The robot application does not have a source that matches the
architecture of the robot.

=item MissingRobotDeploymentResource

One or more of the resources specified for the robot application are
missing. For example, does the robot application have the correct
launch package and launch file?

=item PostLaunchFileFailure

The post-launch script failed.

=item PreLaunchFileFailure

The pre-launch script failed.

=item ResourceNotFound

One or more deployment resources are missing. For example, do robot
application source bundles still exist?

=item RobotDeploymentNoResponse

There is no response from the robot. It might not be powered on or
connected to the internet.

=back


Valid values are: C<"ResourceNotFound">, C<"FailureThresholdBreached">, C<"RobotDeploymentNoResponse">, C<"GreengrassDeploymentFailed">, C<"MissingRobotArchitecture">, C<"MissingRobotApplicationArchitecture">, C<"MissingRobotDeploymentResource">, C<"GreengrassGroupVersionDoesNotExist">, C<"ExtractingBundleFailure">, C<"PreLaunchFileFailure">, C<"PostLaunchFileFailure">, C<"BadPermissionError">, C<"InternalServerError">
=head2 FailureReason => Str

The failure reason of the deployment job if it failed.


=head2 Fleet => Str

The target fleet for the deployment job.


=head2 Status => Str

The status of the deployment job.

Valid values are: C<"Pending">, C<"Preparing">, C<"InProgress">, C<"Failed">, C<"Succeeded">
=head2 Tags => L<Paws::Robomaker::TagMap>

The list of all tags added to the deployment job.


=head2 _request_id => Str


=cut

