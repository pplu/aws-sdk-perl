package Aws::DataPipeline::InstanceIdentity {
  use Moose;
  with ('AWS::API::ResultParser');
  has document => (is => 'ro', isa => 'Str');
  has signature => (is => 'ro', isa => 'Str');
}
1
