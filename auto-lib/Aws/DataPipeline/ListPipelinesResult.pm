
package Aws::DataPipeline::ListPipelinesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Bool');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineIdList => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineIdName]', required => 1);

}
1;
