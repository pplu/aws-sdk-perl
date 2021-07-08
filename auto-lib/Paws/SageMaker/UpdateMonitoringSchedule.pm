
package Paws::SageMaker::UpdateMonitoringSchedule;
  use Moose;
  has MonitoringScheduleConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringScheduleConfig', required => 1);
  has MonitoringScheduleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMonitoringSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateMonitoringScheduleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateMonitoringSchedule - Arguments for method UpdateMonitoringSchedule on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMonitoringSchedule on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateMonitoringSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMonitoringSchedule.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateMonitoringScheduleResponse =
      $api . sagemaker->UpdateMonitoringSchedule(
      MonitoringScheduleConfig => {
        MonitoringJobDefinition => {
          MonitoringAppSpecification => {
            ImageUri           => 'MyImageUri',    # max: 255
            ContainerArguments => [
              'MyContainerArgument', ...           # max: 256
            ],    # min: 1, max: 50; OPTIONAL
            ContainerEntrypoint => [
              'MyContainerEntrypointString', ...    # max: 256
            ],    # min: 1, max: 100; OPTIONAL
            PostAnalyticsProcessorSourceUri => 'MyS3Uri',  # max: 1024; OPTIONAL
            RecordPreprocessorSourceUri     => 'MyS3Uri',  # max: 1024; OPTIONAL
          },
          MonitoringInputs => [
            {
              EndpointInput => {
                EndpointName  => 'MyEndpointName',           # max: 63
                LocalPath     => 'MyProcessingLocalPath',    # max: 256
                EndTimeOffset =>
                  'MyMonitoringTimeOffsetString',    # min: 1, max: 15; OPTIONAL
                FeaturesAttribute             => 'MyString',         # OPTIONAL
                InferenceAttribute            => 'MyString',         # OPTIONAL
                ProbabilityAttribute          => 'MyString',         # OPTIONAL
                ProbabilityThresholdAttribute => 1,                  # OPTIONAL
                S3DataDistributionType        => 'FullyReplicated'
                ,    # values: FullyReplicated, ShardedByS3Key; OPTIONAL
                S3InputMode     => 'Pipe',    # values: Pipe, File; OPTIONAL
                StartTimeOffset =>
                  'MyMonitoringTimeOffsetString',    # min: 1, max: 15; OPTIONAL
              },

            },
            ...
          ],    # min: 1, max: 1
          MonitoringOutputConfig => {
            MonitoringOutputs => [
              {
                S3Output => {
                  LocalPath    => 'MyProcessingLocalPath',    # max: 256
                  S3Uri        => 'MyMonitoringS3Uri',        # max: 512
                  S3UploadMode =>
                    'Continuous',    # values: Continuous, EndOfJob; OPTIONAL
                },

              },
              ...
            ],    # min: 1, max: 1
            KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
          },
          MonitoringResources => {
            ClusterConfig => {
              InstanceCount => 1,                # min: 1, max: 100
              InstanceType  => 'ml.t3.medium'
              , # values: ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
              VolumeSizeInGB => 1,               # min: 1, max: 16384
              VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
            },

          },
          RoleArn        => 'MyRoleArn',         # min: 20, max: 2048
          BaselineConfig => {
            BaseliningJobName =>
              'MyProcessingJobName',             # min: 1, max: 63; OPTIONAL
            ConstraintsResource => {
              S3Uri => 'MyS3Uri',                # max: 1024; OPTIONAL
            },    # OPTIONAL
            StatisticsResource => {
              S3Uri => 'MyS3Uri',    # max: 1024; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Environment => {
            'MyProcessingEnvironmentKey' =>
              'MyProcessingEnvironmentValue',   # key: max: 256, value: max: 256
          },    # max: 50; OPTIONAL
          NetworkConfig => {
            EnableInterContainerTrafficEncryption => 1,    # OPTIONAL
            EnableNetworkIsolation                => 1,    # OPTIONAL
            VpcConfig                             => {
              SecurityGroupIds => [
                'MySecurityGroupId', ...                   # max: 32
              ],    # min: 1, max: 5
              Subnets => [
                'MySubnetId', ...    # max: 32
              ],    # min: 1, max: 16

            },    # OPTIONAL
          },    # OPTIONAL
          StoppingCondition => {
            MaxRuntimeInSeconds => 1,    # min: 1, max: 86400

          },    # OPTIONAL
        },    # OPTIONAL
        MonitoringJobDefinitionName =>
          'MyMonitoringJobDefinitionName',    # min: 1, max: 63; OPTIONAL
        MonitoringType => 'DataQuality'
        , # values: DataQuality, ModelQuality, ModelBias, ModelExplainability; OPTIONAL
        ScheduleConfig => {
          ScheduleExpression => 'MyScheduleExpression',    # min: 1, max: 256

        },    # OPTIONAL
      },
      MonitoringScheduleName => 'MyMonitoringScheduleName',

      );

    # Results:
    my $MonitoringScheduleArn =
      $UpdateMonitoringScheduleResponse->MonitoringScheduleArn;

    # Returns a L<Paws::SageMaker::UpdateMonitoringScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateMonitoringSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitoringScheduleConfig => L<Paws::SageMaker::MonitoringScheduleConfig>

The configuration object that specifies the monitoring schedule and
defines the monitoring job.



=head2 B<REQUIRED> MonitoringScheduleName => Str

The name of the monitoring schedule. The name must be unique within an
Amazon Web Services Region within an Amazon Web Services account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMonitoringSchedule in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

