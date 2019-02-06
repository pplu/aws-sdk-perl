
package Paws::SageMaker::CreateAlgorithm;
  use Moose;
  has AlgorithmDescription => (is => 'ro', isa => 'Str');
  has AlgorithmName => (is => 'ro', isa => 'Str', required => 1);
  has CertifyForMarketplace => (is => 'ro', isa => 'Bool');
  has InferenceSpecification => (is => 'ro', isa => 'Paws::SageMaker::InferenceSpecification');
  has TrainingSpecification => (is => 'ro', isa => 'Paws::SageMaker::TrainingSpecification', required => 1);
  has ValidationSpecification => (is => 'ro', isa => 'Paws::SageMaker::AlgorithmValidationSpecification');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlgorithm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateAlgorithmOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAlgorithm - Arguments for method CreateAlgorithm on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlgorithm on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateAlgorithm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlgorithm.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateAlgorithmOutput = $api . sagemaker->CreateAlgorithm(
      AlgorithmName         => 'MyEntityName',
      TrainingSpecification => {
        SupportedTrainingInstanceTypes => [
          'ml.m4.xlarge',
          ... # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
        ],
        TrainingChannels => [
          {
            Name                  => 'MyChannelName',    # min: 1, max: 64
            SupportedContentTypes => [
              'MyContentType', ...                       # max: 256
            ],
            SupportedInputModes => [
              'Pipe', ...                                # values: Pipe, File
            ],                                           # min: 1
            Description => 'MyEntityDescription',        # max: 1024; OPTIONAL
            IsRequired  => 1,                            # OPTIONAL
            SupportedCompressionTypes => [
              'None', ...                                # values: None, Gzip
            ],                                           # OPTIONAL
          },
          ...
        ],                                               # min: 1, max: 8
        TrainingImage     => 'MyImage',                  # max: 255
        MetricDefinitions => [
          {
            Name  => 'MyMetricName',                     # min: 1, max: 255
            Regex => 'MyMetricRegex',                    # min: 1, max: 500

          },
          ...
        ],                                               # max: 20; OPTIONAL
        SupportedHyperParameters => [
          {
            Name => 'MyParameterName',                   # max: 256
            Type =>
              'Integer',    # values: Integer, Continuous, Categorical, FreeText
            DefaultValue => 'MyParameterValue',       # max: 256
            Description  => 'MyEntityDescription',    # max: 1024; OPTIONAL
            IsRequired   => 1,                        # OPTIONAL
            IsTunable    => 1,                        # OPTIONAL
            Range        => {
              CategoricalParameterRangeSpecification => {
                Values => [
                  'MyParameterValue', ...             # max: 256
                ],                                    # min: 1, max: 20

              },    # OPTIONAL
              ContinuousParameterRangeSpecification => {
                MaxValue => 'MyParameterValue',    # max: 256
                MinValue => 'MyParameterValue',    # max: 256

              },    # OPTIONAL
              IntegerParameterRangeSpecification => {
                MaxValue => 'MyParameterValue',    # max: 256
                MinValue => 'MyParameterValue',    # max: 256

              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # max: 100; OPTIONAL
        SupportedTuningJobObjectiveMetrics => [
          {
            MetricName => 'MyMetricName',    # min: 1, max: 255
            Type       => 'Maximize',        # values: Maximize, Minimize

          },
          ...
        ],                                   # OPTIONAL
        SupportsDistributedTraining => 1,                  # OPTIONAL
        TrainingImageDigest         => 'MyImageDigest',    # max: 72; OPTIONAL
      },
      AlgorithmDescription   => 'MyEntityDescription',     # OPTIONAL
      CertifyForMarketplace  => 1,                         # OPTIONAL
      InferenceSpecification => {
        Containers => [
          {
            Image             => 'MyImage',                # max: 255
            ContainerHostname => 'MyContainerHostname',    # max: 63; OPTIONAL
            ImageDigest       => 'MyImageDigest',          # max: 72; OPTIONAL
            ModelDataUrl      => 'MyUrl',                  # max: 1024; OPTIONAL
            ProductId         => 'MyProductId',            # OPTIONAL
          },
          ...
        ],                                                 # min: 1, max: 1
        SupportedContentTypes => [
          'MyContentType', ...                             # max: 256
        ],
        SupportedRealtimeInferenceInstanceTypes => [
          'ml.t2.medium',
          ... # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
        ],
        SupportedResponseMIMETypes => [
          'MyResponseMIMEType', ...    # max: 1024
        ],
        SupportedTransformInstanceTypes => [
          'ml.m4.xlarge',
          ... # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
        ],    # min: 1

      },    # OPTIONAL
      ValidationSpecification => {
        ValidationProfiles => [
          {
            ProfileName           => 'MyEntityName',    # min: 1, max: 63
            TrainingJobDefinition => {
              InputDataConfig => [
                {
                  ChannelName => 'MyChannelName',       # min: 1, max: 64
                  DataSource  => {
                    S3DataSource => {
                      S3DataType => 'ManifestFile'
                      ,  # values: ManifestFile, S3Prefix, AugmentedManifestFile
                      S3Uri          => 'MyS3Uri',    # max: 1024
                      AttributeNames => [
                        'MyAttributeName', ...        # min: 1, max: 256
                      ],                              # max: 16; OPTIONAL
                      S3DataDistributionType => 'FullyReplicated'
                      ,    # values: FullyReplicated, ShardedByS3Key; OPTIONAL
                    },

                  },
                  CompressionType => 'None',             # values: None, Gzip
                  ContentType     => 'MyContentType',    # max: 256
                  InputMode       => 'Pipe',             # values: Pipe, File
                  RecordWrapperType =>
                    'None',    # values: None, RecordIO; OPTIONAL
                  ShuffleConfig => {
                    Seed => 1,

                  },           # OPTIONAL
                },
                ...
              ],               # min: 1, max: 8
              OutputDataConfig => {
                S3OutputPath => 'MyS3Uri',       # max: 1024
                KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
              },
              ResourceConfig => {
                InstanceCount => 1,               # min: 1
                InstanceType  => 'ml.m4.xlarge'
                , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
                VolumeSizeInGB => 1,               # min: 1
                VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
              },
              StoppingCondition => {
                MaxRuntimeInSeconds => 1,          # min: 1; OPTIONAL
              },
              TrainingInputMode => 'Pipe',         # values: Pipe, File
              HyperParameters   => {
                'MyParameterKey' =>
                  'MyParameterValue',    # key: max: 256, value: max: 256
              },    # max: 100; OPTIONAL
            },
            TransformJobDefinition => {
              TransformInput => {
                DataSource => {
                  S3DataSource => {
                    S3DataType => 'ManifestFile'
                    ,    # values: ManifestFile, S3Prefix, AugmentedManifestFile
                    S3Uri => 'MyS3Uri',    # max: 1024

                  },

                },
                CompressionType => 'None',             # values: None, Gzip
                ContentType     => 'MyContentType',    # max: 256
                SplitType =>
                  'None',    # values: None, Line, RecordIO, TFRecord; OPTIONAL
              },
              TransformOutput => {
                S3OutputPath => 'MyS3Uri',       # max: 1024
                Accept       => 'MyAccept',      # max: 256; OPTIONAL
                AssembleWith => 'None',          # values: None, Line; OPTIONAL
                KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
              },
              TransformResources => {
                InstanceCount => 1,               # min: 1
                InstanceType  => 'ml.m4.xlarge'
                , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
                VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
              },
              BatchStrategy =>
                'MultiRecord',    # values: MultiRecord, SingleRecord; OPTIONAL
              Environment => {
                'MyTransformEnvironmentKey' => 'MyTransformEnvironmentValue'
                ,                 # key: max: 1024, value: max: 10240
              },    # max: 16; OPTIONAL
              MaxConcurrentTransforms => 1,    # OPTIONAL
              MaxPayloadInMB          => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # min: 1, max: 1
        ValidationRole => 'MyRoleArn',    # min: 20, max: 2048

      },    # OPTIONAL
    );

    # Results:
    my $AlgorithmArn = $CreateAlgorithmOutput->AlgorithmArn;

    # Returns a L<Paws::SageMaker::CreateAlgorithmOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateAlgorithm>

=head1 ATTRIBUTES


=head2 AlgorithmDescription => Str

A description of the algorithm.



=head2 B<REQUIRED> AlgorithmName => Str

The name of the algorithm.



=head2 CertifyForMarketplace => Bool

Whether to certify the algorithm so that it can be listed in AWS
Marketplace.



=head2 InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>

Specifies details about inference jobs that the algorithm runs,
including the following:

=over

=item *

The Amazon ECR paths of containers that contain the inference code and
model artifacts.

=item *

The instance types that the algorithm supports for transform jobs and
real-time endpoints used for inference.

=item *

The input and output content formats that the algorithm supports for
inference.

=back




=head2 B<REQUIRED> TrainingSpecification => L<Paws::SageMaker::TrainingSpecification>

Specifies details about training jobs run by this algorithm, including
the following:

=over

=item *

The Amazon ECR path of the container and the version digest of the
algorithm.

=item *

The hyperparameters that the algorithm supports.

=item *

The instance types that the algorithm supports for training.

=item *

Whether the algorithm supports distributed training.

=item *

The metrics that the algorithm emits to Amazon CloudWatch.

=item *

Which metrics that the algorithm emits can be used as the objective
metric for hyperparameter tuning jobs.

=item *

The input channels that the algorithm supports for training data. For
example, an algorithm might support C<train>, C<validation>, and
C<test> channels.

=back




=head2 ValidationSpecification => L<Paws::SageMaker::AlgorithmValidationSpecification>

Specifies configurations for one or more training jobs and that Amazon
SageMaker runs to test the algorithm's training code and, optionally,
one or more batch transform jobs that Amazon SageMaker runs to test the
algorithm's inference code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlgorithm in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

