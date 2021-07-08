
package Paws::SageMaker::UpdatePipeline;
  use Moose;
  has PipelineDefinition => (is => 'ro', isa => 'Str');
  has PipelineDescription => (is => 'ro', isa => 'Str');
  has PipelineDisplayName => (is => 'ro', isa => 'Str');
  has PipelineName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdatePipelineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdatePipeline - Arguments for method UpdatePipeline on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePipeline on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePipeline.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdatePipelineResponse = $api . sagemaker->UpdatePipeline(
      PipelineName        => 'MyPipelineName',
      PipelineDefinition  => 'MyPipelineDefinition',     # OPTIONAL
      PipelineDescription => 'MyPipelineDescription',    # OPTIONAL
      PipelineDisplayName => 'MyPipelineName',           # OPTIONAL
      RoleArn             => 'MyRoleArn',                # OPTIONAL
    );

    # Results:
    my $PipelineArn = $UpdatePipelineResponse->PipelineArn;

    # Returns a L<Paws::SageMaker::UpdatePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdatePipeline>

=head1 ATTRIBUTES


=head2 PipelineDefinition => Str

The JSON pipeline definition.



=head2 PipelineDescription => Str

The description of the pipeline.



=head2 PipelineDisplayName => Str

The display name of the pipeline.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline to update.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) that the pipeline uses to execute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePipeline in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

