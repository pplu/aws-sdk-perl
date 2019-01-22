
package Paws::SageMaker::CreateHyperParameterTuningJob;
  use Moose;
  has HyperParameterTuningJobConfig => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobConfig', required => 1);
  has HyperParameterTuningJobName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrainingJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTrainingJobDefinition', required => 1);
  has WarmStartConfig => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobWarmStartConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHyperParameterTuningJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateHyperParameterTuningJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHyperParameterTuningJob - Arguments for method CreateHyperParameterTuningJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHyperParameterTuningJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateHyperParameterTuningJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHyperParameterTuningJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateHyperParameterTuningJobResponse =
      $api . sagemaker->CreateHyperParameterTuningJob(
      HyperParameterTuningJobConfig => {
        HyperParameterTuningJobObjective => {
          MetricName => 'MyMetricName',    # min: 1, max: 255
          Type       => 'Maximize',        # values: Maximize, Minimize

        },
        ParameterRanges => {
          CategoricalParameterRanges => [
            {
              Name   => 'MyParameterKey',    # max: 256
              Values => [
                'MyParameterValue', ...      # max: 256
              ],                             # min: 1, max: 20

            },
            ...
          ],                                 # max: 20; OPTIONAL
          ContinuousParameterRanges => [
            {
              MaxValue => 'MyParameterValue',    # max: 256
              MinValue => 'MyParameterValue',    # max: 256
              Name     => 'MyParameterKey',      # max: 256

            },
            ...
          ],                                     # max: 20; OPTIONAL
          IntegerParameterRanges => [
            {
              MaxValue => 'MyParameterValue',    # max: 256
              MinValue => 'MyParameterValue',    # max: 256
              Name     => 'MyParameterKey',      # max: 256

            },
            ...
          ],                                     # max: 20; OPTIONAL
        },
        ResourceLimits => {
          MaxNumberOfTrainingJobs => 1,          # min: 1
          MaxParallelTrainingJobs => 1,          # min: 1

        },
        Strategy => 'Bayesian',                  # values: Bayesian
        TrainingJobEarlyStoppingType => 'Off',   # values: Off, Auto; OPTIONAL
      },
      HyperParameterTuningJobName => 'MyHyperParameterTuningJobName',
      TrainingJobDefinition       => {
        AlgorithmSpecification => {
          TrainingInputMode => 'Pipe',           # values: Pipe, File
          AlgorithmName     => 'MyArnOrName',    # min: 1, max: 170; OPTIONAL
          MetricDefinitions => [
            {
              Name  => 'MyMetricName',           # min: 1, max: 255
              Regex => 'MyMetricRegex',          # min: 1, max: 500

            },
            ...
          ],                                     # max: 20; OPTIONAL
          TrainingImage => 'MyAlgorithmImage',   # max: 255; OPTIONAL
        },
        OutputDataConfig => {
          S3OutputPath => 'MyS3Uri',             # max: 1024
          KmsKeyId     => 'MyKmsKeyId',          # max: 2048; OPTIONAL
        },
        ResourceConfig => {
          InstanceCount => 1,                    # min: 1
          InstanceType  => 'ml.m4.xlarge'
          , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
          VolumeSizeInGB => 1,               # min: 1
          VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        },
        RoleArn           => 'MyRoleArn',    # min: 20, max: 2048
        StoppingCondition => {
          MaxRuntimeInSeconds => 1,          # min: 1; OPTIONAL
        },
        EnableInterContainerTrafficEncryption => 1,    # OPTIONAL
        EnableNetworkIsolation                => 1,    # OPTIONAL
        InputDataConfig                       => [
          {
            ChannelName => 'MyChannelName',            # min: 1, max: 64
            DataSource  => {
              S3DataSource => {
                S3DataType => 'ManifestFile'
                ,    # values: ManifestFile, S3Prefix, AugmentedManifestFile
                S3Uri          => 'MyS3Uri',    # max: 1024
                AttributeNames => [
                  'MyAttributeName', ...        # min: 1, max: 256
                ],                              # max: 16; OPTIONAL
                S3DataDistributionType => 'FullyReplicated'
                ,    # values: FullyReplicated, ShardedByS3Key; OPTIONAL
              },

            },
            CompressionType => 'None',            # values: None, Gzip; OPTIONAL
            ContentType     => 'MyContentType',   # max: 256; OPTIONAL
            InputMode       => 'Pipe',            # values: Pipe, File
            RecordWrapperType => 'None',    # values: None, RecordIO; OPTIONAL
            ShuffleConfig     => {
              Seed => 1,

            },                              # OPTIONAL
          },
          ...
        ],                                  # min: 1, max: 8; OPTIONAL
        StaticHyperParameters => {
          'MyParameterKey' =>
            'MyParameterValue',             # key: max: 256, value: max: 256
        },    # max: 100; OPTIONAL
        VpcConfig => {
          SecurityGroupIds => [
            'MySecurityGroupId', ...    # max: 32
          ],                            # min: 1, max: 5
          Subnets => [
            'MySubnetId', ...           # max: 32
          ],                            # min: 1, max: 16

        },    # OPTIONAL
      },
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
      WarmStartConfig => {
        ParentHyperParameterTuningJobs => [
          {
            HyperParameterTuningJobName =>
              'MyHyperParameterTuningJobName',    # min: 1, max: 32
          },
          ...
        ],                                        # min: 1, max: 5
        WarmStartType => 'IdenticalDataAndAlgorithm'
        ,    # values: IdenticalDataAndAlgorithm, TransferLearning

      },    # OPTIONAL
      );

    # Results:
    my $HyperParameterTuningJobArn =
      $CreateHyperParameterTuningJobResponse->HyperParameterTuningJobArn;

   # Returns a L<Paws::SageMaker::CreateHyperParameterTuningJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateHyperParameterTuningJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HyperParameterTuningJobConfig => L<Paws::SageMaker::HyperParameterTuningJobConfig>

