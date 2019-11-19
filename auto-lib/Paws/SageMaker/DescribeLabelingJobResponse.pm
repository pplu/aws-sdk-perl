# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeLabelingJobResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_LabelingJobInputConfig SageMaker_LabelCounters SageMaker_LabelingJobOutputConfig SageMaker_LabelingJobOutput SageMaker_LabelingJobAlgorithmsConfig SageMaker_LabelingJobStoppingConditions SageMaker_HumanTaskConfig SageMaker_Tag/;
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has FailureReason => (is => 'ro', isa => Str);
  has HumanTaskConfig => (is => 'ro', isa => SageMaker_HumanTaskConfig, required => 1);
  has InputConfig => (is => 'ro', isa => SageMaker_LabelingJobInputConfig, required => 1);
  has JobReferenceCode => (is => 'ro', isa => Str, required => 1);
  has LabelAttributeName => (is => 'ro', isa => Str);
  has LabelCategoryConfigS3Uri => (is => 'ro', isa => Str);
  has LabelCounters => (is => 'ro', isa => SageMaker_LabelCounters, required => 1);
  has LabelingJobAlgorithmsConfig => (is => 'ro', isa => SageMaker_LabelingJobAlgorithmsConfig);
  has LabelingJobArn => (is => 'ro', isa => Str, required => 1);
  has LabelingJobName => (is => 'ro', isa => Str, required => 1);
  has LabelingJobOutput => (is => 'ro', isa => SageMaker_LabelingJobOutput);
  has LabelingJobStatus => (is => 'ro', isa => Str, required => 1);
  has LastModifiedTime => (is => 'ro', isa => Str, required => 1);
  has OutputConfig => (is => 'ro', isa => SageMaker_LabelingJobOutputConfig, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has StoppingConditions => (is => 'ro', isa => SageMaker_LabelingJobStoppingConditions);
  has Tags => (is => 'ro', isa => ArrayRef[SageMaker_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LabelCounters' => {
                                    'type' => 'SageMaker_LabelCounters',
                                    'class' => 'Paws::SageMaker::LabelCounters'
                                  },
               'LabelingJobStatus' => {
                                        'type' => 'Str'
                                      },
               'LabelCategoryConfigS3Uri' => {
                                               'type' => 'Str'
                                             },
               'LabelingJobAlgorithmsConfig' => {
                                                  'class' => 'Paws::SageMaker::LabelingJobAlgorithmsConfig',
                                                  'type' => 'SageMaker_LabelingJobAlgorithmsConfig'
                                                },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'LabelingJobOutput' => {
                                        'class' => 'Paws::SageMaker::LabelingJobOutput',
                                        'type' => 'SageMaker_LabelingJobOutput'
                                      },
               'HumanTaskConfig' => {
                                      'type' => 'SageMaker_HumanTaskConfig',
                                      'class' => 'Paws::SageMaker::HumanTaskConfig'
                                    },
               'OutputConfig' => {
                                   'class' => 'Paws::SageMaker::LabelingJobOutputConfig',
                                   'type' => 'SageMaker_LabelingJobOutputConfig'
                                 },
               'Tags' => {
                           'class' => 'Paws::SageMaker::Tag',
                           'type' => 'ArrayRef[SageMaker_Tag]'
                         },
               'JobReferenceCode' => {
                                       'type' => 'Str'
                                     },
               'LabelingJobName' => {
                                      'type' => 'Str'
                                    },
               'StoppingConditions' => {
                                         'class' => 'Paws::SageMaker::LabelingJobStoppingConditions',
                                         'type' => 'SageMaker_LabelingJobStoppingConditions'
                                       },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'InputConfig' => {
                                  'type' => 'SageMaker_LabelingJobInputConfig',
                                  'class' => 'Paws::SageMaker::LabelingJobInputConfig'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LabelingJobArn' => {
                                     'type' => 'Str'
                                   },
               'LabelAttributeName' => {
                                         'type' => 'Str'
                                       }
             },
  'IsRequired' => {
                    'LastModifiedTime' => 1,
                    'LabelingJobArn' => 1,
                    'JobReferenceCode' => 1,
                    'LabelingJobName' => 1,
                    'HumanTaskConfig' => 1,
                    'OutputConfig' => 1,
                    'InputConfig' => 1,
                    'LabelCounters' => 1,
                    'CreationTime' => 1,
                    'RoleArn' => 1,
                    'LabelingJobStatus' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeLabelingJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The date and time that the labeling job was created.


=head2 FailureReason => Str

If the job failed, the reason that it failed.


=head2 B<REQUIRED> HumanTaskConfig => SageMaker_HumanTaskConfig

Configuration information required for human workers to complete a
labeling task.


=head2 B<REQUIRED> InputConfig => SageMaker_LabelingJobInputConfig

Input configuration information for the labeling job, such as the
Amazon S3 location of the data objects and the location of the manifest
file that describes the data objects.


=head2 B<REQUIRED> JobReferenceCode => Str

A unique identifier for work done as part of a labeling job.


=head2 LabelAttributeName => Str

The attribute used as the label in the output manifest file.


=head2 LabelCategoryConfigS3Uri => Str

The S3 location of the JSON file that defines the categories used to
label data objects.

The file is a JSON structure in the following format:

C<{>

C<"document-version": "2018-11-28">

C<"labels": [>

C<{>

C<"label": "I<label 1>">

C<},>

C<{>

C<"label": "I<label 2>">

C<},>

C<...>

C<{>

C<"label": "I<label n>">

C<}>

C<]>

C<}>


=head2 B<REQUIRED> LabelCounters => SageMaker_LabelCounters

Provides a breakdown of the number of data objects labeled by humans,
the number of objects labeled by machine, the number of objects than
couldn't be labeled, and the total number of objects labeled.


=head2 LabelingJobAlgorithmsConfig => SageMaker_LabelingJobAlgorithmsConfig

Configuration information for automated data labeling.


=head2 B<REQUIRED> LabelingJobArn => Str

The Amazon Resource Name (ARN) of the labeling job.


=head2 B<REQUIRED> LabelingJobName => Str

The name assigned to the labeling job when it was created.


=head2 LabelingJobOutput => SageMaker_LabelingJobOutput

The location of the output produced by the labeling job.


=head2 B<REQUIRED> LabelingJobStatus => Str

The processing status of the labeling job.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 B<REQUIRED> LastModifiedTime => Str

The date and time that the labeling job was last updated.


=head2 B<REQUIRED> OutputConfig => SageMaker_LabelingJobOutputConfig

The location of the job's output data and the AWS Key Management
Service key ID for the key used to encrypt the output data, if any.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) that Amazon SageMaker assumes to perform
tasks on your behalf during data labeling.


=head2 StoppingConditions => SageMaker_LabelingJobStoppingConditions

A set of conditions for stopping a labeling job. If any of the
conditions are met, the job is automatically stopped.


=head2 Tags => ArrayRef[SageMaker_Tag]

An array of key/value pairs. For more information, see Using Cost
Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.


=head2 _request_id => Str


=cut

1;