# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeHyperParameterTuningJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw/SageMaker_HyperParameterTuningJobWarmStartConfig SageMaker_TrainingJobStatusCounters SageMaker_HyperParameterTrainingJobSummary SageMaker_HyperParameterTuningJobConfig SageMaker_ObjectiveStatusCounters SageMaker_HyperParameterTrainingJobDefinition/;
  has BestTrainingJob => (is => 'ro', isa => SageMaker_HyperParameterTrainingJobSummary);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has FailureReason => (is => 'ro', isa => Str);
  has HyperParameterTuningEndTime => (is => 'ro', isa => Str);
  has HyperParameterTuningJobArn => (is => 'ro', isa => Str, required => 1);
  has HyperParameterTuningJobConfig => (is => 'ro', isa => SageMaker_HyperParameterTuningJobConfig, required => 1);
  has HyperParameterTuningJobName => (is => 'ro', isa => Str, required => 1);
  has HyperParameterTuningJobStatus => (is => 'ro', isa => Str, required => 1);
  has LastModifiedTime => (is => 'ro', isa => Str);
  has ObjectiveStatusCounters => (is => 'ro', isa => SageMaker_ObjectiveStatusCounters, required => 1);
  has OverallBestTrainingJob => (is => 'ro', isa => SageMaker_HyperParameterTrainingJobSummary);
  has TrainingJobDefinition => (is => 'ro', isa => SageMaker_HyperParameterTrainingJobDefinition);
  has TrainingJobStatusCounters => (is => 'ro', isa => SageMaker_TrainingJobStatusCounters, required => 1);
  has WarmStartConfig => (is => 'ro', isa => SageMaker_HyperParameterTuningJobWarmStartConfig);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'HyperParameterTuningJobName' => {
                                                  'type' => 'Str'
                                                },
               'ObjectiveStatusCounters' => {
                                              'class' => 'Paws::SageMaker::ObjectiveStatusCounters',
                                              'type' => 'SageMaker_ObjectiveStatusCounters'
                                            },
               'BestTrainingJob' => {
                                      'class' => 'Paws::SageMaker::HyperParameterTrainingJobSummary',
                                      'type' => 'SageMaker_HyperParameterTrainingJobSummary'
                                    },
               'TrainingJobDefinition' => {
                                            'class' => 'Paws::SageMaker::HyperParameterTrainingJobDefinition',
                                            'type' => 'SageMaker_HyperParameterTrainingJobDefinition'
                                          },
               'HyperParameterTuningEndTime' => {
                                                  'type' => 'Str'
                                                },
               'HyperParameterTuningJobArn' => {
                                                 'type' => 'Str'
                                               },
               'WarmStartConfig' => {
                                      'class' => 'Paws::SageMaker::HyperParameterTuningJobWarmStartConfig',
                                      'type' => 'SageMaker_HyperParameterTuningJobWarmStartConfig'
                                    },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HyperParameterTuningJobConfig' => {
                                                    'class' => 'Paws::SageMaker::HyperParameterTuningJobConfig',
                                                    'type' => 'SageMaker_HyperParameterTuningJobConfig'
                                                  },
               'TrainingJobStatusCounters' => {
                                                'class' => 'Paws::SageMaker::TrainingJobStatusCounters',
                                                'type' => 'SageMaker_TrainingJobStatusCounters'
                                              },
               'OverallBestTrainingJob' => {
                                             'class' => 'Paws::SageMaker::HyperParameterTrainingJobSummary',
                                             'type' => 'SageMaker_HyperParameterTrainingJobSummary'
                                           },
               'HyperParameterTuningJobStatus' => {
                                                    'type' => 'Str'
                                                  }
             },
  'IsRequired' => {
                    'CreationTime' => 1,
                    'HyperParameterTuningJobArn' => 1,
                    'HyperParameterTuningJobName' => 1,
                    'HyperParameterTuningJobConfig' => 1,
                    'TrainingJobStatusCounters' => 1,
                    'ObjectiveStatusCounters' => 1,
                    'HyperParameterTuningJobStatus' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHyperParameterTuningJobResponse

=head1 ATTRIBUTES


=head2 BestTrainingJob => SageMaker_HyperParameterTrainingJobSummary

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


=head2 B<REQUIRED> HyperParameterTuningJobConfig => SageMaker_HyperParameterTuningJobConfig

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


=head2 B<REQUIRED> ObjectiveStatusCounters => SageMaker_ObjectiveStatusCounters

The ObjectiveStatusCounters object that specifies the number of
training jobs, categorized by the status of their final objective
metric, that this tuning job launched.


=head2 OverallBestTrainingJob => SageMaker_HyperParameterTrainingJobSummary

If the hyperparameter tuning job is an warm start tuning job with a
C<WarmStartType> of C<IDENTICAL_DATA_AND_ALGORITHM>, this is the
TrainingJobSummary for the training job with the best objective metric
value of all training jobs launched by this tuning job and all parent
jobs specified for the warm start tuning job.


=head2 TrainingJobDefinition => SageMaker_HyperParameterTrainingJobDefinition

The HyperParameterTrainingJobDefinition object that specifies the
definition of the training jobs that this tuning job launches.


=head2 B<REQUIRED> TrainingJobStatusCounters => SageMaker_TrainingJobStatusCounters

The TrainingJobStatusCounters object that specifies the number of
training jobs, categorized by status, that this tuning job launched.


=head2 WarmStartConfig => SageMaker_HyperParameterTuningJobWarmStartConfig

The configuration for starting the hyperparameter parameter tuning job
using one or more previous tuning jobs as a starting point. The results
of previous tuning jobs are used to inform which combinations of
hyperparameters to search over in the new tuning job.


=head2 _request_id => Str


=cut

1;