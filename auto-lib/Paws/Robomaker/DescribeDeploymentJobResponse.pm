
package Paws::Robomaker::DescribeDeploymentJobResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_TagMap Robomaker_DeploymentApplicationConfig Robomaker_RobotDeployment Robomaker_DeploymentConfig/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has DeploymentApplicationConfigs => (is => 'ro', isa => ArrayRef[Robomaker_DeploymentApplicationConfig]);
  has DeploymentConfig => (is => 'ro', isa => Robomaker_DeploymentConfig);
  has FailureCode => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has Fleet => (is => 'ro', isa => Str);
  has RobotDeploymentSummary => (is => 'ro', isa => ArrayRef[Robomaker_RobotDeployment]);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailureCode' => {
                                  'type' => 'Str'
                                },
               'RobotDeploymentSummary' => {
                                             'class' => 'Paws::Robomaker::RobotDeployment',
                                             'type' => 'ArrayRef[Robomaker_RobotDeployment]'
                                           },
               'Arn' => {
                          'type' => 'Str'
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
               'DeploymentApplicationConfigs' => {
                                                   'class' => 'Paws::Robomaker::DeploymentApplicationConfig',
                                                   'type' => 'ArrayRef[Robomaker_DeploymentApplicationConfig]'
                                                 },
               'DeploymentConfig' => {
                                       'type' => 'Robomaker_DeploymentConfig',
                                       'class' => 'Paws::Robomaker::DeploymentConfig'
                                     }
             },
  'NameInRequest' => {
                       'Arn' => 'arn',
                       'RobotDeploymentSummary' => 'robotDeploymentSummary',
                       'FailureCode' => 'failureCode',
                       'Status' => 'status',
                       'Tags' => 'tags',
                       'DeploymentConfig' => 'deploymentConfig',
                       'FailureReason' => 'failureReason',
                       'Fleet' => 'fleet',
                       'DeploymentApplicationConfigs' => 'deploymentApplicationConfigs',
                       'CreatedAt' => 'createdAt'
                     }
}
;
    return $Params_map;
  }

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


=head2 DeploymentApplicationConfigs => ArrayRef[Robomaker_DeploymentApplicationConfig]

The deployment application configuration.


=head2 DeploymentConfig => Robomaker_DeploymentConfig

The deployment configuration.


=head2 FailureCode => Str

The deployment job failure code.

Valid values are: C<"ResourceNotFound">, C<"EnvironmentSetupError">, C<"EtagMismatch">, C<"FailureThresholdBreached">, C<"RobotDeploymentAborted">, C<"RobotDeploymentNoResponse">, C<"RobotAgentConnectionTimeout">, C<"GreengrassDeploymentFailed">, C<"MissingRobotArchitecture">, C<"MissingRobotApplicationArchitecture">, C<"MissingRobotDeploymentResource">, C<"GreengrassGroupVersionDoesNotExist">, C<"ExtractingBundleFailure">, C<"PreLaunchFileFailure">, C<"PostLaunchFileFailure">, C<"BadPermissionError">, C<"DownloadConditionFailed">, C<"InternalServerError">
=head2 FailureReason => Str

A short description of the reason why the deployment job failed.


=head2 Fleet => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 RobotDeploymentSummary => ArrayRef[Robomaker_RobotDeployment]

A list of robot deployment summaries.


=head2 Status => Str

The status of the deployment job.

Valid values are: C<"Pending">, C<"Preparing">, C<"InProgress">, C<"Failed">, C<"Succeeded">, C<"Canceled">
=head2 Tags => Robomaker_TagMap

The list of all tags added to the specified deployment job.


=head2 _request_id => Str


=cut

