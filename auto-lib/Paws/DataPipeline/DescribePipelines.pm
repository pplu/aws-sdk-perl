
package Paws::DataPipeline::DescribePipelines {
  use Moose;
  has pipelineIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePipelines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::DescribePipelinesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;