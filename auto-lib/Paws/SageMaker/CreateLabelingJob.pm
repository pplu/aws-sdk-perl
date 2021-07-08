
package Paws::SageMaker::CreateLabelingJob;
  use Moose;
  has HumanTaskConfig => (is => 'ro', isa => 'Paws::SageMaker::HumanTaskConfig', required => 1);
  has InputConfig => (is => 'ro', isa => 'Paws::SageMaker::LabelingJobInputConfig', required => 1);
  has LabelAttributeName => (is => 'ro', isa => 'Str', required => 1);
  has LabelCategoryConfigS3Uri => (is => 'ro', isa => 'Str');
  has LabelingJobAlgorithmsConfig => (is => 'ro', isa => 'Paws::SageMaker::LabelingJobAlgorithmsConfig');
  has LabelingJobName => (is => 'ro', isa => 'Str', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::LabelingJobOutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingConditions => (is => 'ro', isa => 'Paws::SageMaker::LabelingJobStoppingConditions');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLabelingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateLabelingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateLabelingJob - Arguments for method CreateLabelingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLabelingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateLabelingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLabelingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateLabelingJobResponse = $api . sagemaker->CreateLabelingJob(
      HumanTaskConfig => {
        AnnotationConsolidationConfig => {
          AnnotationConsolidationLambdaArn => 'MyLambdaFunctionArn', # max: 2048

        },
        NumberOfHumanWorkersPerDataObject => 1,             # min: 1, max: 9
        PreHumanTaskLambdaArn  => 'MyLambdaFunctionArn',    # max: 2048
        TaskDescription        => 'MyTaskDescription',      # min: 1, max: 255
        TaskTimeLimitInSeconds => 1,                        # min: 30
        TaskTitle              => 'MyTaskTitle',            # min: 1, max: 128
        UiConfig               => {
          HumanTaskUiArn  => 'MyHumanTaskUiArn',    # max: 1024; OPTIONAL
          UiTemplateS3Uri => 'MyS3Uri',             # max: 1024; OPTIONAL
        },
        WorkteamArn            => 'MyWorkteamArn', # max: 256
        MaxConcurrentTaskCount => 1,               # min: 1, max: 1000; OPTIONAL
        PublicWorkforceTaskPrice => {
          AmountInUsd => {
            Cents                 => 1,    # max: 99; OPTIONAL
            Dollars               => 1,    # max: 2; OPTIONAL
            TenthFractionsOfACent => 1,    # max: 9; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        TaskAvailabilityLifetimeInSeconds => 1,    # min: 60; OPTIONAL
        TaskKeywords                      => [
          'MyTaskKeyword', ...                     # min: 1, max: 30
        ],    # min: 1, max: 5; OPTIONAL
      },
      InputConfig => {
        DataSource => {
          S3DataSource => {
            ManifestS3Uri => 'MyS3Uri',    # max: 1024; OPTIONAL

          },    # OPTIONAL
          SnsDataSource => {
            SnsTopicArn => 'MySnsTopicArn',    # max: 2048

          },    # OPTIONAL
        },
        DataAttributes => {
          ContentClassifiers => [
            'FreeOfPersonallyIdentifiableInformation',
            ... # values: FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
          ],    # max: 256; OPTIONAL
        },    # OPTIONAL
      },
      LabelAttributeName => 'MyLabelAttributeName',
      LabelingJobName    => 'MyLabelingJobName',
      OutputConfig       => {
        S3OutputPath => 'MyS3Uri',          # max: 1024; OPTIONAL
        KmsKeyId     => 'MyKmsKeyId',       # max: 2048; OPTIONAL
        SnsTopicArn  => 'MySnsTopicArn',    # max: 2048
      },
      RoleArn                     => 'MyRoleArn',
      LabelCategoryConfigS3Uri    => 'MyS3Uri',     # OPTIONAL
      LabelingJobAlgorithmsConfig => {
        LabelingJobAlgorithmSpecificationArn =>
          'MyLabelingJobAlgorithmSpecificationArn',    # max: 2048
        InitialActiveLearningModelArn =>
          'MyModelArn',    # min: 20, max: 2048; OPTIONAL
        LabelingJobResourceConfig => {
          VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      StoppingConditions => {
        MaxHumanLabeledObjectCount         => 1,    # min: 1; OPTIONAL
        MaxPercentageOfInputDatasetLabeled => 1,    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LabelingJobArn = $CreateLabelingJobResponse->LabelingJobArn;

    # Returns a L<Paws::SageMaker::CreateLabelingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateLabelingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanTaskConfig => L<Paws::SageMaker::HumanTaskConfig>

Configures the labeling task and how it is presented to workers;
including, but not limited to price, keywords, and batch size (task
count).



=head2 B<REQUIRED> InputConfig => L<Paws::SageMaker::LabelingJobInputConfig>

Input data for the labeling job, such as the Amazon S3 location of the
data objects and the location of the manifest file that describes the
data objects.

You must specify at least one of the following: C<S3DataSource> or
C<SnsDataSource>.

=over

=item *

Use C<SnsDataSource> to specify an SNS input topic for a streaming
labeling job. If you do not specify and SNS input topic ARN, Ground
Truth will create a one-time labeling job that stops after all data
objects in the input manifest file have been labeled.

=item *

Use C<S3DataSource> to specify an input manifest file for both
streaming and one-time labeling jobs. Adding an C<S3DataSource> is
optional if you use C<SnsDataSource> to create a streaming labeling
job.

=back

If you use the Amazon Mechanical Turk workforce, your input data should
not include confidential information, personal information or protected
health information. Use C<ContentClassifiers> to specify that your data
is free of personally identifiable information and adult content.



=head2 B<REQUIRED> LabelAttributeName => Str

The attribute name to use for the label in the output manifest file.
This is the key for the key/value pair formed with the label that a
worker assigns to the object. The C<LabelAttributeName> must meet the
following requirements.

=over

=item *

The name can't end with "-metadata".

=item *

If you are using one of the following built-in task types
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html),
the attribute name I<must> end with "-ref". If the task type you are
using is not listed below, the attribute name I<must not> end with
"-ref".

=over

=item *

Image semantic segmentation (C<SemanticSegmentation)>, and adjustment
(C<AdjustmentSemanticSegmentation>) and verification
(C<VerificationSemanticSegmentation>) labeling jobs for this task type.

=item *

Video frame object detection (C<VideoObjectDetection>), and adjustment
and verification (C<AdjustmentVideoObjectDetection>) labeling jobs for
this task type.

=item *

Video frame object tracking (C<VideoObjectTracking>), and adjustment
and verification (C<AdjustmentVideoObjectTracking>) labeling jobs for
this task type.

=item *

3D point cloud semantic segmentation
(C<3DPointCloudSemanticSegmentation>), and adjustment and verification
(C<Adjustment3DPointCloudSemanticSegmentation>) labeling jobs for this
task type.

=item *

3D point cloud object tracking (C<3DPointCloudObjectTracking>), and
adjustment and verification (C<Adjustment3DPointCloudObjectTracking>)
labeling jobs for this task type.

=back

=back

If you are creating an adjustment or verification labeling job, you
must use a I<different> C<LabelAttributeName> than the one used in the
original labeling job. The original labeling job is the Ground Truth
labeling job that produced the labels that you want verified or
adjusted. To learn more about adjustment and verification labeling
jobs, see Verify and Adjust Labels
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-verification-data.html).



=head2 LabelCategoryConfigS3Uri => Str

The S3 URI of the file, referred to as a I<label category configuration
file>, that defines the categories used to label the data objects.

For 3D point cloud and video frame task types, you can add label
category attributes and frame attributes to your label category
configuration file. To learn how, see Create a Labeling Category
Configuration File for 3D Point Cloud Labeling Jobs
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-point-cloud-label-category-config.html).

For all other built-in task types
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html)
and custom tasks
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates.html),
your label category configuration file must be a JSON file in the
following format. Identify the labels you want to use by replacing
C<label_1>, C<label_2>,C<...>,C<label_n> with your label categories.

C<{>

C<"document-version": "2018-11-28",>

C<"labels": [{"label": "label_1"},{"label": "label_2"},...{"label":
"label_n"}]>

C<}>

Note the following about the label category configuration file:

=over

=item *

For image classification and text classification (single and
multi-label) you must specify at least two label categories. For all
other task types, the minimum number of label categories required is
one.

=item *

Each label category must be unique, you cannot specify duplicate label
categories.

=item *

If you create a 3D point cloud or video frame adjustment or
verification labeling job, you must include C<auditLabelAttributeName>
in the label category configuration. Use this parameter to enter the
C<LabelAttributeName>
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateLabelingJob.html#sagemaker-CreateLabelingJob-request-LabelAttributeName)
of the labeling job you want to adjust or verify annotations of.

=back




=head2 LabelingJobAlgorithmsConfig => L<Paws::SageMaker::LabelingJobAlgorithmsConfig>

Configures the information required to perform automated data labeling.



=head2 B<REQUIRED> LabelingJobName => Str

The name of the labeling job. This name is used to identify the job in
a list of labeling jobs. Labeling job names must be unique within an
Amazon Web Services account and region. C<LabelingJobName> is not case
sensitive. For example, Example-job and example-job are considered the
same labeling job name by Ground Truth.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::LabelingJobOutputConfig>

The location of the output data and the Amazon Web Services Key
Management Service key ID for the key used to encrypt the output data,
if any.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Number (ARN) that Amazon SageMaker assumes to
perform tasks on your behalf during data labeling. You must grant this
role the necessary permissions so that Amazon SageMaker can
successfully complete data labeling.



=head2 StoppingConditions => L<Paws::SageMaker::LabelingJobStoppingConditions>

A set of conditions for stopping the labeling job. If any of the
conditions are met, the job is automatically stopped. You can use these
conditions to control the cost of data labeling.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key/value pairs. For more information, see Using Cost
Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<Amazon Web Services Billing and Cost Management User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLabelingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