The HyperParameterTuningJobConfig object that describes the tuning job,
including the search strategy, the objective metric used to evaluate
training jobs, ranges of parameters to search, and resource limits for
the tuning job. For more information, see automatic-model-tuning



=head2 B<REQUIRED> HyperParameterTuningJobName => Str

The name of the tuning job. This name is the prefix for the names of
all training jobs that this tuning job launches. The name must be
unique within the same AWS account and AWS Region. The name must have {
} to { } characters. Valid characters are a-z, A-Z, 0-9, and : + = @ _
% - (hyphen). The name is not case sensitive.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your AWS
resources in different ways, for example, by purpose, owner, or
environment. For more information, see AWS Tagging Strategies
(https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).

Tags that you specify for the tuning job are also added to all training
jobs that the tuning job launches.



=head2 B<REQUIRED> TrainingJobDefinition => L<Paws::SageMaker::HyperParameterTrainingJobDefinition>

The HyperParameterTrainingJobDefinition object that describes the
training jobs that this tuning job launches, including static
hyperparameters, input data configuration, output data configuration,
resource configuration, and stopping condition.



=head2 WarmStartConfig => L<Paws::SageMaker::HyperParameterTuningJobWarmStartConfig>

Specifies the configuration for starting the hyperparameter tuning job
using one or more previous tuning jobs as a starting point. The results
of previous tuning jobs are used to inform which combinations of
hyperparameters to search over in the new tuning job.

All training jobs launched by the new hyperparameter tuning job are
evaluated by using the objective metric. If you specify
C<IDENTICAL_DATA_AND_ALGORITHM> as the C<WarmStartType> value for the
warm start configuration, the training job that performs the best in
the new tuning job is compared to the best training jobs from the
parent tuning jobs. From these, the training job that performs the best
as measured by the objective metric is returned as the overall best
training job.

All training jobs launched by parent hyperparameter tuning jobs and the
new hyperparameter tuning jobs count against the limit of training jobs
for the tuning job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHyperParameterTuningJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

