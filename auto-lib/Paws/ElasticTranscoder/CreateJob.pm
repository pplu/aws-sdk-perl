
package Paws::ElasticTranscoder::CreateJob {
  use Moose;
  has Input => (is => 'ro', isa => 'Paws::ElasticTranscoder::JobInput', required => 1);
  has Output => (is => 'ro', isa => 'Paws::ElasticTranscoder::CreateJobOutput');
  has OutputKeyPrefix => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::CreateJobOutput]');
  has PipelineId => (is => 'ro', isa => 'Str', required => 1);
  has Playlists => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::CreateJobPlaylist]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::CreateJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateJobResult');
}
1;