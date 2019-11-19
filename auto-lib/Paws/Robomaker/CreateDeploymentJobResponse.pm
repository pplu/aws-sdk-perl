
package Paws::Robomaker::CreateDeploymentJobResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_DeploymentConfig Robomaker_TagMap Robomaker_DeploymentApplicationConfig/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has DeploymentApplicationConfigs => (is => 'ro', isa => ArrayRef[Robomaker_DeploymentApplicationConfig]);
  has DeploymentConfig => (is => 'ro', isa => Robomaker_DeploymentConfig);
  has FailureCode => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has Fleet => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentApplicationConfigs' => {
                                                   'class' => 'Paws::Robomaker::DeploymentApplicationConfig',
                                                   'type' => 'ArrayRef[Robomaker_DeploymentApplicationConfig]'
                                                 },
               'Fleet' => {
                            'type' => 'Str'
                          },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'DeploymentConfig' => {
                                       'class' => 'Paws::Robomaker::DeploymentConfig',
                                       'type' => 'Robomaker_DeploymentConfig'
                                     },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'FailureCode' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Tags' => 'tags',
                       'FailureCode' => 'failureCode',
                       'Arn' => 'arn',
                       'FailureReason' => 'failureReason',
                       'Fleet' => 'fleet',
                       'CreatedAt' => 'createdAt',
                       'DeploymentApplicationConfigs' => 'deploymentApplicationConfigs',
                       'DeploymentConfig' => 'deploymentConfig'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateDeploymentJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the deployment job.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the fleet was created.


=head2 DeploymentApplicationConfigs => ArrayRef[Robomaker_DeploymentApplicationConfig]

The deployment application configuration.


=head2 DeploymentConfig => Robomaker_DeploymentConfig

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


Valid values are: C<"ResourceNotFound">, C<"EnvironmentSetupError">, C<"EtagMismatch">, C<"FailureThresholdBreached">, C<"RobotDeploymentAborted">, C<"RobotDeploymentNoResponse">, C<"RobotAgentConnectionTimeout">, C<"GreengrassDeploymentFailed">, C<"MissingRobotArchitecture">, C<"MissingRobotApplicationArchitecture">, C<"MissingRobotDeploymentResource">, C<"GreengrassGroupVersionDoesNotExist">, C<"ExtractingBundleFailure">, C<"PreLaunchFileFailure">, C<"PostLaunchFileFailure">, C<"BadPermissionError">, C<"DownloadConditionFailed">, C<"InternalServerError">
=head2 FailureReason => Str

The failure reason of the deployment job if it failed.


=head2 Fleet => Str

The target fleet for the deployment job.


=head2 Status => Str

The status of the deployment job.

Valid values are: C<"Pending">, C<"Preparing">, C<"InProgress">, C<"Failed">, C<"Succeeded">, C<"Canceled">
=head2 Tags => Robomaker_TagMap

The list of all tags added to the deployment job.


=head2 _request_id => Str


=cut

