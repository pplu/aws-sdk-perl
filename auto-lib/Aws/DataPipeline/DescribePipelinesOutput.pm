
package Aws::DataPipeline::DescribePipelinesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has pipelineDescriptionList => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineDescription]', required => 1);

}
1;