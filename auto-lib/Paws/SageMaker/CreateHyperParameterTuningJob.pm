
package Paws::SageMaker::CreateHyperParameterTuningJob;
  use Moose;
  has HyperParameterTuningJobConfig => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobConfig', required => 1);
  has HyperParameterTuningJobName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrainingJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTrainingJobDefinition', required => 1);

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

    my $sagemaker = Paws->service('SageMaker');
    my $CreateHyperParameterTuningJobResponse =
      $sagemaker->CreateHyperParameterTuningJob(
      HyperParameterTuningJobConfig => {
        Strategy       => 'Bayesian',    # values: Bayesian
        ResourceLimits => {
          MaxParallelTrainingJobs => 1,    # min: 1,
          MaxNumberOfTrainingJobs => 1,    # min: 1,

        },
        HyperParameterTuningJobObjective => {
          Type       => 'Maximize',        # values: Maximize, Minimize
          MetricName => 'MyMetricName',    # min: 1, max: 255

        },
        ParameterRanges => {
          CategoricalParameterRanges => [
            {
              Values => [
                'MyParameterValue', ...    # max: 256
              ],                           # min: 1, max: 20
              Name => 'MyParameterKey',    # max: 256

            },
            ...
          ],                               # max: 20; OPTIONAL
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

      },
      HyperParameterTuningJobName => 'MyHyperParameterTuningJobName',
      TrainingJobDefinition       => {
        ResourceConfig => {
          InstanceType => 'ml.m4.xlarge'
          , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
          VolumeSizeInGB => 1,               # min: 1,
          InstanceCount  => 1,               # min: 1,
          VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        },
        OutputDataConfig => {
          S3OutputPath => 'MyS3Uri',         # max: 1024
          KmsKeyId     => 'MyKmsKeyId',      # max: 2048; OPTIONAL
        },
        AlgorithmSpecification => {
          TrainingImage     => 'MyAlgorithmImage',    # max: 255
          TrainingInputMode => 'Pipe',                # values: Pipe, File
          MetricDefinitions => [
            {
              Regex => 'MyMetricRegex',               # min: 1, max: 500
              Name  => 'MyMetricName',                # min: 1, max: 255

            },
            ...
          ],                                          # max: 20; OPTIONAL
        },
        StoppingCondition => {
          MaxRuntimeInSeconds => 1,                   # min: 1, ; OPTIONAL
        },
        RoleArn         => 'MyRoleArn',               # min: 20, max: 2048
        InputDataConfig => [
          {
            DataSource => {
              S3DataSource => {
                S3Uri      => 'MyS3Uri',        # max: 1024
                S3DataType => 'ManifestFile',   # values: ManifestFile, S3Prefix
                S3DataDistributionType => 'FullyReplicated'
                ,    # values: FullyReplicated, ShardedByS3Key; OPTIONAL
              },

            },
            ChannelName     => 'MyChannelName',   # min: 1, max: 64
            ContentType     => 'MyContentType',   # max: 256; OPTIONAL
            CompressionType => 'None',            # values: None, Gzip; OPTIONAL
            RecordWrapperType => 'None',    # values: None, RecordIO; OPTIONAL
          },
          ...
        ],                                  # min: 1, max: 8
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
      );

    # Results:
    my $HyperParameterTuningJobArn =
      $CreateHyperParameterTuningJobResponse->HyperParameterTuningJobArn;

   # Returns a L<Paws::SageMaker::CreateHyperParameterTuningJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HyperParameterTuningJobConfig => L<Paws::SageMaker::HyperParameterTuningJobConfig>

The object that describes the tuning job, including the search
strategy, metric used to evaluate training jobs, ranges of parameters
to search, and resource limits for the tuning job.



=head2 B<REQUIRED> HyperParameterTuningJobName => Str

The name of the tuning job. This name is the prefix for the names of
all training jobs that this tuning job launches. The name must be
unique within the same AWS account and AWS Region. Names are not case
sensitive, and must be between 1-32 characters.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your AWS
resources in different ways, for example, by purpose, owner, or
environment. For more information, see Using Cost Allocation Tags
(http://docs.aws.amazon.com//awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.



=head2 B<REQUIRED> TrainingJobDefinition => L<Paws::SageMaker::HyperParameterTrainingJobDefinition>

The object that describes the training jobs that this tuning job
launches, including static hyperparameters, input data configuration,
output data configuration, resource configuration, and stopping
condition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHyperParameterTuningJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

