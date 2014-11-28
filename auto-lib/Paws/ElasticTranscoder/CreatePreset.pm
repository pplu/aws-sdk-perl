
package Paws::ElasticTranscoder::CreatePreset {
  use Moose;
  has Audio => (is => 'ro', isa => 'Paws::ElasticTranscoder::AudioParameters');
  has Container => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Thumbnails => (is => 'ro', isa => 'Paws::ElasticTranscoder::Thumbnails');
  has Video => (is => 'ro', isa => 'Paws::ElasticTranscoder::VideoParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePreset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::CreatePresetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePresetResult');
}
1;