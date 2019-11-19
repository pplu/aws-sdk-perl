# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeTrainingJobResponse;
  use Moo;
  use Types::Standard qw/Str Int Bool ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_CheckpointConfig SageMaker_OutputDataConfig SageMaker_ResourceConfig SageMaker_ModelArtifacts SageMaker_HyperParameters SageMaker_AlgorithmSpecification SageMaker_Channel SageMaker_SecondaryStatusTransition SageMaker_VpcConfig SageMaker_StoppingCondition SageMaker_MetricData/;
  has AlgorithmSpecification => (is => 'ro', isa => SageMaker_AlgorithmSpecification, required => 1);
  has BillableTimeInSeconds => (is => 'ro', isa => Int);
  has CheckpointConfig => (is => 'ro', isa => SageMaker_CheckpointConfig);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has EnableInterContainerTrafficEncryption => (is => 'ro', isa => Bool);
  has EnableManagedSpotTraining => (is => 'ro', isa => Bool);
  has EnableNetworkIsolation => (is => 'ro', isa => Bool);
  has FailureReason => (is => 'ro', isa => Str);
  has FinalMetricDataList => (is => 'ro', isa => ArrayRef[SageMaker_MetricData]);
  has HyperParameters => (is => 'ro', isa => SageMaker_HyperParameters);
  has InputDataConfig => (is => 'ro', isa => ArrayRef[SageMaker_Channel]);
  has LabelingJobArn => (is => 'ro', isa => Str);
  has LastModifiedTime => (is => 'ro', isa => Str);
  has ModelArtifacts => (is => 'ro', isa => SageMaker_ModelArtifacts, required => 1);
  has OutputDataConfig => (is => 'ro', isa => SageMaker_OutputDataConfig);
  has ResourceConfig => (is => 'ro', isa => SageMaker_ResourceConfig, required => 1);
  has RoleArn => (is => 'ro', isa => Str);
  has SecondaryStatus => (is => 'ro', isa => Str, required => 1);
  has SecondaryStatusTransitions => (is => 'ro', isa => ArrayRef[SageMaker_SecondaryStatusTransition]);
  has StoppingCondition => (is => 'ro', isa => SageMaker_StoppingCondition, required => 1);
  has TrainingEndTime => (is => 'ro', isa => Str);
  has TrainingJobArn => (is => 'ro', isa => Str, required => 1);
  has TrainingJobName => (is => 'ro', isa => Str, required => 1);
  has TrainingJobStatus => (is => 'ro', isa => Str, required => 1);
  has TrainingStartTime => (is => 'ro', isa => Str);
  has TrainingTimeInSeconds => (is => 'ro', isa => Int);
  has TuningJobArn => (is => 'ro', isa => Str);
  has VpcConfig => (is => 'ro', isa => SageMaker_VpcConfig);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SecondaryStatus' => 1,
                    'TrainingJobStatus' => 1,
                    'ResourceConfig' => 1,
                    'CreationTime' => 1,
                    'AlgorithmSpecification' => 1,
                    'TrainingJobArn' => 1,
                    'TrainingJobName' => 1,
                    'StoppingCondition' => 1,
                    'ModelArtifacts' => 1
                  },
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'SecondaryStatusTransitions' => {
                                                 'type' => 'ArrayRef[SageMaker_SecondaryStatusTransition]',
                                                 'class' => 'Paws::SageMaker::SecondaryStatusTransition'
                                               },
               'TrainingJobStatus' => {
                                        'type' => 'Str'
                                      },
               'EnableManagedSpotTraining' => {
                                                'type' => 'Bool'
                                              },
               'TrainingEndTime' => {
                                      'type' => 'Str'
                                    },
               'EnableInterContainerTrafficEncryption' => {
                                                            'type' => 'Bool'
                                                          },
               'OutputDataConfig' => {
                                       'class' => 'Paws::SageMaker::OutputDataConfig',
                                       'type' => 'SageMaker_OutputDataConfig'
                                     },
               'CheckpointConfig' => {
                                       'class' => 'Paws::SageMaker::CheckpointConfig',
                                       'type' => 'SageMaker_CheckpointConfig'
                                     },
               'FinalMetricDataList' => {
                                          'class' => 'Paws::SageMaker::MetricData',
                                          'type' => 'ArrayRef[SageMaker_MetricData]'
                                        },
               'TuningJobArn' => {
                                   'type' => 'Str'
                                 },
               'SecondaryStatus' => {
                                      'type' => 'Str'
                                    },
               'BillableTimeInSeconds' => {
                                            'type' => 'Int'
                                          },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'TrainingJobName' => {
                                      'type' => 'Str'
                                    },
               'LabelingJobArn' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ModelArtifacts' => {
                                     'class' => 'Paws::SageMaker::ModelArtifacts',
                                     'type' => 'SageMaker_ModelArtifacts'
                                   },
               'TrainingTimeInSeconds' => {
                                            'type' => 'Int'
                                          },
               'StoppingCondition' => {
                                        'class' => 'Paws::SageMaker::StoppingCondition',
                                        'type' => 'SageMaker_StoppingCondition'
                                      },
               'EnableNetworkIsolation' => {
                                             'type' => 'Bool'
                                           },
               'VpcConfig' => {
                                'class' => 'Paws::SageMaker::VpcConfig',
                                'type' => 'SageMaker_VpcConfig'
                              },
               'AlgorithmSpecification' => {
                                             'type' => 'SageMaker_AlgorithmSpecification',
                                             'class' => 'Paws::SageMaker::AlgorithmSpecification'
                                           },
               'ResourceConfig' => {
                                     'class' => 'Paws::SageMaker::ResourceConfig',
                                     'type' => 'SageMaker_ResourceConfig'
                                   },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'TrainingJobArn' => {
                                     'type' => 'Str'
                                   },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'InputDataConfig' => {
                                      'type' => 'ArrayRef[SageMaker_Channel]',
                                      'class' => 'Paws::SageMaker::Channel'
                                    },
               'HyperParameters' => {
                                      'class' => 'Paws::SageMaker::HyperParameters',
                                      'type' => 'SageMaker_HyperParameters'
                                    },
               'TrainingStartTime' => {
                                        'type' => 'Str'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrainingJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSpecification => SageMaker_AlgorithmSpecification

Information about the algorithm used for training, and algorithm
metadata.


=head2 BillableTimeInSeconds => Int

The billable time in seconds.

You can calculate the savings from using managed spot training using
the formula C<(1 - BillableTimeInSeconds / TrainingTimeInSeconds) *
100>. For example, if C<BillableTimeInSeconds> is 100 and
C<TrainingTimeInSeconds> is 500, the savings is 80%.


=head2 CheckpointConfig => SageMaker_CheckpointConfig




=head2 B<REQUIRED> CreationTime => Str

A timestamp that indicates when the training job was created.


=head2 EnableInterContainerTrafficEncryption => Bool

To encrypt all communications between ML compute instances in
distributed training, choose C<True>. Encryption provides greater
security for distributed training, but training might take longer. How
long it takes depends on the amount of communication between compute
instances, especially if you use a deep learning algorithms in
distributed training.


=head2 EnableManagedSpotTraining => Bool

A Boolean indicating whether managed spot training is enabled (C<True>)
or not (C<False>).


=head2 EnableNetworkIsolation => Bool

If you want to allow inbound or outbound network calls, except for
calls between peers within a training cluster for distributed training,
choose C<True>. If you enable network isolation for training jobs that
are configured to use a VPC, Amazon SageMaker downloads and uploads
customer data and model artifacts through the specified VPC, but the
training container does not have network access.

The Semantic Segmentation built-in algorithm does not support network
isolation.


=head2 FailureReason => Str

If the training job failed, the reason it failed.


=head2 FinalMetricDataList => ArrayRef[SageMaker_MetricData]

A collection of C<MetricData> objects that specify the names, values,
and dates and times that the training algorithm emitted to Amazon
CloudWatch.


=head2 HyperParameters => SageMaker_HyperParameters

Algorithm-specific parameters.


=head2 InputDataConfig => ArrayRef[SageMaker_Channel]

An array of C<Channel> objects that describes each data input channel.


=head2 LabelingJobArn => Str

The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth
labeling job that created the transform or training job.


=head2 LastModifiedTime => Str

A timestamp that indicates when the status of the training job was last
modified.


=head2 B<REQUIRED> ModelArtifacts => SageMaker_ModelArtifacts

Information about the Amazon S3 location that is configured for storing
model artifacts.


=head2 OutputDataConfig => SageMaker_OutputDataConfig

The S3 path where model artifacts that you configured when creating the
job are stored. Amazon SageMaker creates subfolders for model
artifacts.


=head2 B<REQUIRED> ResourceConfig => SageMaker_ResourceConfig

Resources, including ML compute instances and ML storage volumes, that
are configured for model training.


=head2 RoleArn => Str

The AWS Identity and Access Management (IAM) role configured for the
training job.


=head2 B<REQUIRED> SecondaryStatus => Str

Provides detailed information about the state of the training job. For
detailed information on the secondary status of the training job, see
C<StatusMessage> under SecondaryStatusTransition.

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

C<Interrupted> - The job stopped because the managed spot training
instances were interrupted.

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

C<MaxWaitTmeExceeded> - The job stopped because it exceeded the maximum
allowed wait time.

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


Valid values are: C<"Starting">, C<"LaunchingMLInstances">, C<"PreparingTrainingStack">, C<"Downloading">, C<"DownloadingTrainingImage">, C<"Training">, C<"Uploading">, C<"Stopping">, C<"Stopped">, C<"MaxRuntimeExceeded">, C<"Completed">, C<"Failed">, C<"Interrupted">, C<"MaxWaitTimeExceeded">
=head2 SecondaryStatusTransitions => ArrayRef[SageMaker_SecondaryStatusTransition]

A history of all of the secondary statuses that the training job has
transitioned through.


=head2 B<REQUIRED> StoppingCondition => SageMaker_StoppingCondition

Specifies a limit to how long a model training job can run. It also
specifies the maximum time to wait for a spot instance. When the job
reaches the time limit, Amazon SageMaker ends the training job. Use
this API to cap model training costs.

To stop a job, Amazon SageMaker sends the algorithm the C<SIGTERM>
signal, which delays job termination for 120 seconds. Algorithms can
use this 120-second window to save the model artifacts, so the results
of training are not lost.


=head2 TrainingEndTime => Str

Indicates the time when the training job ends on training instances.
You are billed for the time interval between the value of
C<TrainingStartTime> and this time. For successful jobs and stopped
jobs, this is the time after model artifacts are uploaded. For failed
jobs, this is the time when Amazon SageMaker detects a job failure.


=head2 B<REQUIRED> TrainingJobArn => Str

The Amazon Resource Name (ARN) of the training job.


=head2 B<REQUIRED> TrainingJobName => Str

Name of the model training job.


=head2 B<REQUIRED> TrainingJobStatus => Str

The status of the training job.

Amazon SageMaker provides the following training job statuses:

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

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 TrainingStartTime => Str

Indicates the time when the training job starts on training instances.
You are billed for the time interval between this time and the value of
C<TrainingEndTime>. The start time in CloudWatch Logs might be later
than this time. The difference is due to the time it takes to download
the training data and to the size of the training container.


=head2 TrainingTimeInSeconds => Int

The training time in seconds.


=head2 TuningJobArn => Str

The Amazon Resource Name (ARN) of the associated hyperparameter tuning
job if the training job was launched by a hyperparameter tuning job.


=head2 VpcConfig => SageMaker_VpcConfig

A VpcConfig object that specifies the VPC that this training job has
access to. For more information, see Protect Training Jobs by Using an
Amazon Virtual Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html).


=head2 _request_id => Str


=cut

1;