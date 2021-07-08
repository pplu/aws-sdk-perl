
package Paws::SageMaker::DescribeFlowDefinition;
  use Moose;
  has FlowDefinitionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFlowDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeFlowDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeFlowDefinition - Arguments for method DescribeFlowDefinition on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFlowDefinition on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeFlowDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFlowDefinition.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeFlowDefinitionResponse =
      $api . sagemaker->DescribeFlowDefinition(
      FlowDefinitionName => 'MyFlowDefinitionName',

      );

    # Results:
    my $CreationTime      = $DescribeFlowDefinitionResponse->CreationTime;
    my $FailureReason     = $DescribeFlowDefinitionResponse->FailureReason;
    my $FlowDefinitionArn = $DescribeFlowDefinitionResponse->FlowDefinitionArn;
    my $FlowDefinitionName =
      $DescribeFlowDefinitionResponse->FlowDefinitionName;
    my $FlowDefinitionStatus =
      $DescribeFlowDefinitionResponse->FlowDefinitionStatus;
    my $HumanLoopActivationConfig =
      $DescribeFlowDefinitionResponse->HumanLoopActivationConfig;
    my $HumanLoopConfig = $DescribeFlowDefinitionResponse->HumanLoopConfig;
    my $HumanLoopRequestSource =
      $DescribeFlowDefinitionResponse->HumanLoopRequestSource;
    my $OutputConfig = $DescribeFlowDefinitionResponse->OutputConfig;
    my $RoleArn      = $DescribeFlowDefinitionResponse->RoleArn;

    # Returns a L<Paws::SageMaker::DescribeFlowDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeFlowDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowDefinitionName => Str

The name of the flow definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFlowDefinition in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

