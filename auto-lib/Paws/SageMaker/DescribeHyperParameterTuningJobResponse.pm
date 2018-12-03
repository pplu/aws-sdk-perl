
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
  has OverallBestTrainingJob => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTrainingJobSummary');
  has TrainingJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTrainingJobDefinition', required => 1);
  has TrainingJobStatusCounters => (is => 'ro', isa => 'Paws::SageMaker::TrainingJobStatusCounters', required => 1);
  has WarmStartConfig => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobWarmStartConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHyperParameterTuningJobResponse

=head1 ATTRIBUTES


=head2 BestTrainingJob => L<Paws::SageMaker::HyperParameterTrainingJobSummary>

A TrainingJobSummary object that describes the training job that
completed with the best current HyperParameterTuningJobObjective.


=head2 B<REQUIRED> CreationTime => Str

The date and time that the tuning job started.


=head2 FailureReason => Str

If the tuning job failed, the reason it failed.


=head2 HyperParameterTuningEndTime => Str

The date and time that the tuning job ended.


=head2 B<REQUIRED> HyperParameterTuningJobArn => Str

The Amazon Resource Name (ARN) of the tuning job.


=head2 B<REQUIRED> HyperParameterTuningJobConfig => L<Paws::SageMaker::HyperParameterTuningJobConfig>

The HyperParameterTuningJobConfig object that specifies the
configuration of the tuning job.


=head2 B<REQUIRED> HyperParameterTuningJobName => Str

The name of the tuning job.


=head2 B<REQUIRED> HyperParameterTuningJobStatus => Str

The status of the tuning job: InProgress, Completed, Failed, Stopping,
or Stopped.

Valid values are: C<"Completed">, C<"InProgress">, C<"Failed">, C<"Stopped">, C<"Stopping">
=head2 LastModifiedTime => Str

The date and time that the status of the tuning job was modified.


=head2 B<REQUIRED> ObjectiveStatusCounters => L<Paws::SageMaker::ObjectiveStatusCounters>

The ObjectiveStatusCounters object that specifies the number of
training jobs, categorized by the status of their final objective
metric, that this tuning job launched.


=head2 OverallBestTrainingJob => L<Paws::SageMaker::HyperParameterTrainingJobSummary>

If the hyperparameter tuning job is an warm start tuning job with a
C<WarmStartType> of C<IDENTICAL_DATA_AND_ALGORITHM>, this is the
TrainingJobSummary for the training job with the best objective metric
value of all training jobs launched by this tuning job and all parent
jobs specified for the warm start tuning job.


=head2 B<REQUIRED> TrainingJobDefinition => L<Paws::SageMaker::HyperParameterTrainingJobDefinition>

The HyperParameterTrainingJobDefinition object that specifies the
definition of the training jobs that this tuning job launches.


=head2 B<REQUIRED> TrainingJobStatusCounters => L<Paws::SageMaker::TrainingJobStatusCounters>

The TrainingJobStatusCounters object that specifies the number of
training jobs, categorized by status, that this tuning job launched.


=head2 WarmStartConfig => L<Paws::SageMaker::HyperParameterTuningJobWarmStartConfig>

The configuration for starting the hyperparameter parameter tuning job
using one or more previous tuning jobs as a starting point. The results
of previous tuning jobs are used to inform which combinations of
hyperparameters to search over in the new tuning job.


=head2 _request_id => Str


=cut

1;