
package Aws::DataPipeline::GetPipelineDefinitionOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]');

}
1;