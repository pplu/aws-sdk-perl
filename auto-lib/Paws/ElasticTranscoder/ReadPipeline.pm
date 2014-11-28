
package Paws::ElasticTranscoder::ReadPipeline {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReadPipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::ReadPipelineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ReadPipelineResult');
}
1;