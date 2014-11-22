
package Paws::DataPipeline::CreatePipelineOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

}
1;