
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
        NumberOfHumanWorkersPerDataObject => 1,    # min: 1, max: 9
        PreHumanTaskLambdaArn  => 'MyLambdaFunctionArn',    # max: 2048
        TaskDescription        => 'MyTaskDescription',      # min: 1, max: 255
        TaskTimeLimitInSeconds => 1,                        # min: 1, max: 3600
        TaskTitle              => 'MyTaskTitle',            # min: 1, max: 128
        UiConfig               => {
          UiTemplateS3Uri => 'MyS3Uri',                     # max: 1024

        },
        WorkteamArn            => 'MyWorkteamArn', # max: 256
        MaxConcurrentTaskCount => 1,               # min: 1, max: 1000; OPTIONAL
        PublicWorkforceTaskPrice => {
          AmountInUsd => {
            Cents                 => 1,            # max: 99; OPTIONAL
            Dollars               => 1,            # max: 1; OPTIONAL
            TenthFractionsOfACent => 1,            # max: 9; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        TaskAvailabilityLifetimeInSeconds => 1,  # min: 1, max: 345600; OPTIONAL
        TaskKeywords                      => [
          'MyTaskKeyword', ...                   # min: 1, max: 30
        ],                                       # min: 1, max: 5; OPTIONAL
      },
      InputConfig => {
        DataSource => {
          S3DataSource => {
            ManifestS3Uri => 'MyS3Uri',          # max: 1024

          },

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
        S3OutputPath => 'MyS3Uri',       # max: 1024
        KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
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
      ],                            # OPTIONAL
    );

    # Results:
    my $LabelingJobArn = $CreateLabelingJobResponse->LabelingJobArn;

    # Returns a L<Paws::SageMaker::CreateLabelingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateLabelingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanTaskConfig => L<Paws::SageMaker::HumanTaskConfig>

Configures the information required for human workers to complete a
labeling task.



=head2 B<REQUIRED> InputConfig => L<Paws::SageMaker::LabelingJobInputConfig>

Input data for the labeling job, such as the Amazon S3 location of the
data objects and the location of the manifest file that describes the
data objects.



=head2 B<REQUIRED> LabelAttributeName => Str

The attribute name to use for the label in the output manifest file.
This is the key for the key/value pair formed with the label that a
worker assigns to the object. The name can't end with "-metadata". If
you are running a semantic segmentation labeling job, the attribute
name must end with "-ref". If you are running any other kind of
labeling job, the attribute name must not end with "-ref".



=head2 LabelCategoryConfigS3Uri => Str

The S3 URL of the file that defines the categories used to label the
data objects.

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



=head2 LabelingJobAlgorithmsConfig => L<Paws::SageMaker::LabelingJobAlgorithmsConfig>

Configures the information required to perform automated data labeling.



=head2 B<REQUIRED> LabelingJobName => Str

The name of the labeling job. This name is used to identify the job in
a list of labeling jobs.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::LabelingJobOutputConfig>

The location of the output data and the AWS Key Management Service key
ID for the key used to encrypt the output data, if any.



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
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLabelingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

