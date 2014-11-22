
package Paws::DataPipeline::GetPipelineDefinition {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipelineDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::GetPipelineDefinitionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;