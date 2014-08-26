package Aws::DataPipeline::ValidationError {
  use Moose;
  with ('AWS::API::ResultParser');
  has errors => (is => 'ro', isa => 'ArrayRef[Str]');
  has id => (is => 'ro', isa => 'Str');
}
1
