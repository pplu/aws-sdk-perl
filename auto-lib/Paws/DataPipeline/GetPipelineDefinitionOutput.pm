
package Paws::DataPipeline::GetPipelineDefinitionOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineObject]');

}
1;