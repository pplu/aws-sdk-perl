package Aws::DataPipeline::Query {
  use Moose;
  has selectors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Selector]');
}
1;
