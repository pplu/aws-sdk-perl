# Generated from default/object.tt
package Paws::SageMaker::TrainingJob;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_SecondaryStatusTransition SageMaker_VpcConfig SageMaker_Tag SageMaker_StoppingCondition SageMaker_MetricData SageMaker_OutputDataConfig SageMaker_ResourceConfig SageMaker_ModelArtifacts SageMaker_HyperParameters SageMaker_AlgorithmSpecification SageMaker_Channel/;
  has AlgorithmSpecification => (is => 'ro', isa => SageMaker_AlgorithmSpecification);
  has CreationTime => (is => 'ro', isa => Str);
  has EnableInterContainerTrafficEncryption => (is => 'ro', isa => Bool);
  has EnableNetworkIsolation => (is => 'ro', isa => Bool);
  has FailureReason => (is => 'ro', isa => Str);
  has FinalMetricDataList => (is => 'ro', isa => ArrayRef[SageMaker_MetricData]);
  has HyperParameters => (is => 'ro', isa => SageMaker_HyperParameters);
  has InputDataConfig => (is => 'ro', isa => ArrayRef[SageMaker_Channel]);
  has LabelingJobArn => (is => 'ro', isa => Str);
  has LastModifiedTime => (is => 'ro', isa => Str);
  has ModelArtifacts => (is => 'ro', isa => SageMaker_ModelArtifacts);
  has OutputDataConfig => (is => 'ro', isa => SageMaker_OutputDataConfig);
  has ResourceConfig => (is => 'ro', isa => SageMaker_ResourceConfig);
  has RoleArn => (is => 'ro', isa => Str);
  has SecondaryStatus => (is => 'ro', isa => Str);
  has SecondaryStatusTransitions => (is => 'ro', isa => ArrayRef[SageMaker_SecondaryStatusTransition]);
  has StoppingCondition => (is => 'ro', isa => SageMaker_StoppingCondition);
  has Tags => (is => 'ro', isa => ArrayRef[SageMaker_Tag]);
  has TrainingEndTime => (is => 'ro', isa => Str);
  has TrainingJobArn => (is => 'ro', isa => Str);
  has TrainingJobName => (is => 'ro', isa => Str);
  has TrainingJobStatus => (is => 'ro', isa => Str);
  has TrainingStartTime => (is => 'ro', isa => Str);
  has TuningJobArn => (is => 'ro', isa => Str);
  has VpcConfig => (is => 'ro', isa => SageMaker_VpcConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrainingEndTime' => {
                                      'type' => 'Str'
                                    },
               'EnableInterContainerTrafficEncryption' => {
                                                            'type' => 'Bool'
                                                          },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'SecondaryStatusTransitions' => {
                                                 'class' => 'Paws::SageMaker::SecondaryStatusTransition',
                                                 'type' => 'ArrayRef[SageMaker_SecondaryStatusTransition]'
                                               },
               'TrainingJobStatus' => {
                                        'type' => 'Str'
                                      },
               'TuningJobArn' => {
                                   'type' => 'Str'
                                 },
               'OutputDataConfig' => {
                                       'type' => 'SageMaker_OutputDataConfig',
                                       'class' => 'Paws::SageMaker::OutputDataConfig'
                                     },
               'FinalMetricDataList' => {
                                          'type' => 'ArrayRef[SageMaker_MetricData]',
                                          'class' => 'Paws::SageMaker::MetricData'
                                        },
               'TrainingJobName' => {
                                      'type' => 'Str'
                                    },
               'LabelingJobArn' => {
                                     'type' => 'Str'
                                   },
               'ModelArtifacts' => {
                                     'class' => 'Paws::SageMaker::ModelArtifacts',
                                     'type' => 'SageMaker_ModelArtifacts'
                                   },
               'StoppingCondition' => {
                                        'type' => 'SageMaker_StoppingCondition',
                                        'class' => 'Paws::SageMaker::StoppingCondition'
                                      },
               'SecondaryStatus' => {
                                      'type' => 'Str'
                                    },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'Tags' => {
                           'type' => 'ArrayRef[SageMaker_Tag]',
                           'class' => 'Paws::SageMaker::Tag'
                         },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'TrainingJobArn' => {
                                     'type' => 'Str'
                                   },
               'InputDataConfig' => {
                                      'type' => 'ArrayRef[SageMaker_Channel]',
                                      'class' => 'Paws::SageMaker::Channel'
                                    },
               'TrainingStartTime' => {
                                        'type' => 'Str'
                                      },
               'HyperParameters' => {
                                      'class' => 'Paws::SageMaker::HyperParameters',
                                      'type' => 'SageMaker_HyperParameters'
                                    },
               'VpcConfig' => {
                                'class' => 'Paws::SageMaker::VpcConfig',
                                'type' => 'SageMaker_VpcConfig'
                              },
               'EnableNetworkIsolation' => {
                                             'type' => 'Bool'
                                           },
               'AlgorithmSpecification' => {
                                             'class' => 'Paws::SageMaker::AlgorithmSpecification',
                                             'type' => 'SageMaker_AlgorithmSpecification'
                                           },
               'ResourceConfig' => {
                                     'class' => 'Paws::SageMaker::ResourceConfig',
                                     'type' => 'SageMaker_ResourceConfig'
                                   },
               'RoleArn' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


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


