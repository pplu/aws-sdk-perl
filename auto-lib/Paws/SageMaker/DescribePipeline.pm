
package Paws::SageMaker::DescribePipeline;
  use Moose;
  has PipelineName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribePipelineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribePipeline - Arguments for method DescribePipeline on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePipeline on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePipeline.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribePipelineResponse = $api . sagemaker->DescribePipeline(
      PipelineName => 'MyPipelineName',

    );

    # Results:
    my $CreatedBy           = $DescribePipelineResponse->CreatedBy;
    my $CreationTime        = $DescribePipelineResponse->CreationTime;
    my $LastModifiedBy      = $DescribePipelineResponse->LastModifiedBy;
    my $LastModifiedTime    = $DescribePipelineResponse->LastModifiedTime;
    my $LastRunTime         = $DescribePipelineResponse->LastRunTime;
    my $PipelineArn         = $DescribePipelineResponse->PipelineArn;
    my $PipelineDefinition  = $DescribePipelineResponse->PipelineDefinition;
    my $PipelineDescription = $DescribePipelineResponse->PipelineDescription;
    my $PipelineDisplayName = $DescribePipelineResponse->PipelineDisplayName;
    my $PipelineName        = $DescribePipelineResponse->PipelineName;
    my $PipelineStatus      = $DescribePipelineResponse->PipelineStatus;
    my $RoleArn             = $DescribePipelineResponse->RoleArn;

    # Returns a L<Paws::SageMaker::DescribePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePipeline in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

