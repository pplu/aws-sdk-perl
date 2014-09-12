package Aws::DataPipeline::PipelineDescription {
  use Moose;
  has description => (is => 'ro', isa => 'Str');
  has fields => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Field]', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
}
1
