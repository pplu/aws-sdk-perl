package Paws::SageMaker::TrainingJob;
  use Moose;
  has AlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::AlgorithmSpecification');
  has CreationTime => (is => 'ro', isa => 'Str');
  has EnableNetworkIsolation => (is => 'ro', isa => 'Bool');
  has FailureReason => (is => 'ro', isa => 'Str');
  has FinalMetricDataList => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MetricData]');
  has HyperParameters => (is => 'ro', isa => 'Paws::SageMaker::HyperParameters');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Channel]');
  has LabelingJobArn => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ModelArtifacts => (is => 'ro', isa => 'Paws::SageMaker::ModelArtifacts');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputDataConfig');
  has ResourceConfig => (is => 'ro', isa => 'Paws::SageMaker::ResourceConfig');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SecondaryStatus => (is => 'ro', isa => 'Str');
  has SecondaryStatusTransitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::SecondaryStatusTransition]');
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrainingEndTime => (is => 'ro', isa => 'Str');
  has TrainingJobArn => (is => 'ro', isa => 'Str');
  has TrainingJobName => (is => 'ro', isa => 'Str');
  has TrainingJobStatus => (is => 'ro', isa => 'Str');
  has TrainingStartTime => (is => 'ro', isa => 'Str');
  has TuningJobArn => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrainingJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrainingJob object:

  $service_obj->Method(Att1 => { AlgorithmSpecification => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrainingJob object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmSpecification

=head1 DESCRIPTION

Contains information about a training job.

=head1 ATTRIBUTES


=head2 AlgorithmSpecification => L<Paws::SageMaker::AlgorithmSpecification>

  Information about the algorithm used for training, and algorithm
metadata.


=head2 CreationTime => Str

  A timestamp that indicates when the training job was created.


=head2 EnableNetworkIsolation => Bool

  If the C<TrainingJob> was created with network isolation, the value is
set to C<true>. If network isolation is enabled, nodes can't
communicate beyond the VPC they run in.


=head2 FailureReason => Str

  If the training job failed, the reason it failed.


=head2 FinalMetricDataList => ArrayRef[L<Paws::SageMaker::MetricData>]

  A list of final metric values that are set when the training job
completes. Used only if the training job was configured to use metrics.


=head2 HyperParameters => L<Paws::SageMaker::HyperParameters>

  Algorithm-specific parameters.


=head2 InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]

  An array of C<Channel> objects that describes each data input channel.


=head2 LabelingJobArn => Str

  The Amazon Resource Name (ARN) of the labeling job.


=head2 LastModifiedTime => Str

  A timestamp that indicates when the status of the training job was last
modified.


=head2 ModelArtifacts => L<Paws::SageMaker::ModelArtifacts>

  Information about the Amazon S3 location that is configured for storing
model artifacts.


=head2 OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

  The S3 path where model artifacts that you configured when creating the
job are stored. Amazon SageMaker creates subfolders for model
artifacts.


=head2 ResourceConfig => L<Paws::SageMaker::ResourceConfig>

  Resources, including ML compute instances and ML storage volumes, that
are configured for model training.


=head2 RoleArn => Str

  The AWS Identity and Access Management (IAM) role configured for the
training job.


=head2 SecondaryStatus => Str

  Provides detailed information about the state of the training job. For
detailed information about the secondary status of the training job,
see C<StatusMessage> under SecondaryStatusTransition.

Amazon SageMaker provides primary statuses and secondary statuses that
apply to each of them:

=over

=item InProgress

=over

=item *

C<Starting> - Starting the training job.

=item *

C<Downloading> - An optional stage for algorithms that support C<File>
training input mode. It indicates that data is being downloaded to the
ML storage volumes.

=item *

C<Training> - Training is in progress.

=item *

C<Uploading> - Training is complete and the model artifacts are being
uploaded to the S3 location.

=back

=item Completed

=over

=item *

C<Completed> - The training job has completed.

=back

=item Failed

=over

=item *

C<Failed> - The training job has failed. The reason for the failure is
returned in the C<FailureReason> field of
C<DescribeTrainingJobResponse>.

=back

=item Stopped

=over

=item *

C<MaxRuntimeExceeded> - The job stopped because it exceeded the maximum
allowed runtime.

=item *

C<Stopped> - The training job has stopped.

=back

=item Stopping

=over

=item *

C<Stopping> - Stopping the training job.

=back

=back

Valid values for C<SecondaryStatus> are subject to change.

We no longer support the following secondary statuses:

=over

=item *

C<LaunchingMLInstances>

=item *

C<PreparingTrainingStack>

=item *

C<DownloadingTrainingImage>

=back



=head2 SecondaryStatusTransitions => ArrayRef[L<Paws::SageMaker::SecondaryStatusTransition>]

  A history of all of the secondary statuses that the training job has
transitioned through.


=head2 StoppingCondition => L<Paws::SageMaker::StoppingCondition>

  The condition under which to stop the training job.


=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

  An array of key-value pairs. For more information, see Using Cost
Allocation Tags
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.


=head2 TrainingEndTime => Str

  Indicates the time when the training job ends on training instances.
You are billed for the time interval between the value of
C<TrainingStartTime> and this time. For successful jobs and stopped
jobs, this is the time after model artifacts are uploaded. For failed
jobs, this is the time when Amazon SageMaker detects a job failure.


=head2 TrainingJobArn => Str

  The Amazon Resource Name (ARN) of the training job.


=head2 TrainingJobName => Str

  The name of the training job.


=head2 TrainingJobStatus => Str

  The status of the training job.

Training job statuses are:

=over

=item *

C<InProgress> - The training is in progress.

=item *

C<Completed> - The training job has completed.

=item *

C<Failed> - The training job has failed. To see the reason for the
failure, see the C<FailureReason> field in the response to a
C<DescribeTrainingJobResponse> call.

=item *

C<Stopping> - The training job is stopping.

=item *

C<Stopped> - The training job has stopped.

=back

For more detailed information, see C<SecondaryStatus>.


=head2 TrainingStartTime => Str

  Indicates the time when the training job starts on training instances.
You are billed for the time interval between this time and the value of
C<TrainingEndTime>. The start time in CloudWatch Logs might be later
than this time. The difference is due to the time it takes to download
the training data and to the size of the training container.


=head2 TuningJobArn => Str

  The Amazon Resource Name (ARN) of the associated hyperparameter tuning
job if the training job was launched by a hyperparameter tuning job.


=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>

  A VpcConfig object that specifies the VPC that this training job has
access to. For more information, see Protect Training Jobs by Using an
Amazon Virtual Private Cloud
(http://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

