
package Paws::ElasticTranscoder::DeletePipeline {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::DeletePipelineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePipelineResult');
}
1;