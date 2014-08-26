package Aws::DataPipeline::Query {
  use Moose;
  with ('AWS::API::ResultParser');
  has selectors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Selector]');
}
1
