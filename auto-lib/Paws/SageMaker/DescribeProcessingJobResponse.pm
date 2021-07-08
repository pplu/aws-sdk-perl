
package Paws::SageMaker::DescribeProcessingJobResponse;
  use Moose;
  has AppSpecification => (is => 'ro', isa => 'Paws::SageMaker::AppSpecification', required => 1);
  has AutoMLJobArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::ProcessingEnvironmentMap');
  has ExitMessage => (is => 'ro', isa => 'Str');
  has ExperimentConfig => (is => 'ro', isa => 'Paws::SageMaker::ExperimentConfig');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MonitoringScheduleArn => (is => 'ro', isa => 'Str');
  has NetworkConfig => (is => 'ro', isa => 'Paws::SageMaker::NetworkConfig');
  has ProcessingEndTime => (is => 'ro', isa => 'Str');
  has ProcessingInputs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProcessingInput]');
  has ProcessingJobArn => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingJobName => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::ProcessingOutputConfig');
  has ProcessingResources => (is => 'ro', isa => 'Paws::SageMaker::ProcessingResources', required => 1);
  has ProcessingStartTime => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::ProcessingStoppingCondition');
  has TrainingJobArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeProcessingJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppSpecification => L<Paws::SageMaker::AppSpecification>

Configures the processing job to run a specified container image.


=head2 AutoMLJobArn => Str

The ARN of an AutoML job associated with this processing job.


=head2 B<REQUIRED> CreationTime => Str

The time at which the processing job was created.


=head2 Environment => L<Paws::SageMaker::ProcessingEnvironmentMap>

The environment variables set in the Docker container.


=head2 ExitMessage => Str

An optional string, up to one KB in size, that contains metadata from
the processing container when the processing job exits.


=head2 ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>

The configuration information used to create an experiment.


=head2 FailureReason => Str

A string, up to one KB in size, that contains the reason a processing
job failed, if it failed.


=head2 LastModifiedTime => Str

The time at which the processing job was last modified.


=head2 MonitoringScheduleArn => Str

The ARN of a monitoring schedule for an endpoint associated with this
processing job.


=head2 NetworkConfig => L<Paws::SageMaker::NetworkConfig>

Networking options for a processing job.


=head2 ProcessingEndTime => Str

The time at which the processing job completed.


=head2 ProcessingInputs => ArrayRef[L<Paws::SageMaker::ProcessingInput>]

The inputs for a processing job.


=head2 B<REQUIRED> ProcessingJobArn => Str

The Amazon Resource Name (ARN) of the processing job.


=head2 B<REQUIRED> ProcessingJobName => Str

The name of the processing job. The name must be unique within an
Amazon Web Services Region in the Amazon Web Services account.


=head2 B<REQUIRED> ProcessingJobStatus => Str

Provides the status of a processing job.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 ProcessingOutputConfig => L<Paws::SageMaker::ProcessingOutputConfig>

Output configuration for the processing job.


=head2 B<REQUIRED> ProcessingResources => L<Paws::SageMaker::ProcessingResources>

Identifies the resources, ML compute instances, and ML storage volumes
to deploy for a processing job. In distributed training, you specify
more than one instance.


=head2 ProcessingStartTime => Str

The time at which the processing job started.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
assume to perform tasks on your behalf.


=head2 StoppingCondition => L<Paws::SageMaker::ProcessingStoppingCondition>

The time limit for how long the processing job is allowed to run.


=head2 TrainingJobArn => Str

The ARN of a training job associated with this processing job.


=head2 _request_id => Str


=cut

1;