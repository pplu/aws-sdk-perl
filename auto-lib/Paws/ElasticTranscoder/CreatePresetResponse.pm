
package Paws::ElasticTranscoder::CreatePresetResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Preset => (is => 'ro', isa => 'Paws::ElasticTranscoder::Preset');
  has Warning => (is => 'ro', isa => 'Str');

}
1;