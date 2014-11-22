
package Paws::DataPipeline::ListPipelinesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Bool');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineIdList => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineIdName]', required => 1);

}
1;