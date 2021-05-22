
package Paws::SageMaker::DescribeModelExplainabilityJobDefinition;
  use Moose;
  has JobDefinitionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModelExplainabilityJobDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeModelExplainabilityJobDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelExplainabilityJobDefinition - Arguments for method DescribeModelExplainabilityJobDefinition on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModelExplainabilityJobDefinition on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeModelExplainabilityJobDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModelExplainabilityJobDefinition.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeModelExplainabilityJobDefinitionResponse =
      $api . sagemaker->DescribeModelExplainabilityJobDefinition(
      JobDefinitionName => 'MyMonitoringJobDefinitionName',

      );

    # Results:
    my $CreationTime =
      $DescribeModelExplainabilityJobDefinitionResponse->CreationTime;
    my $JobDefinitionArn =
      $DescribeModelExplainabilityJobDefinitionResponse->JobDefinitionArn;
    my $JobDefinitionName =
      $DescribeModelExplainabilityJobDefinitionResponse->JobDefinitionName;
    my $JobResources =
      $DescribeModelExplainabilityJobDefinitionResponse->JobResources;
    my $ModelExplainabilityAppSpecification =
      $DescribeModelExplainabilityJobDefinitionResponse
      ->ModelExplainabilityAppSpecification;
    my $ModelExplainabilityBaselineConfig =
      $DescribeModelExplainabilityJobDefinitionResponse
      ->ModelExplainabilityBaselineConfig;
    my $ModelExplainabilityJobInput =
      $DescribeModelExplainabilityJobDefinitionResponse
      ->ModelExplainabilityJobInput;
    my $ModelExplainabilityJobOutputConfig =
      $DescribeModelExplainabilityJobDefinitionResponse
      ->ModelExplainabilityJobOutputConfig;
    my $NetworkConfig =
      $DescribeModelExplainabilityJobDefinitionResponse->NetworkConfig;
    my $RoleArn = $DescribeModelExplainabilityJobDefinitionResponse->RoleArn;
    my $StoppingCondition =
      $DescribeModelExplainabilityJobDefinitionResponse->StoppingCondition;

# Returns a L<Paws::SageMaker::DescribeModelExplainabilityJobDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeModelExplainabilityJobDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionName => Str

The name of the model explainability job definition. The name must be
unique within an AWS Region in the AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModelExplainabilityJobDefinition in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

