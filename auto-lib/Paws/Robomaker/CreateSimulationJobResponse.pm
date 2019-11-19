
package Paws::Robomaker::CreateSimulationJobResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Robomaker::Types qw/Robomaker_VPCConfigResponse Robomaker_SimulationApplicationConfig Robomaker_OutputLocation Robomaker_DataSource Robomaker_LoggingConfig Robomaker_TagMap Robomaker_RobotApplicationConfig/;
  has Arn => (is => 'ro', isa => Str);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has DataSources => (is => 'ro', isa => ArrayRef[Robomaker_DataSource]);
  has FailureBehavior => (is => 'ro', isa => Str);
  has FailureCode => (is => 'ro', isa => Str);
  has IamRole => (is => 'ro', isa => Str);
  has LastStartedAt => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has LoggingConfig => (is => 'ro', isa => Robomaker_LoggingConfig);
  has MaxJobDurationInSeconds => (is => 'ro', isa => Int);
  has OutputLocation => (is => 'ro', isa => Robomaker_OutputLocation);
  has RobotApplications => (is => 'ro', isa => ArrayRef[Robomaker_RobotApplicationConfig]);
  has SimulationApplications => (is => 'ro', isa => ArrayRef[Robomaker_SimulationApplicationConfig]);
  has SimulationTimeMillis => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);
  has VpcConfig => (is => 'ro', isa => Robomaker_VPCConfigResponse);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Status' => 'status',
                       'SimulationApplications' => 'simulationApplications',
                       'IamRole' => 'iamRole',
                       'DataSources' => 'dataSources',
                       'ClientRequestToken' => 'clientRequestToken',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'MaxJobDurationInSeconds' => 'maxJobDurationInSeconds',
                       'FailureBehavior' => 'failureBehavior',
                       'OutputLocation' => 'outputLocation',
                       'Tags' => 'tags',
                       'SimulationTimeMillis' => 'simulationTimeMillis',
                       'Arn' => 'arn',
                       'LastStartedAt' => 'lastStartedAt',
                       'FailureCode' => 'failureCode',
                       'VpcConfig' => 'vpcConfig',
                       'LoggingConfig' => 'loggingConfig',
                       'RobotApplications' => 'robotApplications'
                     },
  'types' => {
               'LoggingConfig' => {
                                    'class' => 'Paws::Robomaker::LoggingConfig',
                                    'type' => 'Robomaker_LoggingConfig'
                                  },
               'RobotApplications' => {
                                        'type' => 'ArrayRef[Robomaker_RobotApplicationConfig]',
                                        'class' => 'Paws::Robomaker::RobotApplicationConfig'
                                      },
               'VpcConfig' => {
                                'class' => 'Paws::Robomaker::VPCConfigResponse',
                                'type' => 'Robomaker_VPCConfigResponse'
                              },
               'FailureCode' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'LastStartedAt' => {
                                    'type' => 'Str'
                                  },
               'OutputLocation' => {
                                     'class' => 'Paws::Robomaker::OutputLocation',
                                     'type' => 'Robomaker_OutputLocation'
                                   },
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'SimulationTimeMillis' => {
                                           'type' => 'Int'
                                         },
               'FailureBehavior' => {
                                      'type' => 'Str'
                                    },
               'MaxJobDurationInSeconds' => {
                                              'type' => 'Int'
                                            },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'DataSources' => {
                                  'type' => 'ArrayRef[Robomaker_DataSource]',
                                  'class' => 'Paws::Robomaker::DataSource'
                                },
               'SimulationApplications' => {
                                             'type' => 'ArrayRef[Robomaker_SimulationApplicationConfig]',
                                             'class' => 'Paws::Robomaker::SimulationApplicationConfig'
                                           },
               'IamRole' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateSimulationJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the simulation job.


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 DataSources => ArrayRef[Robomaker_DataSource]

The data sources for the simulation job.


=head2 FailureBehavior => Str

the failure behavior for the simulation job.

Valid values are: C<"Fail">, C<"Continue">
=head2 FailureCode => Str

The failure code of the simulation job if it failed:

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


Valid values are: C<"InternalServiceError">, C<"RobotApplicationCrash">, C<"SimulationApplicationCrash">, C<"BadPermissionsRobotApplication">, C<"BadPermissionsSimulationApplication">, C<"BadPermissionsS3Object">, C<"BadPermissionsS3Output">, C<"BadPermissionsCloudwatchLogs">, C<"SubnetIpLimitExceeded">, C<"ENILimitExceeded">, C<"BadPermissionsUserCredentials">, C<"InvalidBundleRobotApplication">, C<"InvalidBundleSimulationApplication">, C<"InvalidS3Resource">, C<"MismatchedEtag">, C<"RobotApplicationVersionMismatchedEtag">, C<"SimulationApplicationVersionMismatchedEtag">, C<"ResourceNotFound">, C<"InvalidInput">, C<"WrongRegionS3Bucket">, C<"WrongRegionS3Output">, C<"WrongRegionRobotApplication">, C<"WrongRegionSimulationApplication">
=head2 IamRole => Str

The IAM role that allows the simulation job to call the AWS APIs that
are specified in its associated policies on your behalf.


=head2 LastStartedAt => Str

The time, in milliseconds since the epoch, when the simulation job was
last started.


=head2 LastUpdatedAt => Str

The time, in milliseconds since the epoch, when the simulation job was
last updated.


=head2 LoggingConfig => Robomaker_LoggingConfig

The logging configuration.


=head2 MaxJobDurationInSeconds => Int

The maximum simulation job duration in seconds.


=head2 OutputLocation => Robomaker_OutputLocation

Simulation job output files location.


=head2 RobotApplications => ArrayRef[Robomaker_RobotApplicationConfig]

The robot application used by the simulation job.


=head2 SimulationApplications => ArrayRef[Robomaker_SimulationApplicationConfig]

The simulation application used by the simulation job.


=head2 SimulationTimeMillis => Int

The simulation job execution duration in milliseconds.


=head2 Status => Str

The status of the simulation job.

Valid values are: C<"Pending">, C<"Preparing">, C<"Running">, C<"Restarting">, C<"Completed">, C<"Failed">, C<"RunningFailed">, C<"Terminating">, C<"Terminated">, C<"Canceled">
=head2 Tags => Robomaker_TagMap

The list of all tags added to the simulation job.


=head2 VpcConfig => Robomaker_VPCConfigResponse

Information about the vpc configuration.


=head2 _request_id => Str


=cut

