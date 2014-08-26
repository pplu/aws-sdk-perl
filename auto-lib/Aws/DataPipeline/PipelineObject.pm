package Aws::DataPipeline::PipelineObject {
  use Moose;
  with ('AWS::API::ResultParser');
  has fields => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Field]', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
}
1
