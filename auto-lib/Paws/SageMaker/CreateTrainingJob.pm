
package Paws::SageMaker::CreateTrainingJob;
  use Moose;
  has AlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::AlgorithmSpecification', required => 1);
  has EnableInterContainerTrafficEncryption => (is => 'ro', isa => 'Bool');
  has EnableNetworkIsolation => (is => 'ro', isa => 'Bool');
  has HyperParameters => (is => 'ro', isa => 'Paws::SageMaker::HyperParameters');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Channel]');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputDataConfig', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::SageMaker::ResourceConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrainingJobName => (is => 'ro', isa => 'Str', required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrainingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateTrainingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTrainingJob - Arguments for method CreateTrainingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrainingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateTrainingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrainingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateTrainingJobResponse = $api . sagemaker->CreateTrainingJob(
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
      RoleArn           => 'MyRoleArn',
      StoppingCondition => {
        MaxRuntimeInSeconds => 1,          # min: 1; OPTIONAL
      },
      TrainingJobName                       => 'MyTrainingJobName',
      EnableInterContainerTrafficEncryption => 1,                     # OPTIONAL
      EnableNetworkIsolation                => 1,                     # OPTIONAL
      HyperParameters                       => {
        'MyParameterKey' => 'MyParameterValue', # key: max: 256, value: max: 256
      },    # OPTIONAL
      InputDataConfig => [
        {
          ChannelName => 'MyChannelName',    # min: 1, max: 64
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
          CompressionType => 'None',             # values: None, Gzip; OPTIONAL
          ContentType     => 'MyContentType',    # max: 256; OPTIONAL
          InputMode       => 'Pipe',             # values: Pipe, File
          RecordWrapperType => 'None',    # values: None, RecordIO; OPTIONAL
          ShuffleConfig     => {
            Seed => 1,

          },                              # OPTIONAL
        },
        ...
      ],                                  # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',            # min: 1, max: 128
          Value => 'MyTagValue',          # max: 256

        },
        ...
      ],                                  # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...        # max: 32
        ],                                # min: 1, max: 5
        Subnets => [
          'MySubnetId', ...               # max: 32
        ],                                # min: 1, max: 16

      },    # OPTIONAL
    );

    # Results:
    my $TrainingJobArn = $CreateTrainingJobResponse->TrainingJobArn;

    # Returns a L<Paws::SageMaker::CreateTrainingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateTrainingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSpecification => L<Paws::SageMaker::AlgorithmSpecification>

The registry path of the Docker image that contains the training
algorithm and algorithm-specific metadata, including the input mode.
For more information about algorithms provided by Amazon SageMaker, see
Algorithms (http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).
For information about providing your own algorithms, see Using Your Own
Algorithms with Amazon SageMaker
(http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html).



=head2 EnableInterContainerTrafficEncryption => Bool

To encrypt all communications between ML compute instances in
distributed training, choose C<True>,. Encryption provides greater
security for distributed training, but training can take longer because
of additional communications between ML compute instances.



=head2 EnableNetworkIsolation => Bool

Isolates the training container. No inbound or outbound network calls
can be made, except for calls between peers within a training cluster
for distributed training. If you enable network isolation for training
jobs that are configured to use a VPC, Amazon SageMaker downloads and
uploads customer data and model artifacts through the specified VPC,
but the training container does not have network access.

The Semantic Segmentation built-in algorithm does not support network
isolation.



=head2 HyperParameters => L<Paws::SageMaker::HyperParameters>

Algorithm-specific parameters that influence the quality of the model.
You set hyperparameters before you start the learning process. For a
list of hyperparameters for each training algorithm provided by Amazon
SageMaker, see Algorithms
(http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

You can specify a maximum of 100 hyperparameters. Each hyperparameter
is a key-value pair. Each key and value is limited to 256 characters,
as specified by the C<Length Constraint>.



=head2 InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]

An array of C<Channel> objects. Each channel is a named input source.
C<InputDataConfig> describes the input data and its location.

Algorithms can accept input data from one or more channels. For
example, an algorithm might have two channels of input data,
C<training_data> and C<validation_data>. The configuration for each
channel provides the S3 location where the input data is stored. It
also provides information about the stored data: the MIME type,
compression method, and whether the data is wrapped in RecordIO format.

Depending on the input mode that the algorithm supports, Amazon
SageMaker either copies input data files from an S3 bucket to a local
directory in the Docker container, or makes it available as input
streams.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

Specifies the path to the S3 bucket where you want to store model
artifacts. Amazon SageMaker creates subfolders for the artifacts.



=head2 B<REQUIRED> ResourceConfig => L<Paws::SageMaker::ResourceConfig>

The resources, including the ML compute instances and ML storage
volumes, to use for model training.

ML storage volumes store model artifacts and incremental states.
Training algorithms might also use ML storage volumes for scratch
space. If you want Amazon SageMaker to use the ML storage volume to
store the training data, choose C<File> as the C<TrainingInputMode> in
the algorithm specification. For distributed training algorithms,
specify an instance count greater than 1.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
assume to perform tasks on your behalf.

During model training, Amazon SageMaker needs your permission to read
input data from an S3 bucket, download a Docker image that contains
training code, write model artifacts to an S3 bucket, write logs to
Amazon CloudWatch Logs, and publish metrics to Amazon CloudWatch. You
grant permissions for all of these tasks to an IAM role. For more
information, see Amazon SageMaker Roles
(http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

To be able to pass this role to Amazon SageMaker, the caller of this
API must have the C<iam:PassRole> permission.



=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

Sets a duration for training. Use this parameter to cap model training
costs. To stop a job, Amazon SageMaker sends the algorithm the
C<SIGTERM> signal, which delays job termination for 120 seconds.
Algorithms might use this 120-second window to save the model
artifacts.

When Amazon SageMaker terminates a job because the stopping condition
has been met, training algorithms provided by Amazon SageMaker save the
intermediate results of the job. This intermediate data is a valid
model artifact. You can use it to create a model using the
C<CreateModel> API.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. For more information, see Using Cost
Allocation Tags
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.



=head2 B<REQUIRED> TrainingJobName => Str

The name of the training job. The name must be unique within an AWS
Region in an AWS account.



=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>

A VpcConfig object that specifies the VPC that you want your training
job to connect to. Control access to and from your training container
by configuring the VPC. For more information, see Protect Training Jobs
by Using an Amazon Virtual Private Cloud
(http://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrainingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

