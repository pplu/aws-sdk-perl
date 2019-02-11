
package Paws::Robomaker::DescribeDeploymentJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DeploymentApplicationConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::DeploymentApplicationConfig]', traits => ['NameInRequest'], request_name => 'deploymentApplicationConfigs');
  has DeploymentConfig => (is => 'ro', isa => 'Paws::Robomaker::DeploymentConfig', traits => ['NameInRequest'], request_name => 'deploymentConfig');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Fleet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleet');
  has RobotDeploymentSummary => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::RobotDeployment]', traits => ['NameInRequest'], request_name => 'robotDeploymentSummary');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeDeploymentJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the deployment job.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the deployment job was
created.


=head2 DeploymentApplicationConfigs => ArrayRef[L<Paws::Robomaker::DeploymentApplicationConfig>]

The deployment application configuration.


=head2 DeploymentConfig => L<Paws::Robomaker::DeploymentConfig>

The deployment configuration.


=head2 FailureCode => Str

The deployment job failure code.

Valid values are: C<"ResourceNotFound">, C<"FailureThresholdBreached">, C<"RobotDeploymentNoResponse">, C<"GreengrassDeploymentFailed">, C<"MissingRobotArchitecture">, C<"MissingRobotApplicationArchitecture">, C<"MissingRobotDeploymentResource">, C<"GreengrassGroupVersionDoesNotExist">, C<"ExtractingBundleFailure">, C<"PreLaunchFileFailure">, C<"PostLaunchFileFailure">, C<"BadPermissionError">, C<"InternalServerError">
=head2 FailureReason => Str

A short description of the reason why the deployment job failed.


=head2 Fleet => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 RobotDeploymentSummary => ArrayRef[L<Paws::Robomaker::RobotDeployment>]

A list of robot deployment summaries.


=head2 Status => Str

The status of the deployment job.

Valid values are: C<"Pending">, C<"Preparing">, C<"InProgress">, C<"Failed">, C<"Succeeded">
=head2 Tags => L<Paws::Robomaker::TagMap>

The list of all tags added to the specified deployment job.


=head2 _request_id => Str


=cut

