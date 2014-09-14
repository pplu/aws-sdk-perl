package Aws::DataPipeline::Selector {
  use Moose;
  has fieldName => (is => 'ro', isa => 'Str');
  has operator => (is => 'ro', isa => 'Aws::DataPipeline::Operator');
}
1