=head2 AlgorithmSpecification => SageMaker_AlgorithmSpecification

  Information about the algorithm used for training, and algorithm
metadata.


=head2 CreationTime => Str

  A timestamp that indicates when the training job was created.


=head2 EnableInterContainerTrafficEncryption => Bool

  To encrypt all communications between ML compute instances in
distributed training, choose C<True>. Encryption provides greater
security for distributed training, but training might take longer. How
long it takes depends on the amount of communication between compute
instances, especially if you use a deep learning algorithm in
distributed training.


=head2 EnableNetworkIsolation => Bool

  If the C<TrainingJob> was created with network isolation, the value is
set to C<true>. If network isolation is enabled, nodes can't
communicate beyond the VPC they run in.


=head2 FailureReason => Str

  If the training job failed, the reason it failed.


=head2 FinalMetricDataList => ArrayRef[SageMaker_MetricData]

  A list of final metric values that are set when the training job
completes. Used only if the training job was configured to use metrics.


=head2 HyperParameters => SageMaker_HyperParameters

  Algorithm-specific parameters.


=head2 InputDataConfig => ArrayRef[SageMaker_Channel]

  An array of C<Channel> objects that describes each data input channel.


=head2 LabelingJobArn => Str

  The Amazon Resource Name (ARN) of the labeling job.


=head2 LastModifiedTime => Str

  A timestamp that indicates when the status of the training job was last
modified.


=head2 ModelArtifacts => SageMaker_ModelArtifacts

  Information about the Amazon S3 location that is configured for storing
model artifacts.


=head2 OutputDataConfig => SageMaker_OutputDataConfig

  The S3 path where model artifacts that you configured when creating the
job are stored. Amazon SageMaker creates subfolders for model
artifacts.


=head2 ResourceConfig => SageMaker_ResourceConfig

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



=head2 SecondaryStatusTransitions => ArrayRef[SageMaker_SecondaryStatusTransition]

  A history of all of the secondary statuses that the training job has
transitioned through.


=head2 StoppingCondition => SageMaker_StoppingCondition

  Specifies a limit to how long a model training job can run. When the
job reaches the time limit, Amazon SageMaker ends the training job. Use
this API to cap model training costs.

To stop a job, Amazon SageMaker sends the algorithm the C<SIGTERM>
signal, which delays job termination for 120 seconds. Algorithms can
use this 120-second window to save the model artifacts, so the results
of training are not lost.


=head2 Tags => ArrayRef[SageMaker_Tag]

  An array of key-value pairs. For more information, see Using Cost
Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
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


=head2 VpcConfig => SageMaker_VpcConfig

  A VpcConfig object that specifies the VPC that this training job has
access to. For more information, see Protect Training Jobs by Using an
Amazon Virtual Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

