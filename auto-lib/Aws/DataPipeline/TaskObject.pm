package Aws::DataPipeline::TaskObject {
  use Moose;
  has attemptId => (is => 'ro', isa => 'Str');
  has objects => (is => 'ro', isa => 'Aws::DataPipeline::PipelineObjectMap');
  has pipelineId => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str');
}
1;
