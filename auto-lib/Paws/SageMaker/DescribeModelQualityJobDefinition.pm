
package Paws::SageMaker::DescribeModelQualityJobDefinition;
  use Moose;
  has JobDefinitionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModelQualityJobDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeModelQualityJobDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelQualityJobDefinition - Arguments for method DescribeModelQualityJobDefinition on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModelQualityJobDefinition on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeModelQualityJobDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModelQualityJobDefinition.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeModelQualityJobDefinitionResponse =
      $api . sagemaker->DescribeModelQualityJobDefinition(
      JobDefinitionName => 'MyMonitoringJobDefinitionName',

      );

    # Results:
    my $CreationTime = $DescribeModelQualityJobDefinitionResponse->CreationTime;
    my $JobDefinitionArn =
      $DescribeModelQualityJobDefinitionResponse->JobDefinitionArn;
    my $JobDefinitionName =
      $DescribeModelQualityJobDefinitionResponse->JobDefinitionName;
    my $JobResources = $DescribeModelQualityJobDefinitionResponse->JobResources;
    my $ModelQualityAppSpecification =
      $DescribeModelQualityJobDefinitionResponse->ModelQualityAppSpecification;
    my $ModelQualityBaselineConfig =
      $DescribeModelQualityJobDefinitionResponse->ModelQualityBaselineConfig;
    my $ModelQualityJobInput =
      $DescribeModelQualityJobDefinitionResponse->ModelQualityJobInput;
    my $ModelQualityJobOutputConfig =
      $DescribeModelQualityJobDefinitionResponse->ModelQualityJobOutputConfig;
    my $NetworkConfig =
      $DescribeModelQualityJobDefinitionResponse->NetworkConfig;
    my $RoleArn = $DescribeModelQualityJobDefinitionResponse->RoleArn;
    my $StoppingCondition =
      $DescribeModelQualityJobDefinitionResponse->StoppingCondition;

# Returns a L<Paws::SageMaker::DescribeModelQualityJobDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeModelQualityJobDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionName => Str

The name of the model quality job. The name must be unique within an
Amazon Web Services Region in the Amazon Web Services account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModelQualityJobDefinition in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

