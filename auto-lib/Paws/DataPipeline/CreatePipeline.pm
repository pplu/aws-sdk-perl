
package Paws::DataPipeline::CreatePipeline {
  use Moose;
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has uniqueId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::CreatePipelineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;