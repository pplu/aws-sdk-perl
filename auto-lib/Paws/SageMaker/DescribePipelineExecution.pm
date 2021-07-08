
package Paws::SageMaker::DescribePipelineExecution;
  use Moose;
  has PipelineExecutionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePipelineExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribePipelineExecutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribePipelineExecution - Arguments for method DescribePipelineExecution on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePipelineExecution on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribePipelineExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePipelineExecution.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribePipelineExecutionResponse =
      $api . sagemaker->DescribePipelineExecution(
      PipelineExecutionArn => 'MyPipelineExecutionArn',

      );

    # Results:
    my $CreatedBy        = $DescribePipelineExecutionResponse->CreatedBy;
    my $CreationTime     = $DescribePipelineExecutionResponse->CreationTime;
    my $FailureReason    = $DescribePipelineExecutionResponse->FailureReason;
    my $LastModifiedBy   = $DescribePipelineExecutionResponse->LastModifiedBy;
    my $LastModifiedTime = $DescribePipelineExecutionResponse->LastModifiedTime;
    my $PipelineArn      = $DescribePipelineExecutionResponse->PipelineArn;
    my $PipelineExecutionArn =
      $DescribePipelineExecutionResponse->PipelineExecutionArn;
    my $PipelineExecutionDescription =
      $DescribePipelineExecutionResponse->PipelineExecutionDescription;
    my $PipelineExecutionDisplayName =
      $DescribePipelineExecutionResponse->PipelineExecutionDisplayName;
    my $PipelineExecutionStatus =
      $DescribePipelineExecutionResponse->PipelineExecutionStatus;
    my $PipelineExperimentConfig =
      $DescribePipelineExecutionResponse->PipelineExperimentConfig;

    # Returns a L<Paws::SageMaker::DescribePipelineExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribePipelineExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineExecutionArn => Str

The Amazon Resource Name (ARN) of the pipeline execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePipelineExecution in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

