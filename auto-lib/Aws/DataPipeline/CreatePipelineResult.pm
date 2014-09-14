
package Aws::DataPipeline::CreatePipelineResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

}
1;
