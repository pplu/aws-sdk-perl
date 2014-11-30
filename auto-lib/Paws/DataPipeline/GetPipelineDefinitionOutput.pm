
package Paws::DataPipeline::GetPipelineDefinitionOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has parameterObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterObject]');
  has parameterValues => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterValue]');
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineObject]');

}
1;