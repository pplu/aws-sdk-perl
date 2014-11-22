
package Paws::DataPipeline::ActivatePipeline {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::ActivatePipelineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;