
package Paws::DataPipeline::DescribeObjectsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Bool');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineObject]', required => 1);

}
1;