
package Paws::DataPipeline::GetPipelineDefinitionOutput;
  use Moose;
  has ParameterObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterObject]', traits => ['NameInRequest'], request_name => 'parameterObjects' );
  has ParameterValues => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterValue]', traits => ['NameInRequest'], request_name => 'parameterValues' );
  has PipelineObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineObject]', traits => ['NameInRequest'], request_name => 'pipelineObjects' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::GetPipelineDefinitionOutput

=head1 ATTRIBUTES


=head2 ParameterObjects => ArrayRef[L<Paws::DataPipeline::ParameterObject>]

The parameter objects used in the pipeline definition.


=head2 ParameterValues => ArrayRef[L<Paws::DataPipeline::ParameterValue>]

The parameter values used in the pipeline definition.


=head2 PipelineObjects => ArrayRef[L<Paws::DataPipeline::PipelineObject>]

The objects defined in the pipeline.


=head2 _request_id => Str


=cut

1;