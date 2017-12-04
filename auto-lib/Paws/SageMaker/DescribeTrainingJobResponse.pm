
package Paws::SageMaker::DescribeTrainingJobResponse;
  use Moose;
  has AlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::AlgorithmSpecification', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has HyperParameters => (is => 'ro', isa => 'Paws::SageMaker::HyperParameters');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Channel]', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ModelArtifacts => (is => 'ro', isa => 'Paws::SageMaker::ModelArtifacts', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputDataConfig');
  has ResourceConfig => (is => 'ro', isa => 'Paws::SageMaker::ResourceConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has SecondaryStatus => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has TrainingEndTime => (is => 'ro', isa => 'Str');
  has TrainingJobArn => (is => 'ro', isa => 'Str', required => 1);
  has TrainingJobName => (is => 'ro', isa => 'Str', required => 1);
  has TrainingJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has TrainingStartTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrainingJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSpecification => L<Paws::SageMaker::AlgorithmSpecification>

Information about the algorithm used for training, and algorithm
metadata.


=head2 B<REQUIRED> CreationTime => Str

A timestamp that indicates when the training job was created.


=head2 FailureReason => Str

If the training job failed, the reason it failed.


=head2 HyperParameters => L<Paws::SageMaker::HyperParameters>

Algorithm-specific parameters.


=head2 B<REQUIRED> InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]

An array of C<Channel> objects that describes each data input channel.


=head2 LastModifiedTime => Str

A timestamp that indicates when the status of the training job was last
modified.


=head2 B<REQUIRED> ModelArtifacts => L<Paws::SageMaker::ModelArtifacts>

Information about the Amazon S3 location that is configured for storing
model artifacts.


=head2 OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

The S3 path where model artifacts that you configured when creating the
job are stored. Amazon SageMaker creates subfolders for model
artifacts.


=head2 B<REQUIRED> ResourceConfig => L<Paws::SageMaker::ResourceConfig>

Resources, including ML compute instances and ML storage volumes, that
are configured for model training.


=head2 RoleArn => Str

The AWS Identity and Access Management (IAM) role configured for the
training job.


=head2 B<REQUIRED> SecondaryStatus => Str

Provides granular information about the system state. For more
information, see C<TrainingJobStatus>.

Valid values are: C<"Starting">, C<"Downloading">, C<"Training">, C<"Uploading">, C<"Stopping">, C<"Stopped">, C<"MaxRuntimeExceeded">, C<"Completed">, C<"Failed">
=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

The condition under which to stop the training job.


=head2 TrainingEndTime => Str

A timestamp that indicates when model training ended.


=head2 B<REQUIRED> TrainingJobArn => Str

The Amazon Resource Name (ARN) of the training job.


=head2 B<REQUIRED> TrainingJobName => Str

Name of the model training job.


=head2 B<REQUIRED> TrainingJobStatus => Str

The status of the training job.

For the C<InProgress> status, Amazon SageMaker can return these
secondary statuses:

=over

=item *

Starting - Preparing for training.

=item *

Downloading - Optional stage for algorithms that support File training
input mode. It indicates data is being downloaded to ML storage
volumes.

=item *

Training - Training is in progress.

=item *

Uploading - Training is complete and model upload is in progress.

=back

For the C<Stopped> training status, Amazon SageMaker can return these
secondary statuses:

=over

=item *

MaxRuntimeExceeded - Job stopped as a result of maximum allowed runtime
exceeded.

=back


Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 TrainingStartTime => Str

A timestamp that indicates when training started.


=head2 _request_id => Str


=cut

1;