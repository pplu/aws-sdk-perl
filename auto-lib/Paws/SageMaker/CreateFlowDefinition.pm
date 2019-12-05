
package Paws::SageMaker::CreateFlowDefinition;
  use Moose;
  has FlowDefinitionName => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopActivationConfig => (is => 'ro', isa => 'Paws::SageMaker::HumanLoopActivationConfig');
  has HumanLoopConfig => (is => 'ro', isa => 'Paws::SageMaker::HumanLoopConfig', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::FlowDefinitionOutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFlowDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateFlowDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateFlowDefinition - Arguments for method CreateFlowDefinition on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlowDefinition on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateFlowDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlowDefinition.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateFlowDefinitionResponse = $api . sagemaker->CreateFlowDefinition(
      FlowDefinitionName => 'MyFlowDefinitionName',
      HumanLoopConfig    => {
        HumanTaskUiArn  => 'MyHumanTaskUiArn',                # max: 1024
        TaskCount       => 1,                                 # min: 1, max: 3
        TaskDescription => 'MyFlowDefinitionTaskDescription', # min: 1, max: 255
        TaskTitle       => 'MyFlowDefinitionTaskTitle',       # min: 1, max: 128
        WorkteamArn     => 'MyWorkteamArn',                   # max: 256
        PublicWorkforceTaskPrice => {
          AmountInUsd => {
            Cents                 => 1,    # max: 99; OPTIONAL
            Dollars               => 1,    # max: 2; OPTIONAL
            TenthFractionsOfACent => 1,    # max: 9; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        TaskAvailabilityLifetimeInSeconds => 1,  # min: 1, max: 864000; OPTIONAL
        TaskKeywords                      => [
          'MyFlowDefinitionTaskKeyword', ...     # min: 1, max: 30
        ],                                       # min: 1, max: 5; OPTIONAL
        TaskTimeLimitInSeconds => 1,             # min: 30, max: 28800; OPTIONAL
      },
      OutputConfig => {
        S3OutputPath => 'MyS3Uri',               # max: 1024
        KmsKeyId     => 'MyKmsKeyId',            # max: 2048; OPTIONAL
      },
      RoleArn                   => 'MyRoleArn',
      HumanLoopActivationConfig => {
        HumanLoopActivationConditionsConfig => {
          HumanLoopActivationConditions =>
            'MyHumanLoopActivationConditions',    # max: 10240

        },
        HumanLoopRequestSource => {
          AwsManagedHumanLoopRequestSource =>
            'AWS/Rekognition/DetectModerationLabels/Image/V3'
          , # values: AWS/Rekognition/DetectModerationLabels/Image/V3, AWS/Textract/AnalyzeDocument/Forms/V1

        },

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
    my $FlowDefinitionArn = $CreateFlowDefinitionResponse->FlowDefinitionArn;

    # Returns a L<Paws::SageMaker::CreateFlowDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateFlowDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowDefinitionName => Str

The name of your flow definition.



=head2 HumanLoopActivationConfig => L<Paws::SageMaker::HumanLoopActivationConfig>

An object containing information about the events that trigger a human
workflow.



=head2 B<REQUIRED> HumanLoopConfig => L<Paws::SageMaker::HumanLoopConfig>

An object containing information about the tasks the human reviewers
will perform.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::FlowDefinitionOutputConfig>

An object containing information about where the human review results
will be uploaded.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the role needed to call other
services on your behalf. For example,
C<arn:aws:iam::1234567890:role/service-role/AmazonSageMaker-ExecutionRole-20180111T151298>.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs that contain metadata to help you
categorize and organize a flow definition. Each tag consists of a key
and a value, both of which you define.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlowDefinition in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

