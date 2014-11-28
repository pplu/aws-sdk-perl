
package Paws::ElasticTranscoder::UpdatePipeline {
  use Moose;
  has ContentConfig => (is => 'ro', isa => 'Paws::ElasticTranscoder::PipelineOutputConfig');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has InputBucket => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Notifications => (is => 'ro', isa => 'Paws::ElasticTranscoder::Notifications');
  has Role => (is => 'ro', isa => 'Str');
  has ThumbnailConfig => (is => 'ro', isa => 'Paws::ElasticTranscoder::PipelineOutputConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::UpdatePipelineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdatePipelineResult');
}
1;