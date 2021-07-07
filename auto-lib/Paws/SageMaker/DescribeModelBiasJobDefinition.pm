
package Paws::SageMaker::DescribeModelBiasJobDefinition;
  use Moose;
  has JobDefinitionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModelBiasJobDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeModelBiasJobDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelBiasJobDefinition - Arguments for method DescribeModelBiasJobDefinition on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModelBiasJobDefinition on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeModelBiasJobDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModelBiasJobDefinition.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeModelBiasJobDefinitionResponse =
      $api . sagemaker->DescribeModelBiasJobDefinition(
      JobDefinitionName => 'MyMonitoringJobDefinitionName',

      );

    # Results:
    my $CreationTime = $DescribeModelBiasJobDefinitionResponse->CreationTime;
    my $JobDefinitionArn =
      $DescribeModelBiasJobDefinitionResponse->JobDefinitionArn;
    my $JobDefinitionName =
      $DescribeModelBiasJobDefinitionResponse->JobDefinitionName;
    my $JobResources = $DescribeModelBiasJobDefinitionResponse->JobResources;
    my $ModelBiasAppSpecification =
      $DescribeModelBiasJobDefinitionResponse->ModelBiasAppSpecification;
    my $ModelBiasBaselineConfig =
      $DescribeModelBiasJobDefinitionResponse->ModelBiasBaselineConfig;
    my $ModelBiasJobInput =
      $DescribeModelBiasJobDefinitionResponse->ModelBiasJobInput;
    my $ModelBiasJobOutputConfig =
      $DescribeModelBiasJobDefinitionResponse->ModelBiasJobOutputConfig;
    my $NetworkConfig = $DescribeModelBiasJobDefinitionResponse->NetworkConfig;
    my $RoleArn       = $DescribeModelBiasJobDefinitionResponse->RoleArn;
    my $StoppingCondition =
      $DescribeModelBiasJobDefinitionResponse->StoppingCondition;

  # Returns a L<Paws::SageMaker::DescribeModelBiasJobDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeModelBiasJobDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionName => Str

The name of the model bias job definition. The name must be unique
within an Amazon Web Services Region in the Amazon Web Services
account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModelBiasJobDefinition in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

