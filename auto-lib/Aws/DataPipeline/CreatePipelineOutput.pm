
package Aws::DataPipeline::CreatePipelineOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

}
1;