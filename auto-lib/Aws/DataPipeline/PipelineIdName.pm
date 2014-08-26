package Aws::DataPipeline::PipelineIdName {
  use Moose;
  with ('AWS::API::ResultParser');
  has id => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}
1
