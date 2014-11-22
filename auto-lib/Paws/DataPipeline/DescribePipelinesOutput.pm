
package Paws::DataPipeline::DescribePipelinesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has pipelineDescriptionList => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineDescription]', required => 1);

}
1;