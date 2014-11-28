
package Paws::ElasticTranscoder::ListJobsByPipeline {
  use Moose;
  has Ascending => (is => 'ro', isa => 'Str');
  has PageToken => (is => 'ro', isa => 'Str');
  has PipelineId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobsByPipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::ListJobsByPipelineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListJobsByPipelineResult');
}
1;