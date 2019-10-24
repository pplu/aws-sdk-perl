# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeTransformJobResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SageMaker::Types qw/SageMaker_TransformResources SageMaker_DataProcessing SageMaker_TransformOutput SageMaker_TransformEnvironmentMap SageMaker_TransformInput/;
  has BatchStrategy => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has DataProcessing => (is => 'ro', isa => SageMaker_DataProcessing);
  has Environment => (is => 'ro', isa => SageMaker_TransformEnvironmentMap);
  has FailureReason => (is => 'ro', isa => Str);
  has LabelingJobArn => (is => 'ro', isa => Str);
  has MaxConcurrentTransforms => (is => 'ro', isa => Int);
  has MaxPayloadInMB => (is => 'ro', isa => Int);
  has ModelName => (is => 'ro', isa => Str, required => 1);
  has TransformEndTime => (is => 'ro', isa => Str);
  has TransformInput => (is => 'ro', isa => SageMaker_TransformInput, required => 1);
  has TransformJobArn => (is => 'ro', isa => Str, required => 1);
  has TransformJobName => (is => 'ro', isa => Str, required => 1);
  has TransformJobStatus => (is => 'ro', isa => Str, required => 1);
  has TransformOutput => (is => 'ro', isa => SageMaker_TransformOutput);
  has TransformResources => (is => 'ro', isa => SageMaker_TransformResources, required => 1);
  has TransformStartTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataProcessing' => {
                                     'class' => 'Paws::SageMaker::DataProcessing',
                                     'type' => 'SageMaker_DataProcessing'
                                   },
               'ModelName' => {
                                'type' => 'Str'
                              },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'MaxConcurrentTransforms' => {
                                              'type' => 'Int'
                                            },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Environment' => {
                                  'class' => 'Paws::SageMaker::TransformEnvironmentMap',
                                  'type' => 'SageMaker_TransformEnvironmentMap'
                                },
               'TransformEndTime' => {
                                       'type' => 'Str'
                                     },
               'TransformStartTime' => {
                                         'type' => 'Str'
                                       },
               'TransformInput' => {
                                     'class' => 'Paws::SageMaker::TransformInput',
                                     'type' => 'SageMaker_TransformInput'
                                   },
               'MaxPayloadInMB' => {
                                     'type' => 'Int'
                                   },
               'TransformJobStatus' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TransformJobArn' => {
                                      'type' => 'Str'
                                    },
               'TransformJobName' => {
                                       'type' => 'Str'
                                     },
               'TransformResources' => {
                                         'class' => 'Paws::SageMaker::TransformResources',
                                         'type' => 'SageMaker_TransformResources'
                                       },
               'LabelingJobArn' => {
                                     'type' => 'Str'
                                   },
               'BatchStrategy' => {
                                    'type' => 'Str'
                                  },
               'TransformOutput' => {
                                      'class' => 'Paws::SageMaker::TransformOutput',
                                      'type' => 'SageMaker_TransformOutput'
                                    }
             },
  'IsRequired' => {
                    'CreationTime' => 1,
                    'TransformJobStatus' => 1,
                    'ModelName' => 1,
                    'TransformJobName' => 1,
                    'TransformJobArn' => 1,
                    'TransformInput' => 1,
                    'TransformResources' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTransformJobResponse

=head1 ATTRIBUTES


=head2 BatchStrategy => Str

Specifies the number of records to include in a mini-batch for an HTTP
inference request. A I<record> I< is a single unit of input data that
inference can be made on. For example, a single line in a CSV file is a
record.>

To enable the batch strategy, you must set C<SplitType> to C<Line>,
C<RecordIO>, or C<TFRecord>.

Valid values are: C<"MultiRecord">, C<"SingleRecord">
=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the transform Job was created.


=head2 DataProcessing => SageMaker_DataProcessing




=head2 Environment => SageMaker_TransformEnvironmentMap

The environment variables to set in the Docker container. We support up
to 16 key and values entries in the map.


=head2 FailureReason => Str

If the transform job failed, C<FailureReason> describes why it failed.
A transform job creates a log file, which includes error messages, and
stores it as an Amazon S3 object. For more information, see Log Amazon
SageMaker Events with Amazon CloudWatch
(http://docs.aws.amazon.com/sagemaker/latest/dg/logging-cloudwatch.html).


=head2 LabelingJobArn => Str

The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth
labeling job that created the transform or training job.


=head2 MaxConcurrentTransforms => Int

The maximum number of parallel requests on each instance node that can
be launched in a transform job. The default value is 1.


=head2 MaxPayloadInMB => Int

The maximum payload size, in MB, used in the transform job.


=head2 B<REQUIRED> ModelName => Str

The name of the model used in the transform job.


=head2 TransformEndTime => Str

Indicates when the transform job has been completed, or has stopped or
failed. You are billed for the time interval between this time and the
value of C<TransformStartTime>.


=head2 B<REQUIRED> TransformInput => SageMaker_TransformInput

Describes the dataset to be transformed and the Amazon S3 location
where it is stored.


=head2 B<REQUIRED> TransformJobArn => Str

The Amazon Resource Name (ARN) of the transform job.


=head2 B<REQUIRED> TransformJobName => Str

The name of the transform job.


=head2 B<REQUIRED> TransformJobStatus => Str

The status of the transform job. If the transform job failed, the
reason is returned in the C<FailureReason> field.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 TransformOutput => SageMaker_TransformOutput

Identifies the Amazon S3 location where you want Amazon SageMaker to
save the results from the transform job.


=head2 B<REQUIRED> TransformResources => SageMaker_TransformResources

Describes the resources, including ML instance types and ML instance
count, to use for the transform job.


=head2 TransformStartTime => Str

Indicates when the transform job starts on ML instances. You are billed
for the time interval between this time and the value of
C<TransformEndTime>.


=head2 _request_id => Str


=cut

1;