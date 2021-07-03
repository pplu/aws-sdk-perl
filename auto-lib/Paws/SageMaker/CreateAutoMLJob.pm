
package Paws::SageMaker::CreateAutoMLJob;
  use Moose;
  has AutoMLJobConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobConfig');
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobObjective => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobObjective');
  has GenerateCandidateDefinitionsOnly => (is => 'ro', isa => 'Bool');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLChannel]', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLOutputDataConfig', required => 1);
  has ProblemType => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoMLJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateAutoMLJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAutoMLJob - Arguments for method CreateAutoMLJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutoMLJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateAutoMLJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutoMLJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateAutoMLJobResponse = $api . sagemaker->CreateAutoMLJob(
      AutoMLJobName   => 'MyAutoMLJobName',
      InputDataConfig => [
        {
          DataSource => {
            S3DataSource => {
              S3DataType => 'ManifestFile',    # values: ManifestFile, S3Prefix
              S3Uri      => 'MyS3Uri',         # max: 1024

            },

          },
          TargetAttributeName => 'MyTargetAttributeName',    # min: 1
          CompressionType     => 'None',    # values: None, Gzip; OPTIONAL
        },
        ...
      ],
      OutputDataConfig => {
        S3OutputPath => 'MyS3Uri',       # max: 1024
        KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      RoleArn         => 'MyRoleArn',
      AutoMLJobConfig => {
        CompletionCriteria => {
          MaxAutoMLJobRuntimeInSeconds      => 1,    # min: 1; OPTIONAL
          MaxCandidates                     => 1,    # min: 1; OPTIONAL
          MaxRuntimePerTrainingJobInSeconds => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        SecurityConfig => {
          EnableInterContainerTrafficEncryption => 1,    # OPTIONAL
          VolumeKmsKeyId => 'MyKmsKeyId',                # max: 2048; OPTIONAL
          VpcConfig      => {
            SecurityGroupIds => [
              'MySecurityGroupId', ...                   # max: 32
            ],    # min: 1, max: 5
            Subnets => [
              'MySubnetId', ...    # max: 32
            ],    # min: 1, max: 16

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      AutoMLJobObjective => {
        MetricName => 'Accuracy',    # values: Accuracy, MSE, F1, F1macro

      },    # OPTIONAL
      GenerateCandidateDefinitionsOnly => 1,                         # OPTIONAL
      ProblemType                      => 'BinaryClassification',    # OPTIONAL
      Tags                             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AutoMLJobArn = $CreateAutoMLJobResponse->AutoMLJobArn;

    # Returns a L<Paws::SageMaker::CreateAutoMLJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateAutoMLJob>

=head1 ATTRIBUTES


=head2 AutoMLJobConfig => L<Paws::SageMaker::AutoMLJobConfig>

Contains CompletionCriteria and SecurityConfig.



=head2 B<REQUIRED> AutoMLJobName => Str

Identifies an AutoPilot job. Must be unique to your account and is
case-insensitive.



=head2 AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>

Defines the job's objective. You provide a MetricName and AutoML will
infer minimize or maximize. If this is not provided, the most commonly
used ObjectiveMetric for problem type will be selected.



=head2 GenerateCandidateDefinitionsOnly => Bool

This will generate possible candidates without training a model. A
candidate is a combination of data preprocessors, algorithms, and
algorithm parameter settings.



=head2 B<REQUIRED> InputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLChannel>]

Similar to InputDataConfig supported by Tuning. Format(s) supported:
CSV.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

Similar to OutputDataConfig supported by Tuning. Format(s) supported:
CSV.



=head2 ProblemType => Str

Defines the kind of preprocessing and algorithms intended for the
candidates. Options include: BinaryClassification,
MulticlassClassification, and Regression.

Valid values are: C<"BinaryClassification">, C<"MulticlassClassification">, C<"Regression">

=head2 B<REQUIRED> RoleArn => Str

The ARN of the role that will be used to access the data.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Each tag consists of a key and an optional value. Tag keys must be
unique per resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutoMLJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

