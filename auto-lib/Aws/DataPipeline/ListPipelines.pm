
package Aws::DataPipeline::ListPipelines {
  use Moose;
  has marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::ListPipelinesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;