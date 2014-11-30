
package Paws::DataPipeline::GetPipelineDefinitionOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has parameterObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterObject]');
  has parameterValues => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterValue]');
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineObject]');

}

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::GetPipelineDefinitionOutput

=head1 ATTRIBUTES

=head2 parameterObjects => ArrayRef[Paws::DataPipeline::ParameterObject]

  

Returns a list of parameter objects used in the pipeline definition.









=head2 parameterValues => ArrayRef[Paws::DataPipeline::ParameterValue]

  

Returns a list of parameter values used in the pipeline definition.









=head2 pipelineObjects => ArrayRef[Paws::DataPipeline::PipelineObject]

  

An array of objects defined in the pipeline.











=cut

1;