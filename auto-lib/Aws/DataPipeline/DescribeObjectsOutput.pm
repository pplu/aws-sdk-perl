
package Aws::DataPipeline::DescribeObjectsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Bool');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]', required => 1);

}
1;