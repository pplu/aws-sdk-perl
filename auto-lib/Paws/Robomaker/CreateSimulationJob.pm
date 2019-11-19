
package Paws::Robomaker::CreateSimulationJob;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Robomaker::Types qw/Robomaker_OutputLocation Robomaker_VPCConfig Robomaker_SimulationApplicationConfig Robomaker_DataSourceConfig Robomaker_TagMap Robomaker_RobotApplicationConfig Robomaker_LoggingConfig/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has DataSources => (is => 'ro', isa => ArrayRef[Robomaker_DataSourceConfig], predicate => 1);
  has FailureBehavior => (is => 'ro', isa => Str, predicate => 1);
  has IamRole => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LoggingConfig => (is => 'ro', isa => Robomaker_LoggingConfig, predicate => 1);
  has MaxJobDurationInSeconds => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has OutputLocation => (is => 'ro', isa => Robomaker_OutputLocation, predicate => 1);
  has RobotApplications => (is => 'ro', isa => ArrayRef[Robomaker_RobotApplicationConfig], predicate => 1);
  has SimulationApplications => (is => 'ro', isa => ArrayRef[Robomaker_SimulationApplicationConfig], predicate => 1);
  has Tags => (is => 'ro', isa => Robomaker_TagMap, predicate => 1);
  has VpcConfig => (is => 'ro', isa => Robomaker_VPCConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSimulationJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/createSimulationJob');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Robomaker::CreateSimulationJobResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'OutputLocation' => 'outputLocation',
                       'IamRole' => 'iamRole',
                       'SimulationApplications' => 'simulationApplications',
                       'ClientRequestToken' => 'clientRequestToken',
                       'DataSources' => 'dataSources',
                       'VpcConfig' => 'vpcConfig',
                       'RobotApplications' => 'robotApplications',
                       'MaxJobDurationInSeconds' => 'maxJobDurationInSeconds',
                       'LoggingConfig' => 'loggingConfig',
                       'FailureBehavior' => 'failureBehavior'
                     },
  'IsRequired' => {
                    'IamRole' => 1,
                    'MaxJobDurationInSeconds' => 1
                  },
  'types' => {
               'SimulationApplications' => {
                                             'class' => 'Paws::Robomaker::SimulationApplicationConfig',
                                             'type' => 'ArrayRef[Robomaker_SimulationApplicationConfig]'
                                           },
               'IamRole' => {
                              'type' => 'Str'
                            },
               'DataSources' => {
                                  'class' => 'Paws::Robomaker::DataSourceConfig',
                                  'type' => 'ArrayRef[Robomaker_DataSourceConfig]'
                                },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'OutputLocation' => {
                                     'type' => 'Robomaker_OutputLocation',
                                     'class' => 'Paws::Robomaker::OutputLocation'
                                   },
               'Tags' => {
                           'type' => 'Robomaker_TagMap',
                           'class' => 'Paws::Robomaker::TagMap'
                         },
               'MaxJobDurationInSeconds' => {
                                              'type' => 'Int'
                                            },
               'RobotApplications' => {
                                        'class' => 'Paws::Robomaker::RobotApplicationConfig',
                                        'type' => 'ArrayRef[Robomaker_RobotApplicationConfig]'
                                      },
               'LoggingConfig' => {
                                    'class' => 'Paws::Robomaker::LoggingConfig',
                                    'type' => 'Robomaker_LoggingConfig'
                                  },
               'FailureBehavior' => {
                                      'type' => 'Str'
                                    },
               'VpcConfig' => {
                                'type' => 'Robomaker_VPCConfig',
                                'class' => 'Paws::Robomaker::VPCConfig'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateSimulationJob - Arguments for method CreateSimulationJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSimulationJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateSimulationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSimulationJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateSimulationJobResponse = $robomaker->CreateSimulationJob(
      IamRole                 => 'MyIamRole',
      MaxJobDurationInSeconds => 1,
      ClientRequestToken      => 'MyClientRequestToken',    # OPTIONAL
      DataSources             => [
        {
          Name     => 'MyName',                             # min: 1, max: 255
          S3Bucket => 'MyS3Bucket',                         # min: 3, max: 63
          S3Keys   => [
            'MyS3Key', ...                                  # min: 1, max: 1024
          ],                                                # min: 1, max: 100

        },
        ...
      ],                                                    # OPTIONAL
      FailureBehavior => 'Fail',                            # OPTIONAL
      LoggingConfig   => {
        RecordAllRosTopics => 1,

      },                                                    # OPTIONAL
      OutputLocation => {
        S3Bucket => 'MyS3Bucket',                           # min: 3, max: 63
        S3Prefix => 'MyS3Key',                              # min: 1, max: 1024
      },    # OPTIONAL
      RobotApplications => [
        {
          Application  => 'MyArn',    # min: 1, max: 1224
          LaunchConfig => {
            LaunchFile           => 'MyCommand',    # min: 1, max: 1024
            PackageName          => 'MyCommand',    # min: 1, max: 1024
            EnvironmentVariables => {
              'MyEnvironmentVariableKey' => 'MyEnvironmentVariableValue'
              ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
            },    # max: 16; OPTIONAL
            PortForwardingConfig => {
              PortMappings => [
                {
                  ApplicationPort  => 1,    # min: 1024, max: 65535
                  JobPort          => 1,    # min: 1, max: 65535
                  EnableOnPublicIp => 1,    # OPTIONAL
                },
                ...
              ],                            # max: 10; OPTIONAL
            },    # OPTIONAL
          },
          ApplicationVersion => 'MyVersion',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      SimulationApplications => [
        {
          Application  => 'MyArn',              # min: 1, max: 1224
          LaunchConfig => {
            LaunchFile           => 'MyCommand',    # min: 1, max: 1024
            PackageName          => 'MyCommand',    # min: 1, max: 1024
            EnvironmentVariables => {
              'MyEnvironmentVariableKey' => 'MyEnvironmentVariableValue'
              ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
            },    # max: 16; OPTIONAL
            PortForwardingConfig => {
              PortMappings => [
                {
                  ApplicationPort  => 1,    # min: 1024, max: 65535
                  JobPort          => 1,    # min: 1, max: 65535
                  EnableOnPublicIp => 1,    # OPTIONAL
                },
                ...
              ],                            # max: 10; OPTIONAL
            },    # OPTIONAL
          },
          ApplicationVersion => 'MyVersion',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VpcConfig => {
        Subnets => [
          'MyNonEmptyString', ...    # min: 1
        ],                           # min: 1, max: 16
        AssignPublicIp => 1,         # OPTIONAL
        SecurityGroups => [
          'MyNonEmptyString', ...    # min: 1
        ],                           # min: 1, max: 5; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateSimulationJobResponse->Arn;
    my $ClientRequestToken = $CreateSimulationJobResponse->ClientRequestToken;
    my $DataSources        = $CreateSimulationJobResponse->DataSources;
    my $FailureBehavior    = $CreateSimulationJobResponse->FailureBehavior;
    my $FailureCode        = $CreateSimulationJobResponse->FailureCode;
    my $IamRole            = $CreateSimulationJobResponse->IamRole;
    my $LastStartedAt      = $CreateSimulationJobResponse->LastStartedAt;
    my $LastUpdatedAt      = $CreateSimulationJobResponse->LastUpdatedAt;
    my $LoggingConfig      = $CreateSimulationJobResponse->LoggingConfig;
    my $MaxJobDurationInSeconds =
      $CreateSimulationJobResponse->MaxJobDurationInSeconds;
    my $OutputLocation    = $CreateSimulationJobResponse->OutputLocation;
    my $RobotApplications = $CreateSimulationJobResponse->RobotApplications;
    my $SimulationApplications =
      $CreateSimulationJobResponse->SimulationApplications;
    my $SimulationTimeMillis =
      $CreateSimulationJobResponse->SimulationTimeMillis;
    my $Status    = $CreateSimulationJobResponse->Status;
    my $Tags      = $CreateSimulationJobResponse->Tags;
    my $VpcConfig = $CreateSimulationJobResponse->VpcConfig;

    # Returns a L<Paws::Robomaker::CreateSimulationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateSimulationJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 DataSources => ArrayRef[Robomaker_DataSourceConfig]

The data sources for the simulation job.

There is a limit of 100 files and a combined size of 25GB for all
C<DataSourceConfig> objects.



=head2 FailureBehavior => Str

The failure behavior the simulation job.

=over

=item Continue

Restart the simulation job in the same host instance.

=item Fail

Stop the simulation job and terminate the instance.

=back


Valid values are: C<"Fail">, C<"Continue">

=head2 B<REQUIRED> IamRole => Str

The IAM role name that allows the simulation instance to call the AWS
APIs that are specified in its associated policies on your behalf. This
is how credentials are passed in to your simulation job.



=head2 LoggingConfig => Robomaker_LoggingConfig

The logging configuration.



=head2 B<REQUIRED> MaxJobDurationInSeconds => Int

The maximum simulation job duration in seconds (up to 14 days or
1,209,600 seconds. When C<maxJobDurationInSeconds> is reached, the
simulation job will status will transition to C<Completed>.



=head2 OutputLocation => Robomaker_OutputLocation

Location for output files generated by the simulation job.



=head2 RobotApplications => ArrayRef[Robomaker_RobotApplicationConfig]

The robot application to use in the simulation job.



=head2 SimulationApplications => ArrayRef[Robomaker_SimulationApplicationConfig]

The simulation application to use in the simulation job.



=head2 Tags => Robomaker_TagMap

A map that contains tag keys and tag values that are attached to the
simulation job.



=head2 VpcConfig => Robomaker_VPCConfig

If your simulation job accesses resources in a VPC, you provide this
parameter identifying the list of security group IDs and subnet IDs.
These must belong to the same VPC. You must provide at least one
security group and one subnet ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSimulationJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

