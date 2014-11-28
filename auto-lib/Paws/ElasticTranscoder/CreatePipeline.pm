
package Paws::ElasticTranscoder::CreatePipeline {
  use Moose;
  has ContentConfig => (is => 'ro', isa => 'Paws::ElasticTranscoder::PipelineOutputConfig');
  has InputBucket => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Notifications => (is => 'ro', isa => 'Paws::ElasticTranscoder::Notifications');
  has OutputBucket => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has ThumbnailConfig => (is => 'ro', isa => 'Paws::ElasticTranscoder::PipelineOutputConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::CreatePipelineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePipelineResult');
}
1;