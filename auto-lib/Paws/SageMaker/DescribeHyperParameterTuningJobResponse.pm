
package Paws::SageMaker::DescribeHyperParameterTuningJobResponse;
  use Moose;
  has BestTrainingJob => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTrainingJobSummary');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has HyperParameterTuningEndTime => (is => 'ro', isa => 'Str');
  has HyperParameterTuningJobArn => (is => 'ro', isa => 'Str', required => 1);
  has HyperParameterTuningJobConfig => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobConfig', required => 1);
  has HyperParameterTuningJobName => (is => 'ro', isa => 'Str', required => 1);
  has HyperParameterTuningJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ObjectiveStatusCounters => (is => 'ro', isa => 'Paws::SageMaker::ObjectiveStatusCounters', required => 1);
  has TrainingJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTrainingJobDefinition', required => 1);
  has TrainingJobStatusCounters => (is => 'ro', isa => 'Paws::SageMaker::TrainingJobStatusCounters', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHyperParameterTuningJobResponse

=head1 ATTRIBUTES


=head2 BestTrainingJob => L<Paws::SageMaker::HyperParameterTrainingJobSummary>

A object that describes the training job that completed with the best
current .


=head2 B<REQUIRED> CreationTime => Str

The date and time that the tuning job started.


=head2 FailureReason => Str

If the tuning job failed, the reason it failed.


=head2 HyperParameterTuningEndTime => Str

The date and time that the tuning job ended.


=head2 B<REQUIRED> HyperParameterTuningJobArn => Str

The Amazon Resource Name (ARN) of the tuning job.


=head2 B<REQUIRED> HyperParameterTuningJobConfig => L<Paws::SageMaker::HyperParameterTuningJobConfig>

The object that specifies the configuration of the tuning job.


=head2 B<REQUIRED> HyperParameterTuningJobName => Str

The name of the tuning job.


=head2 B<REQUIRED> HyperParameterTuningJobStatus => Str

The status of the tuning job: InProgress, Completed, Failed, Stopping,
or Stopped.

Valid values are: C<"Completed">, C<"InProgress">, C<"Failed">, C<"Stopped">, C<"Stopping">
=head2 LastModifiedTime => Str

The date and time that the status of the tuning job was modified.


=head2 B<REQUIRED> ObjectiveStatusCounters => L<Paws::SageMaker::ObjectiveStatusCounters>

The object that specifies the number of training jobs, categorized by
the status of their final objective metric, that this tuning job
launched.


=head2 B<REQUIRED> TrainingJobDefinition => L<Paws::SageMaker::HyperParameterTrainingJobDefinition>

The object that specifies the definition of the training jobs that this
tuning job launches.


=head2 B<REQUIRED> TrainingJobStatusCounters => L<Paws::SageMaker::TrainingJobStatusCounters>

The object that specifies the number of training jobs, categorized by
status, that this tuning job launched.


=head2 _request_id => Str


=cut

1;