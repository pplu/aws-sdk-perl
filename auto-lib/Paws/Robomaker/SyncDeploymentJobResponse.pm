
package Paws::Robomaker::SyncDeploymentJobResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_DeploymentConfig Robomaker_DeploymentApplicationConfig/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has DeploymentApplicationConfigs => (is => 'ro', isa => ArrayRef[Robomaker_DeploymentApplicationConfig]);
  has DeploymentConfig => (is => 'ro', isa => Robomaker_DeploymentConfig);
  has FailureCode => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has Fleet => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailureCode' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Fleet' => {
                            'type' => 'Str'
                          },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'DeploymentApplicationConfigs' => {
                                                   'class' => 'Paws::Robomaker::DeploymentApplicationConfig',
                                                   'type' => 'ArrayRef[Robomaker_DeploymentApplicationConfig]'
                                                 },
               'DeploymentConfig' => {
                                       'class' => 'Paws::Robomaker::DeploymentConfig',
                                       'type' => 'Robomaker_DeploymentConfig'
                                     }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Arn' => 'arn',
                       'FailureCode' => 'failureCode',
                       'DeploymentConfig' => 'deploymentConfig',
                       'FailureReason' => 'failureReason',
                       'Fleet' => 'fleet',
                       'CreatedAt' => 'createdAt',
                       'DeploymentApplicationConfigs' => 'deploymentApplicationConfigs'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SyncDeploymentJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the synchronization request.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the fleet was created.


=head2 DeploymentApplicationConfigs => ArrayRef[Robomaker_DeploymentApplicationConfig]

Information about the deployment application configurations.


=head2 DeploymentConfig => Robomaker_DeploymentConfig

Information about the deployment configuration.


=head2 FailureCode => Str

The failure code if the job fails:

=over

=item InternalServiceError

Internal service error.

=item RobotApplicationCrash

Robot application exited abnormally.

=item SimulationApplicationCrash

Simulation application exited abnormally.

=item BadPermissionsRobotApplication

Robot application bundle could not be downloaded.

=item BadPermissionsSimulationApplication

Simulation application bundle could not be downloaded.

=item BadPermissionsS3Output

Unable to publish outputs to customer-provided S3 bucket.

=item BadPermissionsCloudwatchLogs

Unable to publish logs to customer-provided CloudWatch Logs resource.

=item SubnetIpLimitExceeded

Subnet IP limit exceeded.

=item ENILimitExceeded

ENI limit exceeded.

=item BadPermissionsUserCredentials

Unable to use the Role provided.

=item InvalidBundleRobotApplication

Robot bundle cannot be extracted (invalid format, bundling error, or
other issue).

=item InvalidBundleSimulationApplication

Simulation bundle cannot be extracted (invalid format, bundling error,
or other issue).

=item RobotApplicationVersionMismatchedEtag

Etag for RobotApplication does not match value during version creation.

=item SimulationApplicationVersionMismatchedEtag

Etag for SimulationApplication does not match value during version
creation.

=back


Valid values are: C<"ResourceNotFound">, C<"EnvironmentSetupError">, C<"EtagMismatch">, C<"FailureThresholdBreached">, C<"RobotDeploymentAborted">, C<"RobotDeploymentNoResponse">, C<"RobotAgentConnectionTimeout">, C<"GreengrassDeploymentFailed">, C<"MissingRobotArchitecture">, C<"MissingRobotApplicationArchitecture">, C<"MissingRobotDeploymentResource">, C<"GreengrassGroupVersionDoesNotExist">, C<"ExtractingBundleFailure">, C<"PreLaunchFileFailure">, C<"PostLaunchFileFailure">, C<"BadPermissionError">, C<"DownloadConditionFailed">, C<"InternalServerError">
=head2 FailureReason => Str

The failure reason if the job fails.


=head2 Fleet => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 Status => Str

The status of the synchronization job.

Valid values are: C<"Pending">, C<"Preparing">, C<"InProgress">, C<"Failed">, C<"Succeeded">, C<"Canceled">
=head2 _request_id => Str


=cut

